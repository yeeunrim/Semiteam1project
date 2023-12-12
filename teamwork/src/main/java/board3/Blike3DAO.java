package board3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;


public class Blike3DAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	public void like3(Blike3 l) {
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "INSERT INTO blike3(likeno3, bno3, id) "
					+ "VALUES (seq_likeno3.NEXTVAL, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, l.getBno3());
			pstmt.setString(2, l.getId());
	
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	
	public void updateLikeCount3(int bno){
		try {
			conn = JDBCUtil.getConnection();
			String sql = "UPDATE board3 SET like_count3 = "
					+ "(SELECT count(bno3) FROM blike3 WHERE bno3 = ?) WHERE bno3 = ?";
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
	
	public List<Blike3> getLikeList3(int bno) {
		List<Blike3> likeList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM blike3 WHERE bno3 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			//sql 처리
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Blike3 l = new Blike3();
				l.setLikeno3(rs.getInt("likeno3"));
				l.setBno3(rs.getInt("bno3"));
				l.setId(rs.getString("Id"));
				
				likeList.add(l);	//어레이리스트에 객체 3명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return likeList;
	}
	
	public boolean likeListContainsUser3(List<Blike3> likeList, String id) {
	    for (Blike3 like : likeList) {
	        if (like.getId().equals(id)) {
	            return true;
	        }
	    }
	    return false;
	}
	
	public void deleteLike3(String id, int bno) {
			
		try {
			conn = JDBCUtil.getConnection();
			String sql = "DELETE FROM blike3 WHERE id = ? and bno3 = ?";
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


	public int getLikeCountByBno3(int bno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int likeCount = 0;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT COUNT(*) as like_count3 FROM blike3 WHERE bno3 = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(3, bno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                likeCount = rs.getInt("like_count3");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt, rs);
        }

        return likeCount;
    }	
	
}
