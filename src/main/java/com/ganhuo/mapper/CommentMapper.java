package com.ganhuo.mapper;

import com.ganhuo.model.domain.Comment;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
public interface CommentMapper {

    Integer insert(Comment comment);

    Comment getCommentById(Long id);

    Comment getFirstComment();

    List<Comment> getCommentListByType(Integer typeId);

    List<Comment> getRecentComments(@Param("count")int count);

    void updateComment(Comment comment);

    List<Comment> getMostHotComment(@Param("i") int i);

    List<Comment> getCommentByModule(List<Integer> param);

    List<Comment> getAllComment();

    List<Comment> getCommentsByArticleId(@Param("articleId")Long articleId);
}
