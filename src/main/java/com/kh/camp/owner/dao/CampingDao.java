package com.kh.camp.owner.dao;

import com.chemi.owner.mapper.CampingMapper;
import com.chemi.owner.vo.CampingVo;
import com.chemi.owner.vo.ImgVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CampingDao {

    private final CampingMapper mapper;

    public CampingVo getCampByNo(String no) {
        return mapper.getCampByNo(no);
    }



    public int insertCamp(CampingVo vo) {
        return mapper.insertCamp(vo);
    }

    public int editCamp(String tel, String ownerNo) {
        return mapper.editCamp(tel , ownerNo);
    }

    public int updateFacility(String no ,String name) {
        return mapper.updateFacility(no, name);
    }

    public CampingVo campByName(String campName) {
        return mapper.campByName(campName);
    }

    public int insertCampImg(ImgVo vo) {
        return mapper.insertCampImg(vo);
    }
}
