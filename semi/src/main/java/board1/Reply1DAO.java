package board1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class Reply1DAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	
	//댓글 목록
	public List<Reply1> getReplyList1(int bno) {
		List<Reply1> replyList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM reply1 WHERE bno1 = ? ORDER BY rdate1";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			//sql 처리
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Reply1 r = new Reply1();
				r.setRno1(rs.getInt("rno1"));
				r.setBno1(rs.getInt("bno1"));
				r.setRcontent1(rs.getString("rcontent1"));
				r.setReplyer1(rs.getString("replyer1"));
				r.setRdate1(rs.getTimestamp("rdate1"));
				r.setRupdate1(rs.getTimestamp("rupdate1"));

				
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
	public void insertreply1(Reply1 r) {
	
		try {
			conn = JDBCUtil.getConnection();
			String sql = "INSERT INTO reply1(rno1, bno1, rcontent1, replyer1) "
					+ "VALUES (seq_rno1.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getBno1());
			pstmt.setString(2, r.getRcontent1());
			pstmt.setString(3, r.getReplyer1());
	
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 삭제
	public void deletereply1(int rno) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM reply1 WHERE rno1 = ?";
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
	public void updatereply1(Reply1 r) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE reply1 SET "
					+ "rcontent1 = ?, rupdate1 = ? WHERE rno1 = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, r.getRcontent1());
			pstmt.setTimestamp(2, now);
			pstmt.setInt(3, r.getRno1());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 1개만 보기(수정시)
	public Reply1 getReply1(int rno) {
		Reply1 r = new Reply1();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM reply1 WHERE rno1 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			//id에 일치하는 1개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				r.setBno1(rs.getInt("bno1"));
				r.setRno1(rs.getInt("rno1"));
				r.setRcontent1(rs.getString("rcontent1"));
				r.setRdate1(rs.getTimestamp("rdate1"));
				r.setRupdate1(rs.getTimestamp("rupdate1"));
				r.setReplyer1(rs.getString("replyer1"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return r;
		
	}
	
	//댓글 개수
	public int getReplyCountByBno1(int bno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int replyCount = 0;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT COUNT(*) as reply_count1 FROM reply1 WHERE bno1 = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                replyCount = rs.getInt("reply_count1");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt, rs);
        }

        return replyCount;
    }	
	
	
}
