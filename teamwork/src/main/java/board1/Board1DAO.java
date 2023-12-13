package board1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;



public class Board1DAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	public List<Board1> getBoardList1() {
		conn = JDBCUtil.getConnection();
		List<Board1> boardList = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM board1 ORDER BY bno1 DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board1 b = new Board1();
				b.setBno1(rs.getInt("bno1"));
				b.setTitle1(rs.getString("title1"));
				b.setContent1(rs.getString("content1"));
				b.setCreateDate1(rs.getTimestamp("createdate1"));
				b.setModifyDate1(rs.getTimestamp("modifydate1"));
				b.setHit1(rs.getInt("hit1"));
				b.setFilename1(rs.getString("filename1"));
				b.setId(rs.getString("id"));
				b.setReply_count1(rs.getInt("reply_count1"));
				b.setLike_count1(rs.getInt("like_count1"));
				
				boardList.add(b);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
	//글 작성
	public void write1(Board1 b) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "INSERT INTO board1(bno1, title1, content1, filename1, id) "
					+ "VALUES (seq_bno1.NEXTVAL, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle1());
			pstmt.setString(2, b.getContent1());
			pstmt.setString(3, b.getFilename1());
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
	public Board1 getBoard1(int bno1) {
		Board1 b = new Board1();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM board1 WHERE bno1 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno1);
			//id에 일치하는 1개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				b.setBno1(rs.getInt("bno1"));
				b.setTitle1(rs.getString("title1"));
				b.setContent1(rs.getString("content1"));
				b.setCreateDate1(rs.getTimestamp("createdate1"));
				b.setModifyDate1(rs.getTimestamp("modifydate1"));
				b.setHit1(rs.getInt("hit1"));
				b.setFilename1(rs.getString("filename1"));
				b.setId(rs.getString("id"));
				
				
				//조회수 1증가
				sql = "UPDATE board1 SET hit1 = hit1 + 1 WHERE bno1 = ?";
				pstmt = conn.prepareStatement(sql);	
				pstmt.setInt(1, bno1);
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
	public void deleteboard1(int bno1) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM board1 WHERE bno1 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno1);
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}	
	}
	//글 수정
	public void updateboard1(Board1 b) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE board1 SET title1 = ?"
					+ ", content1 = ?, modifydate1= ? WHERE bno1 = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, b.getTitle1());
			pstmt.setString(2, b.getContent1());
			pstmt.setTimestamp(3, now);
			pstmt.setInt(4, b.getBno1());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	//댓글 숫자 확인
	public void updateReplyCount1(int bno){
		try {
			conn = JDBCUtil.getConnection();
			String sql = "UPDATE board1 SET reply_count1 = "
					+ "(SELECT count(rno1) FROM reply1 WHERE bno1 = ?) WHERE bno1 = ?";
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
	public List<Board1> getLikeList1() {
		conn = JDBCUtil.getConnection();
		List<Board1> likeList = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM board1 ORDER BY like_count1 DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board1 b = new Board1();
				b.setBno1(rs.getInt("bno1"));
				b.setTitle1(rs.getString("title1"));
				b.setContent1(rs.getString("content1"));
				b.setCreateDate1(rs.getTimestamp("createdate1"));
				b.setModifyDate1(rs.getTimestamp("modifydate1"));
				b.setHit1(rs.getInt("hit1"));
				b.setFilename1(rs.getString("filename1"));
				b.setId(rs.getString("id"));
				b.setReply_count1(rs.getInt("reply_count1"));
				b.setLike_count1(rs.getInt("like_count1"));
				
				likeList.add(b);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return likeList;
	}
	
	//페이지
	public List<Board1> getBoardList1(int page) {
		conn = JDBCUtil.getConnection();
		List<Board1> boardList = new ArrayList<>();
		
		try {
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, bo.* "
					+ "        FROM (SELECT * FROM board1 ORDER BY bno1 DESC) bo) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, page * 10 - 9);
			pstmt.setInt(2, page * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board1 b = new Board1();
				b.setBno1(rs.getInt("bno1"));
				b.setTitle1(rs.getString("title1"));
				b.setContent1(rs.getString("content1"));
				b.setCreateDate1(rs.getTimestamp("createdate1"));
				b.setModifyDate1(rs.getTimestamp("modifydate1"));
				b.setHit1(rs.getInt("hit1"));
				b.setFilename1(rs.getString("filename1"));
				b.setId(rs.getString("id"));
				b.setReply_count1(rs.getInt("reply_count1"));
				b.setLike_count1(rs.getInt("like_count1"));
				
				boardList.add(b);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
	
	//총 게시글 수
	public int getBoardCount1() {
		int total = 0;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT COUNT(*) as total FROM board1";
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
	public List<Board1> getBoardList1(String field, String kw, int page){
		List<Board1> boardList = new ArrayList<>();
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : field에 "title", "id"가 입력됨
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, bo.* "
					+ "FROM (SELECT * FROM board1 "
					+ "WHERE " + field + " LIKE ? ORDER BY bno1 DESC) bo) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + kw +"%");
			pstmt.setInt(2, (page-1)*10 + 1);
			pstmt.setInt(3, page * 10);
			rs = pstmt.executeQuery();  //검색한 데이터셋(모음)
			while(rs.next()) {
				Board1 b = new Board1();
				b.setBno1(rs.getInt("bno1"));
				b.setTitle1(rs.getString("title1"));
				b.setContent1(rs.getString("content1"));
				b.setCreateDate1(rs.getTimestamp("createdate1"));
				b.setModifyDate1(rs.getTimestamp("modifydate1"));
				b.setHit1(rs.getInt("hit1"));
				b.setFilename1(rs.getString("filename1"));
				b.setId(rs.getString("id"));
				b.setReply_count1(rs.getInt("reply_count1"));
				b.setLike_count1(rs.getInt("like_count1"));
				
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
