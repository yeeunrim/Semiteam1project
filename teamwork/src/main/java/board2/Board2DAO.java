package board2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;



public class Board2DAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	public List<Board2> getBoardList2() {
		conn = JDBCUtil.getConnection();
		List<Board2> boardList = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM board2 ORDER BY bno2 DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board2 b = new Board2();
				b.setBno2(rs.getInt("bno2"));
				b.setTitle2(rs.getString("title2"));
				b.setContent2(rs.getString("content2"));
				b.setCreateDate2(rs.getTimestamp("createdate2"));
				b.setModifyDate2(rs.getTimestamp("modifydate2"));
				b.setHit2(rs.getInt("hit2"));
				b.setFilename2(rs.getString("filename2"));
				b.setId(rs.getString("id"));
				b.setReply_count2(rs.getInt("reply_count2"));
				b.setLike_count2(rs.getInt("like_count2"));
				
				
				boardList.add(b);	//어레이리스트에 객체 2명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
	//글 작성
	public void write2(Board2 b) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "INSERT INTO board2(bno2, title2, content2, filename2, id) "
					+ "VALUES (seq_bno2.NEXTVAL, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle2());
			pstmt.setString(2, b.getContent2());
			pstmt.setString(3, b.getFilename2());
			pstmt.setString(4, b.getId());
			

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	
	//게시글 상세보기
	public Board2 getBoard2(int bno2) {
		Board2 b = new Board2();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM board2 WHERE bno2 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno2);
			//id에 일치하는 2개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				b.setBno2(rs.getInt("bno2"));
				b.setTitle2(rs.getString("title2"));
				b.setContent2(rs.getString("content2"));
				b.setCreateDate2(rs.getTimestamp("createdate2"));
				b.setModifyDate2(rs.getTimestamp("modifydate2"));
				b.setHit2(rs.getInt("hit2"));
				b.setFilename2(rs.getString("filename2"));
				b.setId(rs.getString("id"));
				
				
				//조회수 2증가
				sql = "UPDATE board2 SET hit2 = hit2 + 1 WHERE bno2 = ?";
				pstmt = conn.prepareStatement(sql);	
				pstmt.setInt(1, bno2);
				pstmt.executeUpdate();	//실행

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return b;
		
	}

	//삭제
	public void deleteboard2(int bno2) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM board2 WHERE bno2 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno2);
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}	
	}
	//글 수정
	public void updateboard2(Board2 b) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE board2 SET title2 = ?"
					+ ", content2 = ?, modifydate2= ? WHERE bno2 = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, b.getTitle2());
			pstmt.setString(2, b.getContent2());
			pstmt.setTimestamp(3, now);
			pstmt.setInt(4, b.getBno2());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	//댓글 숫자 확인
	public void updateReplyCount2(int bno){
		try {
			conn = JDBCUtil.getConnection();
			String sql = "UPDATE board2 SET reply_count2 = "
					+ "(SELECT count(rno2) FROM reply2 WHERE bno2 = ?) WHERE bno2 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			pstmt.setInt(2, bno);
			//sql 실행
			pstmt.executeUpdate();
			

		} catch (SQLException e) {	
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}

	
	//좋아요 순 정렬
	public List<Board2> getLikeList2() {
		conn = JDBCUtil.getConnection();
		List<Board2> likeList = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM board2 ORDER BY like_count2 DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board2 b = new Board2();
				b.setBno2(rs.getInt("bno2"));
				b.setTitle2(rs.getString("title2"));
				b.setContent2(rs.getString("content2"));
				b.setCreateDate2(rs.getTimestamp("createdate2"));
				b.setModifyDate2(rs.getTimestamp("modifydate2"));
				b.setHit2(rs.getInt("hit2"));
				b.setFilename2(rs.getString("filename2"));
				b.setId(rs.getString("id"));
				b.setReply_count2(rs.getInt("reply_count2"));
				b.setLike_count2(rs.getInt("like_count2"));
				
				likeList.add(b);	//어레이리스트에 객체 2명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return likeList;
	}
	
	//페이지
	public List<Board2> getBoardList2(int page) {
		conn = JDBCUtil.getConnection();
		List<Board2> boardList = new ArrayList<>();
		
		try {
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, bo.* "
					+ "        FROM (SELECT * FROM board2 ORDER BY bno2 DESC) bo) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, page * 20 - 9);
			pstmt.setInt(2, page * 20);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board2 b = new Board2();
				b.setBno2(rs.getInt("bno2"));
				b.setTitle2(rs.getString("title2"));
				b.setContent2(rs.getString("content2"));
				b.setCreateDate2(rs.getTimestamp("createdate2"));
				b.setModifyDate2(rs.getTimestamp("modifydate2"));
				b.setHit2(rs.getInt("hit2"));
				b.setFilename2(rs.getString("filename2"));
				b.setId(rs.getString("id"));
				b.setReply_count2(rs.getInt("reply_count2"));
				b.setLike_count2(rs.getInt("like_count2"));
				
				boardList.add(b);	//어레이리스트에 객체 2명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
	
	//총 게시글 수
	public int getBoardCount2() {
		int total = 0;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT COUNT(*) as total FROM board2";
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
	public List<Board2> getBoardList2(String field, String kw, int page){
		List<Board2> boardList = new ArrayList<>();
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : field에 "title", "id"가 입력됨
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, bo.* "
					+ "FROM (SELECT * FROM board2 "
					+ "WHERE " + field + " LIKE ? ORDER BY bno2 DESC) bo) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + kw +"%");
			pstmt.setInt(2, (page-2)*20 + 2);
			pstmt.setInt(3, page * 20);
			rs = pstmt.executeQuery();  //검색한 데이터셋(모음)
			while(rs.next()) {
				Board2 b = new Board2();
				b.setBno2(rs.getInt("bno2"));
				b.setTitle2(rs.getString("title2"));
				b.setContent2(rs.getString("content2"));
				b.setCreateDate2(rs.getTimestamp("createdate2"));
				b.setModifyDate2(rs.getTimestamp("modifydate2"));
				b.setHit2(rs.getInt("hit2"));
				b.setFilename2(rs.getString("filename2"));
				b.setId(rs.getString("id"));
				b.setReply_count2(rs.getInt("reply_count2"));
				b.setLike_count2(rs.getInt("like_count2"));
				
				boardList.add(b); //list에 b 객체 저장함
			}
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
}
