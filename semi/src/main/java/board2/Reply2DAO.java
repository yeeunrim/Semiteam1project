package board2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class Reply2DAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	
	//댓글 목록
	public List<Reply2> getReplyList2(int bno) {
		List<Reply2> replyList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM reply2 WHERE bno2 = ? ORDER BY rdate2";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			//sql 처리
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Reply2 r = new Reply2();
				r.setRno2(rs.getInt("rno2"));
				r.setBno2(rs.getInt("bno2"));
				r.setRcontent2(rs.getString("rcontent2"));
				r.setReplyer2(rs.getString("replyer2"));
				r.setRdate2(rs.getTimestamp("rdate2"));
				r.setRupdate2(rs.getTimestamp("rupdate2"));

				
				replyList.add(r);	//어레이리스트에 객체 2명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return replyList;
	}
	
	//댓글 등록
	public void insertreply2(Reply2 r) {
	
		try {
			conn = JDBCUtil.getConnection();
			String sql = "INSERT INTO reply2(rno2, bno2, rcontent2, replyer2) "
					+ "VALUES (seq_rno2.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getBno2());
			pstmt.setString(2, r.getRcontent2());
			pstmt.setString(3, r.getReplyer2());
	
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 삭제
	public void deletereply2(int rno) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM reply2 WHERE rno2 = ?";
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
	public void updatereply2(Reply2 r) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE reply2 SET "
					+ "rcontent2 = ?, rupdate2 = ? WHERE rno2 = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, r.getRcontent2());
			pstmt.setTimestamp(2, now);
			pstmt.setInt(3, r.getRno2());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 2개만 보기(수정시)
	public Reply2 getReply2(int rno) {
		Reply2 r = new Reply2();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM reply2 WHERE rno2 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			//id에 일치하는 2개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				r.setBno2(rs.getInt("bno2"));
				r.setRno2(rs.getInt("rno2"));
				r.setRcontent2(rs.getString("rcontent2"));
				r.setRdate2(rs.getTimestamp("rdate2"));
				r.setRupdate2(rs.getTimestamp("rupdate2"));
				r.setReplyer2(rs.getString("replyer2"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return r;
		
	}
	
	//댓글 개수
	public int getReplyCountByBno2(int bno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int replyCount = 0;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT COUNT(*) as reply_count2 FROM reply2 WHERE bno2 = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                replyCount = rs.getInt("reply_count2");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt, rs);
        }

        return replyCount;
    }	
	
	
}
