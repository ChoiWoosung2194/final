package com.kh.camp.owner.controller;

import com.kh.camp.owner.service.OwnerService;
import com.kh.camp.owner.vo.OwnerVo;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("owner")
@RequiredArgsConstructor
public class OwnerController {

    private final OwnerService service;

    @GetMapping("main")
    public String mainPage(){

        return "owner/main";
    }

    //로그인 (화면)
    @GetMapping("login")
    public String login(){
        return "owner/login";
    }
    //로그인
    @PostMapping("login")
    public String login(OwnerVo vo , HttpSession session){
        OwnerVo loginOwnerVo = service.login(vo);


        if(loginOwnerVo != null){
            session.setAttribute("loginOwnerVo" , loginOwnerVo);
            session.setAttribute("alertMsg", vo.getName() + "님 승인 후 이용 가능합니다. ~~!!");
            return "redirect:/owner/main";
        }else{
            throw new RuntimeException();
        }
    }
    //회원가입(화면)
    @GetMapping("join")
    public String join(){
        return "owner/join";
    }

    //회원가입
    @PostMapping("join")
    public String join(OwnerVo vo) throws Exception {
        System.out.println("vo = " + vo);
        int result = service.join(vo);
        if(result != 1){
            throw new Exception("회원가입 실패...");
        }
        return "redirect:/owner/login";

    }


    //개인정보 화면
    @GetMapping("edit")
    public String editOwner(HttpSession session , Model model){

        return "owner/ownerEdit";

    }
    //개인정보 변경
    @PostMapping("edit")
    public ResponseEntity<String> editOwner(OwnerVo vo, HttpSession session) {
        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String no = loginOwnerVo.getNo();
        vo.setNo(no);
        int result = service.editPrivacy(vo);
        if(result != 1){
            return ResponseEntity.internalServerError().body("변경에 실패하였습니다.");
        }else {
            session.invalidate();
            return ResponseEntity.ok("변경 되었습니다.");
        }
    }
    //로그아웃
    @GetMapping("logout")
    public String logout(HttpServletRequest req){
        HttpSession session = req.getSession();
        session.invalidate();
        return "home";
    }



}
