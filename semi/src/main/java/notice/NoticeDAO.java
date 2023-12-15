package notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;



public class NoticeDAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	public List<Notice> getNoticeList() {
		conn = JDBCUtil.getConnection();
		List<Notice> noticeList = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM notice ORDER BY nno DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Notice n = new Notice();
				n.setNno(rs.getInt("nno"));
				n.setNtitle(rs.getString("ntitle"));
				n.setNcontent(rs.getString("ncontent"));
				n.setNcreateDate(rs.getTimestamp("ncreatedate"));
				n.setNmodifyDate(rs.getTimestamp("nmodifydate"));
				n.setNhit(rs.getInt("nhit"));
				n.setNfilename(rs.getString("nfilename"));
				n.setId(rs.getString("id"));
				n.setNreply_count(rs.getInt("nreply_count"));
				n.setNlike_count(rs.getInt("nlike_count"));
				
				noticeList.add(n);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return noticeList;
	}
	//글 작성
	public void nwrite(Notice n) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "INSERT INTO notice(nno, ntitle, ncontent, nfilename, id) "
					+ "VALUES (seq_nno.NEXTVAL, ?, ?, ?, '관리자')";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, n.getNtitle());
			pstmt.setString(2, n.getNcontent());
			pstmt.setString(3, n.getNfilename());
			

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	
	//게시글 상세보기
	public Notice getNotice(int nno) {
		Notice n = new Notice();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM notice WHERE nno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			//id에 일치하는 1개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				n.setNno(rs.getInt("nno"));
				n.setNtitle(rs.getString("ntitle"));
				n.setNcontent(rs.getString("ncontent"));
				n.setNcreateDate(rs.getTimestamp("ncreatedate"));
				n.setNmodifyDate(rs.getTimestamp("nmodifydate"));
				n.setNhit(rs.getInt("nhit"));
				n.setNfilename(rs.getString("nfilename"));
				
				
				//조회수 1증가
				sql = "UPDATE notice SET nhit = nhit + 1 WHERE nno = ?";
				pstmt = conn.prepareStatement(sql);	
				pstmt.setInt(1, nno);
				pstmt.executeUpdate();	//실행

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return n;
		
	}

	//삭제
	public void deletenotice(int nno) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM notice WHERE nno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}	
	}
	//글 수정
	public void updatenotice(Notice n) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE notice SET ntitle = ?"
					+ ", ncontent = ?, nmodifydate= ? WHERE nno = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, n.getNtitle());
			pstmt.setString(2, n.getNcontent());
			pstmt.setTimestamp(3, now);
			pstmt.setInt(4, n.getNno());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 숫자 확인
	public void updateNReplyCount(int nno){
		try {
			conn = JDBCUtil.getConnection();
			String sql = "UPDATE notice SET nreply_count = "
					+ "(SELECT count(nno) FROM nreply WHERE nno = ?) WHERE nno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			pstmt.setInt(2, nno);
			//sql 실행
			pstmt.executeUpdate();
			

		} catch (SQLException e) {	
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}

	
	
	//페이지
	public List<Notice> getNoticeList(int page) {
		conn = JDBCUtil.getConnection();
		List<Notice> noticeList = new ArrayList<>();
		
		try {
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, no.* "
					+ "        FROM (SELECT * FROM notice ORDER BY nno DESC) no) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, page * 10 - 9);
			pstmt.setInt(2, page * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Notice n = new Notice();
				n.setNno(rs.getInt("nno"));
				n.setNtitle(rs.getString("ntitle"));
				n.setNcontent(rs.getString("ncontent"));
				n.setNcreateDate(rs.getTimestamp("ncreatedate"));
				n.setNmodifyDate(rs.getTimestamp("nmodifydate"));
				n.setNhit(rs.getInt("nhit"));
				n.setNfilename(rs.getString("nfilename"));
				n.setNreply_count(rs.getInt("nreply_count"));
				n.setNlike_count(rs.getInt("nlike_count"));
				
				noticeList.add(n);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return noticeList;
	}
	
	//총 게시글 수
	public int getNoticeCount() {
		int total = 0;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT COUNT(*) as total FROM notice";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				total = rs.getInt("total");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return total;
	}
	
	//게시글 목록(페이지와 검색 처리)
	public List<Notice> getNoticeList(String field, String kw, int page){
		List<Notice> noticeList = new ArrayList<>();
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : field에 "title", "id"가 입력됨
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, no.* "
					+ "        FROM (SELECT * FROM notice "
					+ "        WHERE n" + field + " LIKE ? ORDER BY nno DESC) no) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + kw +"%");
			pstmt.setInt(2, (page-1)*10 + 1);
			pstmt.setInt(3, page * 10);
			rs = pstmt.executeQuery();  //검색한 데이터셋(모음)
			while(rs.next()) {
				Notice n = new Notice();
				n.setNno(rs.getInt("nno"));
				n.setNtitle(rs.getString("ntitle"));
				n.setNcontent(rs.getString("ncontent"));
				n.setNcreateDate(rs.getTimestamp("ncreatedate"));
				n.setNmodifyDate(rs.getTimestamp("nmodifydate"));
				n.setNhit(rs.getInt("nhit"));
				n.setNfilename(rs.getString("nfilename"));
				n.setNreply_count(rs.getInt("nreply_count"));
				n.setNlike_count(rs.getInt("nlike_count"));
				
				noticeList.add(n); //list에 b 객체 저장함
			}
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return noticeList;
	}
	
}
