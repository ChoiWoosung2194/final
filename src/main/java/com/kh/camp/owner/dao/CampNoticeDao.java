package com.kh.camp.owner.dao;

import com.kh.camp.owner.mapper.CampNoticeMapper;
import com.kh.camp.owner.vo.CampNoticeVo;
import com.kh.camp.owner.vo.CampingVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CampNoticeDao {

    private final CampNoticeMapper mapper;

    public List<CampNoticeVo> getCampNotice(String no) {
        return mapper.getCampNotice(no);
    }

    public int insertNotice(CampNoticeVo vo) {
        return mapper.insertNotice(vo);
    }

    public CampingVo noticeByNo(String no) {
        return mapper.noticeByNo(no);
    }

    public int edit(CampNoticeVo vo) {
        return mapper.edit(vo);
    }

    public CampNoticeVo noticeDetail(String no) {
        return mapper.noticeDetail(no);
    }

    public int updateHit(String no) {
        return mapper.updateHit(no);
    }
}
