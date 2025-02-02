package com.kh.camp.owner.controller;

import com.kh.camp.owner.service.OwnerReservationService;
import com.kh.camp.owner.vo.OwnerReservationVo;
import com.kh.camp.owner.vo.OwnerVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("owner")
@RequiredArgsConstructor
public class OwnerReservationController {

    private final OwnerReservationService service;

    //예약리스트
    @GetMapping("reservation")
    public String reservList() {
        return "owner/reservationList";
    }


}
