package board3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;



public class Board3DAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	public List<Board3> getBoardList3() {
		conn = JDBCUtil.getConnection();
		List<Board3> boardList = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM board3 ORDER BY bno3 DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board3 b = new Board3();
				b.setBno3(rs.getInt("bno3"));
				b.setTitle3(rs.getString("title3"));
				b.setContent3(rs.getString("content3"));
				b.setCreateDate3(rs.getTimestamp("createdate3"));
				b.setModifyDate3(rs.getTimestamp("modifydate3"));
				b.setHit3(rs.getInt("hit3"));
				b.setFilename3(rs.getString("filename3"));
				b.setId(rs.getString("id"));
				b.setReply_count3(rs.getInt("reply_count3"));
				b.setLike_count3(rs.getInt("like_count3"));
				
				
				boardList.add(b);	//어레이리스트에 객체 3명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
	//글 작성
	public void write3(Board3 b) {
		conn = JDBCUtil.getConnection();
		
		try {
			String sql = "INSERT INTO board3(bno3, title3, content3, filename3, id) "
					+ "VALUES (seq_bno3.NEXTVAL, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle3());
			pstmt.setString(2, b.getContent3());
			pstmt.setString(3, b.getFilename3());
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
	public Board3 getBoard3(int bno3) {
		Board3 b = new Board3();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM board3 WHERE bno3 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno3);
			//id에 일치하는 3개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				b.setBno3(rs.getInt("bno3"));
				b.setTitle3(rs.getString("title3"));
				b.setContent3(rs.getString("content3"));
				b.setCreateDate3(rs.getTimestamp("createdate3"));
				b.setModifyDate3(rs.getTimestamp("modifydate3"));
				b.setHit3(rs.getInt("hit3"));
				b.setFilename3(rs.getString("filename3"));
				b.setId(rs.getString("id"));
				
				
				//조회수 3증가
				sql = "UPDATE board3 SET hit3 = hit3 + 1 WHERE bno3 = ?";
				pstmt = conn.prepareStatement(sql);	
				pstmt.setInt(1, bno3);
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
	public void deleteboard3(int bno3) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM board3 WHERE bno3 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno3);
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}	
	}
	//글 수정
	public void updateboard3(Board3 b) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE board3 SET title3 = ?"
					+ ", content3 = ?, filename3 = ?, modifydate3= ? WHERE bno3 = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, b.getTitle3());
			pstmt.setString(2, b.getContent3());
			pstmt.setString(3, b.getFilename3());
			pstmt.setTimestamp(4, now);
			pstmt.setInt(5, b.getBno3());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	//댓글 숫자 확인
	public void updateReplyCount3(int bno){
		try {
			conn = JDBCUtil.getConnection();
			String sql = "UPDATE board3 SET reply_count3 = "
					+ "(SELECT count(rno3) FROM reply3 WHERE bno3 = ?) WHERE bno3 = ?";
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
	public List<Board3> getLikeList3() {
		conn = JDBCUtil.getConnection();
		List<Board3> likeList = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM board3 ORDER BY like_count3 DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board3 b = new Board3();
				b.setBno3(rs.getInt("bno3"));
				b.setTitle3(rs.getString("title3"));
				b.setContent3(rs.getString("content3"));
				b.setCreateDate3(rs.getTimestamp("createdate3"));
				b.setModifyDate3(rs.getTimestamp("modifydate3"));
				b.setHit3(rs.getInt("hit3"));
				b.setFilename3(rs.getString("filename3"));
				b.setId(rs.getString("id"));
				b.setReply_count3(rs.getInt("reply_count3"));
				b.setLike_count3(rs.getInt("like_count3"));
				
				likeList.add(b);	//어레이리스트에 객체 3명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return likeList;
	}
	
	//페이지
	public List<Board3> getBoardList3(int page) {
		conn = JDBCUtil.getConnection();
		List<Board3> boardList = new ArrayList<>();
		
		try {
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, bo.* "
					+ "        FROM (SELECT * FROM board3 ORDER BY bno3 DESC) bo) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, page * 30 - 9);
			pstmt.setInt(2, page * 30);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board3 b = new Board3();
				b.setBno3(rs.getInt("bno3"));
				b.setTitle3(rs.getString("title3"));
				b.setContent3(rs.getString("content3"));
				b.setCreateDate3(rs.getTimestamp("createdate3"));
				b.setModifyDate3(rs.getTimestamp("modifydate3"));
				b.setHit3(rs.getInt("hit3"));
				b.setFilename3(rs.getString("filename3"));
				b.setId(rs.getString("id"));
				b.setReply_count3(rs.getInt("reply_count3"));
				b.setLike_count3(rs.getInt("like_count3"));
				
				boardList.add(b);	//어레이리스트에 객체 3명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
	
	//총 게시글 수
	public int getBoardCount3() {
		int total = 0;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT COUNT(*) as total FROM board3";
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
	public List<Board3> getBoardList3(String field, String kw, int page){
		List<Board3> boardList = new ArrayList<>();
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : field에 "title", "id"가 입력됨
			String sql = "SELECT * "
					+ "FROM (SELECT ROWNUM RN, bo.* "
					+ "FROM (SELECT * FROM board3 "
					+ "WHERE " + field + " LIKE ? ORDER BY bno3 DESC) bo) "
					+ "WHERE RN >= ? AND RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + kw +"%");
			pstmt.setInt(2, (page-3)*30 + 3);
			pstmt.setInt(3, page * 30);
			rs = pstmt.executeQuery();  //검색한 데이터셋(모음)
			while(rs.next()) {
				Board3 b = new Board3();
				b.setBno3(rs.getInt("bno3"));
				b.setTitle3(rs.getString("title3"));
				b.setContent3(rs.getString("content3"));
				b.setCreateDate3(rs.getTimestamp("createdate3"));
				b.setModifyDate3(rs.getTimestamp("modifydate3"));
				b.setHit3(rs.getInt("hit3"));
				b.setFilename3(rs.getString("filename3"));
				b.setId(rs.getString("id"));
				b.setReply_count3(rs.getInt("reply_count3"));
				b.setLike_count3(rs.getInt("like_count3"));
				
				boardList.add(b); //list에 b 객체 저장함
			}
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
	
	
	public List<Board3> getBoardListBlike3(String id) {
		conn = JDBCUtil.getConnection();
		List<Board3> boardListBlike = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM board3 WHERE bno3 IN "
					+ "(SELECT bno3 FROM blike3 WHERE id = ?) "
					+ "ORDER BY createdate3 DESC";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board3 b = new Board3();
				b.setBno3(rs.getInt("bno3"));
				b.setTitle3(rs.getString("title3"));
				b.setContent3(rs.getString("content3"));
				b.setCreateDate3(rs.getTimestamp("createdate3"));
				b.setModifyDate3(rs.getTimestamp("modifydate3"));
				b.setHit3(rs.getInt("hit3"));
				b.setFilename3(rs.getString("filename3"));
				b.setId(rs.getString("id"));
				b.setReply_count3(rs.getInt("reply_count3"));
				b.setLike_count3(rs.getInt("like_count3"));
				
				boardListBlike.add(b);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardListBlike;
	}
}
