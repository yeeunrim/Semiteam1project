package users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class UsersDAO {
	
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
		
	//회원 목록
	public List<Users> getUsersList() {
		//db 연결
		conn = JDBCUtil.getConnection();
		List<Users> usersList = new ArrayList<>();
		
		try {
			//sql 처리
			String sql = "SELECT * FROM users ORDER BY accountDay DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				//빈 회원을 생성해서 db에서 정보를 가져와서 세팅
				Users u = new Users();
				u.setId(rs.getString("id"));
				u.setPw(rs.getString("pw"));
				u.setBirth(rs.getInt("birth"));
				u.setTel(rs.getString("tel"));
				u.setEmail(rs.getString("email"));
				u.setGender(rs.getString("gender"));
				u.setAccountDay(rs.getTimestamp("accountDay"));
				u.setIntroduction(rs.getString("introduction"));
				//리스트에 회원 추가
				usersList.add(u);	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//db 종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		return usersList;
	}	
	
	//회원 가입
	public void insertUsers(Users u) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "INSERT INTO users(id, pw, tel, email, birth, gender) "
					+ "VALUES (?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getId());
			pstmt.setString(2, u.getPw());
			pstmt.setString(3, u.getTel());
			pstmt.setString(4, u.getEmail());
			pstmt.setInt(5, u.getBirth());
			pstmt.setString(6, u.getGender());
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//회원 정보(상세보기)
	public Users getUsers(String id) {
		//db 연결
		conn = JDBCUtil.getConnection();
		Users u = new Users();	//빈 객체 생성
		//sql 처리
		try {
			String sql = "SELECT * FROM users WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			//id에 일치하는 1개의 주소 가져옴
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//db에 있는 주소를 가져와서 주소객체에 저장(화면 목록)
				u.setId(rs.getString("id"));
				u.setPw(rs.getString("pw"));
				u.setBirth(rs.getInt("birth"));
				u.setTel(rs.getString("tel"));
				u.setEmail(rs.getString("email"));
				u.setGender(rs.getString("gender"));
				u.setAccountDay(rs.getTimestamp("accountDay"));
				u.setIntroduction(rs.getString("introduction"));
				u.setImage(rs.getString("image"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		return u;
	}
	
	//로그인 체크
	public Users checkLogin(Users u) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM users "
					+ "WHERE email = ? AND pw = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getEmail());
			pstmt.setString(2, u.getPw());
			rs = pstmt.executeQuery();
			if(rs.next()) {	//검색한 아이디가 있으면
				//이름을 db에서 가져옴
				u.setId(rs.getString("id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		return u;
	}
	//ID 중복 검사
	public boolean getDuplicatedId(String id) {
		boolean result = false;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT DECODE(COUNT(*), 1, 'ture', 'false') as result "
					+ "FROM users WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//별칭을 칼럼으로 db에서 데이터를 가져옴
				result = rs.getBoolean("result");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	//프로필 편집(닉네임, 소개글, 프로필사진)
	public void editProfile(Users u, String sessionId) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "UPDATE users SET id = ?, "
					+ "introduction = ? WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getId()); //변경 닉네임
			pstmt.setString(2, u.getIntroduction());
			pstmt.setString(3, sessionId); //원래 닉네임
			
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	//프로필사진 편집
	public void updateProfilePic(Users u, String sessionId) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "UPDATE users SET image = ? WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getImage()); //프로필 사진 이름
			pstmt.setString(2, sessionId); //닉네임
			
			System.out.println(u.getImage());
			System.out.println(sessionId);
			
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//회원 정보 수정
	public void updateUsers(Users users, String sessionId) {
		//db 연결
		conn = JDBCUtil.getConnection();
		try {
			//sql 처리
			String sql = "UPDATE users SET pw = ?, tel = ?, email = ? "
					+ "WHERE id = '" + sessionId + "'";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, users.getPw());
			pstmt.setString(2, users.getTel());
			pstmt.setString(3, users.getEmail());
			
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { //db 종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	//회원 탈퇴
    public void deleteUser(String userId) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "DELETE FROM users WHERE id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt);
        }
    } 
	
} //DAO 클래스 닫기

