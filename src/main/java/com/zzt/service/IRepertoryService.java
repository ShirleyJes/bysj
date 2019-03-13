package com.zzt.service;

import com.zzt.model.Repertory;

import java.util.List;

public interface IRepertoryService {
    List<Repertory> selectRepertory(Integer wNumber);
}
