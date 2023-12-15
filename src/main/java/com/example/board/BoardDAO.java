package com.example.board;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    private SqlSession sqlSession;

    public List<BoardVO> getBoardList() {
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }

    public int insertBoard(BoardVO vo) {
        return sqlSession.insert("Board.insertBoard",vo);
    }

    public int deleteBoard(int id) {
        return sqlSession.delete("Board.deleteBoard",id);
    }
    public int updateBoard(BoardVO vo) {
        return sqlSession.update("Board.deleteBoard",vo);
    }

    public BoardVO getBoard(int seq) {
        return sqlSession.selectOne("Board.deleteBoard",seq);
    }


//    public void setTemplate(JdbcTemplate template){
//        this.template = template;
//    }
//    private final String BOARD_INSERT = "insert into BOARD (title, writer, content) values (?,?,?)";
//    private final String BOARD_UPDATE = "update BOARD set title=?, writer=?, content=? where seq=?";
//    private final String BOARD_DELETE = "delete from BOARD  where seq=?";
//    private final String BOARD_GET = "select * from BOARD  where seq=?";
//    private final String BOARD_LIST = "select * from BOARD order by seq desc";
//
//    public int insertBoard(BoardVO vo) {
//        return template.update(BOARD_INSERT,
//                new Object[]{vo.getTitle(), vo.getWriter(), vo.getContent()});
//    }
//
//    // 글 삭제
//    public int deleteBoard(int id) {
//        return template.update(BOARD_DELETE,
//                new Object[]{id});
//    }
//    public int updateBoard(BoardVO vo) {
//        return template.update(BOARD_UPDATE,
//                new Object[]{vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getSeq()});
//    }
//
//    public BoardVO getBoard(int seq) {
//        return template.queryForObject(BOARD_GET,
//                new Object[]{seq},
//                new BeanPropertyRowMapper<BoardVO>(BoardVO.class)
//        );
//    }
//
//    public List<BoardVO> getBoardList(){
//        List<BoardVO> list =  template.query(BOARD_LIST,new RowMapper<BoardVO>() {
//            @Override
//            public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//                BoardVO data = new BoardVO();
//                data.setSeq(rs.getInt("seq"));
//                data.setTitle(rs.getString("title"));
//                data.setContent(rs.getString("content"));
//                data.setRegdate(rs.getDate("regdate"));
//                data.setWriter(rs.getString("writer"));
//                return data;
//            }
//        });
//        return list;
//    }


}
