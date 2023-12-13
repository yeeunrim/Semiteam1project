package reply;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class ReplyDAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	
	//댓글 목록
	public List<Reply> getReplyList(int bno) {
		List<Reply> replyList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM reply WHERE bno = ? ORDER BY rdate";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			//sql 처리
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Reply r = new Reply();
				r.setRno(rs.getInt("rno"));
				r.setBno(rs.getInt("bno"));
				r.setRcontent(rs.getString("rcontent"));
				r.setReplyer(rs.getString("replyer"));
				r.setRdate(rs.getTimestamp("rdate"));
				r.setRupdate(rs.getTimestamp("rupdate"));

				
				replyList.add(r);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return replyList;
	}
	
	//댓글 등록
	public void insertreply(Reply r) {
	
		try {
			conn = JDBCUtil.getConnection();
			String sql = "INSERT INTO reply(rno, bno, rcontent, replyer) "
					+ "VALUES (seq_rno.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getBno());
			pstmt.setString(2, r.getRcontent());
			pstmt.setString(3, r.getReplyer());
	
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 삭제
	public void deletereply(int rno) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM reply WHERE rno = ?";
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
	public void updatereply(Reply r) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE reply SET "
					+ "rcontent = ?, rupdate= ? WHERE rno = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, r.getRcontent());
			pstmt.setTimestamp(2, now);
			pstmt.setInt(3, r.getRno());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 1개만 보기(수정시)
	public Reply getReply(int rno) {
		Reply r = new Reply();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM reply WHERE rno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			//id에 일치하는 1개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				r.setBno(rs.getInt("bno"));
				r.setRno(rs.getInt("rno"));
				r.setRcontent(rs.getString("rcontent"));
				r.setRdate(rs.getTimestamp("rdate"));
				r.setRupdate(rs.getTimestamp("rupdate"));
				r.setReplyer(rs.getString("replyer"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return r;
		
	}
	
	//댓글 개수
	public int getReplyCountByBno(int bno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int replyCount = 0;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT COUNT(*) as reply_count FROM reply WHERE bno = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                replyCount = rs.getInt("reply_count");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt, rs);
        }

        return replyCount;
    }	
	
	
}
