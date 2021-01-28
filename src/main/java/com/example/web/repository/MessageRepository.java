package com.example.web.repository;

import com.example.web.entity.Message;
import com.example.web.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Integer> {

    Page<Message> findAll(Pageable pageble);

    Page<Message> findByTag(String tag, Pageable pageble);

    Message findById(Long messageId);

    @Query("from Message m where m.author = :author")
    Page<Message> findByUser(Pageable pageable, @Param("author") User author);
}
