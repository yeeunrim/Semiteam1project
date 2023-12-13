package board2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;


public class Blike2DAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	public void like2(Blike2 l) {
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "INSERT INTO blike2(likeno2, bno2, id) "
					+ "VALUES (seq_likeno2.NEXTVAL, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, l.getBno2());
			pstmt.setString(2, l.getId());
	
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	
	public void updateLikeCount2(int bno){
		try {
			conn = JDBCUtil.getConnection();
			String sql = "UPDATE board2 SET like_count2 = "
					+ "(SELECT count(bno2) FROM blike2 WHERE bno2 = ?) WHERE bno2 = ?";
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
	
	public List<Blike2> getLikeList2(int bno) {
		List<Blike2> likeList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM blike2 WHERE bno2 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			//sql 처리
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Blike2 l = new Blike2();
				l.setLikeno2(rs.getInt("likeno2"));
				l.setBno2(rs.getInt("bno2"));
				l.setId(rs.getString("Id"));
				
				likeList.add(l);	//어레이리스트에 객체 2명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return likeList;
	}
	
	public boolean likeListContainsUser2(List<Blike2> likeList, String id) {
	    for (Blike2 like : likeList) {
	        if (like.getId().equals(id)) {
	            return true;
	        }
	    }
	    return false;
	}
	
	public void deleteLike2(String id, int bno) {
			
		try {
			conn = JDBCUtil.getConnection();
			String sql = "DELETE FROM blike2 WHERE id = ? and bno2 = ?";
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


	public int getLikeCountByBno2(int bno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int likeCount = 0;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT COUNT(*) as like_count2 FROM blike2 WHERE bno2 = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                likeCount = rs.getInt("like_count2");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt, rs);
        }

        return likeCount;
    }	
	
}
