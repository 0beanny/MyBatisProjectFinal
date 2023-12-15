package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    BoardService boardService;
    @RequestMapping("/board/list")
    public String boardlist(Model model) {
        List<BoardVO> list = boardService.getBoardList();
        model.addAttribute("list",list);
        return "boardlist";
    }

//    @RequestMapping("/board/add")
//    public String addPost() {
//        return "addpostform";
//    }
//
//    @RequestMapping("/board/addok")
//    public String addPostOk(BoardVO vo) {
//        if(boardService.insertBoard(vo) == 0) {
//            System.out.println("데이터 추가 실패");
//        }
//        else {
//            System.out.println("데이터 추가 성공");
//        }
//        return "redirect:list";
//    }
//
//    @RequestMapping("/board/editform/{id}")
//    public String editPost(@PathVariable("id") Integer id, Model model) {
//        BoardVO boardVO = boardService.getBoard(id);
//        model.addAttribute("boardVO",boardVO);
//        return "editform";
//    }
//
//    @RequestMapping("/board/editok")
//    public String editPostOk(BoardVO vo) {
//        if(boardService.updateBoard(vo) == 0) {
//            System.out.println("데이터 수정 실패");
//        }
//        else {
//            System.out.println("데이터 수정 성공");
//        }
//        return "redirect:list";
//    }
//
//    @RequestMapping("/board/deleteok/{id}")
//    public String deletePost(@PathVariable("id") int id) {
//        int i = boardService.deleteBoard(id);
//        if(i==0){
//            System.out.println("데이터 삭제 실패");
//        }
//        else {
//            System.out.println("데이터 삭제 성공");
//        }
//        return "redirect:../list";
//    }
}
