package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Feedback;

import java.util.Date;

@Service
public interface FeedbackService {

    public boolean saveFeedback(Feedback feedback) ;
}
