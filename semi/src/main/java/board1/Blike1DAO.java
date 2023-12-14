package board1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;


public class Blike1DAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	public void like1(Blike1 l) {
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "INSERT INTO blike1(likeno1, bno1, id) "
					+ "VALUES (seq_likeno1.NEXTVAL, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, l.getBno1());
			pstmt.setString(2, l.getId());
	
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	
	public void updateLikeCount1(int bno){
		try {
			conn = JDBCUtil.getConnection();
			String sql = "UPDATE board1 SET like_count1 = "
					+ "(SELECT count(bno1) FROM blike1 WHERE bno1 = ?) WHERE bno1 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			pstmt.setInt(2, bno);
			//sql 실행
			pstmt.executeUpdate();
			

		} catch (SQLException e) {	
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
	}
	
	public List<Blike1> getLikeList1(int bno) {
		List<Blike1> likeList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM blike1 WHERE bno1 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			//sql 처리
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Blike1 l = new Blike1();
				l.setLikeno1(rs.getInt("likeno1"));
				l.setBno1(rs.getInt("bno1"));
				l.setId(rs.getString("Id"));
				
				likeList.add(l);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return likeList;
	}
	
	public boolean likeListContainsUser1(List<Blike1> likeList, String id) {
	    for (Blike1 like : likeList) {
	        if (like.getId().equals(id)) {
	            return true;
	        }
	    }
	    return false;
	}
	
	public void deleteLike1(String id, int bno) {
			
		try {
			conn = JDBCUtil.getConnection();
			String sql = "DELETE FROM blike1 WHERE id = ? and bno1 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, bno);
			
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}


	public int getLikeCountByBno1(int bno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int likeCount = 0;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT COUNT(*) as like_count1 FROM blike1 WHERE bno1 = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                likeCount = rs.getInt("like_count1");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt, rs);
        }

        return likeCount;
    }	
	
}
