package com.kh.camp.owner.service;

import com.kh.camp.owner.dao.CampNoticeDao;
import com.kh.camp.owner.vo.CampNoticeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class CampNoticeService {

    private final CampNoticeDao dao;

    public List<CampNoticeVo> getCampNotice(String no) {
        return dao.getCampNotice(no);
    }

    public int insertNotice(CampNoticeVo vo) {
        return dao.insertNotice(vo);
    }

    public int edit(CampNoticeVo vo) {
        return dao.edit(vo);
    }

    public CampNoticeVo noticeDetail(String no) {
        return dao.noticeDetail(no);
    }


    public int updateHit(String no) {
        return dao.updateHit(no);
    }
}
