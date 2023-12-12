package board3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class Reply3DAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	
	//댓글 목록
	public List<Reply3> getReplyList3(int bno) {
		List<Reply3> replyList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM reply3 WHERE bno3 = ? ORDER BY rdate3";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			//sql 처리
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Reply3 r = new Reply3();
				r.setRno3(rs.getInt("rno3"));
				r.setBno3(rs.getInt("bno3"));
				r.setRcontent3(rs.getString("rcontent3"));
				r.setReplyer3(rs.getString("replyer3"));
				r.setRdate3(rs.getTimestamp("rdate3"));
				r.setRupdate3(rs.getTimestamp("rupdate3"));

				
				replyList.add(r);	//어레이리스트에 객체 3명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return replyList;
	}
	
	//댓글 등록
	public void insertreply3(Reply3 r) {
	
		try {
			conn = JDBCUtil.getConnection();
			String sql = "INSERT INTO reply3(rno3, bno3, rcontent3, replyer3) "
					+ "VALUES (seq_rno3.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getBno3());
			pstmt.setString(2, r.getRcontent3());
			pstmt.setString(3, r.getReplyer3());
	
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 삭제
	public void deletereply3(int rno) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM reply3 WHERE rno3 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			//sql 실행
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}	
	}
	
	//댓글 수정
	public void updatereply3(Reply3 r) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE reply3 SET "
					+ "rcontent3 = ?, rupdate3 = ? WHERE rno3 = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, r.getRcontent3());
			pstmt.setTimestamp(2, now);
			pstmt.setInt(3, r.getRno3());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 3개만 보기(수정시)
	public Reply3 getReply3(int rno) {
		Reply3 r = new Reply3();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM reply3 WHERE rno3 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			//id에 일치하는 3개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				r.setBno3(rs.getInt("bno3"));
				r.setRno3(rs.getInt("rno3"));
				r.setRcontent3(rs.getString("rcontent3"));
				r.setRdate3(rs.getTimestamp("rdate3"));
				r.setRupdate3(rs.getTimestamp("rupdate3"));
				r.setReplyer3(rs.getString("replyer3"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return r;
		
	}
	
	//댓글 개수
	public int getReplyCountByBno3(int bno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int replyCount = 0;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT COUNT(*) as reply_count3 FROM reply3 WHERE bno3 = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                replyCount = rs.getInt("reply_count3");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt, rs);
        }

        return replyCount;
    }	
	
	
}
