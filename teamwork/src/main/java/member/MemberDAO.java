package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import common.JDBCUtil;

//회원을 추가, 검색, 수정, 삭제할 클래스
public class MemberDAO {
	
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
		
	//회원 목록
	public List<Member> getMemberList() {
		//db 연결
		conn = JDBCUtil.getConnection();
		List<Member> memberList = new ArrayList<>();
		
		try {
			//sql 처리
			String sql = "SELECT * FROM member ORDER BY mno";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				//빈 회원을 생성해서 db에서 정보를 가져와서 세팅
				Member m = new Member();
				m.setMno(rs.getInt("mno"));
				m.setId(rs.getString("id"));
				m.setPasswd(rs.getString("passwd"));
				m.setName(rs.getString("name"));
				m.setEmail(rs.getString("email"));
				m.setGender(rs.getString("gender"));
				m.setJoinDate(rs.getTimestamp("joindate"));
				//리스트에 회원 추가
				memberList.add(m);	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//db 종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		return memberList;
	}	
	
	//회원 가입
	public void insertMember(Member m) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "INSERT INTO member(mno, id, passwd, name, email, gender) "
					+ "VALUES (seq_sid.NEXTVAL, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPasswd());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getGender());
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//회원 정보(상세보기)
	public Member getMember(String id) {
		//db 연결
		conn = JDBCUtil.getConnection();
		Member m = new Member();	//빈 객체 생성
		//sql 처리
		try {
			String sql = "SELECT * FROM member WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			//id에 일치하는 1개의 주소 가져옴
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//db에 있는 주소를 가져와서 주소객체에 저장(화면 목록)
				m.setId(rs.getString("id"));
				m.setPasswd(rs.getString("passwd"));
				m.setName(rs.getString("name"));
				m.setEmail(rs.getString("email"));
				m.setGender(rs.getString("gender"));
				m.setJoinDate(rs.getTimestamp("joindate"));
				
				

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		return m;
	}
	
	//로그인 체크
	public Member checkLogin(Member m) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM member "
					+ "WHERE id = ? AND passwd = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPasswd());
			rs = pstmt.executeQuery();
			if(rs.next()) {	//검색한 아이디가 있으면
				//이름을 db에서 가져옴
				m.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		return m;
	}
	//ID 중복 검사
	public boolean getDuplicatedId(String id) {
		boolean result = false;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT DECODE(COUNT(*), 1, 'ture', 'false') as result "
					+ "FROM member WHERE id = ?";
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
	
} //DAO 클래스 닫기
