package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;



public class BoardDAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	public List<Board> getBoardList() {
		conn = JDBCUtil.getConnection();
		List<Board> boardList = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM board ORDER BY BNO DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board b = new Board();
				b.setBno(rs.getInt("bno"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setCreateDate(rs.getTimestamp("createdate"));
				b.setModifyDate(rs.getTimestamp("modifydate"));
				b.setHit(rs.getInt("hit"));
				b.setFilename(rs.getString("filename"));
				b.setId(rs.getString("id"));
				b.setReply_count(rs.getInt("reply_count"));
				b.setLike_count(rs.getInt("like_count"));
				
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
	public void write(Board b) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "INSERT INTO board(bno, title, content, filename, id) "
					+ "VALUES (seq_bno.NEXTVAL, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setString(3, b.getFilename());
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
	public Board getBoard(int bno) {
		Board b = new Board();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM board WHERE bno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			//id에 일치하는 1개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				b.setBno(rs.getInt("bno"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setCreateDate(rs.getTimestamp("createdate"));
				b.setModifyDate(rs.getTimestamp("modifydate"));
				b.setHit(rs.getInt("hit"));
				b.setFilename(rs.getString("filename"));
				b.setId(rs.getString("id"));
				
				
				//조회수 1증가
				sql = "UPDATE board SET hit = hit + 1 WHERE bno = ?";
				pstmt = conn.prepareStatement(sql);	
				pstmt.setInt(1, bno);
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
	public void deleteboard(int bno) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM board WHERE bno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}	
	}
	//글 수정
	public void updateboard(Board b) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE board SET title = ?"
					+ ", content = ?, filename = ? modifydate= ? WHERE bno = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setString(3, b.getFilename());
			pstmt.setTimestamp(4, now);
			pstmt.setInt(5, b.getBno());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	//댓글 숫자 확인
	public void updateReplyCount(int bno){
		try {
			conn = JDBCUtil.getConnection();
			String sql = "UPDATE board SET reply_count = "
					+ "(SELECT count(rno) FROM reply WHERE bno = ?) WHERE bno = ?";
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
	public List<Board> getLikeList() {
		conn = JDBCUtil.getConnection();
		List<Board> likeList = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM board ORDER BY like_count DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board b = new Board();
				b.setBno(rs.getInt("bno"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setCreateDate(rs.getTimestamp("createdate"));
				b.setModifyDate(rs.getTimestamp("modifydate"));
				b.setHit(rs.getInt("hit"));
				b.setFilename(rs.getString("filename"));
				b.setId(rs.getString("id"));
				b.setReply_count(rs.getInt("reply_count"));
				b.setLike_count(rs.getInt("like_count"));
				
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
	public List<Board> getBoardList(int page) {
		conn = JDBCUtil.getConnection();
		List<Board> boardList = new ArrayList<>();
		
		try {
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, bo.* "
					+ "        FROM (SELECT * FROM board ORDER BY bno DESC) bo) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, page * 10 - 9);
			pstmt.setInt(2, page * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board b = new Board();
				b.setBno(rs.getInt("bno"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setCreateDate(rs.getTimestamp("createdate"));
				b.setModifyDate(rs.getTimestamp("modifydate"));
				b.setHit(rs.getInt("hit"));
				b.setFilename(rs.getString("filename"));
				b.setId(rs.getString("id"));
				b.setReply_count(rs.getInt("reply_count"));
				b.setLike_count(rs.getInt("like_count"));
				
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
	public int getBoardCount() {
		int total = 0;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT COUNT(*) as total FROM board";
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
	public List<Board> getBoardList(String field, String kw, int page){
		List<Board> boardList = new ArrayList<>();
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : field에 "title", "id"가 입력됨
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, bo.* "
					+ "        FROM (SELECT * FROM board "
					+ "        WHERE " + field + " LIKE ? ORDER BY bno DESC) bo) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + kw +"%");
			pstmt.setInt(2, (page-1)*10 + 1);
			pstmt.setInt(3, page * 10);
			rs = pstmt.executeQuery();  //검색한 데이터셋(모음)
			while(rs.next()) {
				Board b = new Board();
				b.setBno(rs.getInt("bno"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setCreateDate(rs.getTimestamp("createdate"));
				b.setModifyDate(rs.getTimestamp("modifydate"));
				b.setHit(rs.getInt("hit"));
				b.setFilename(rs.getString("filename"));
				b.setId(rs.getString("id"));
				b.setReply_count(rs.getInt("reply_count"));
				b.setLike_count(rs.getInt("like_count"));
				
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
