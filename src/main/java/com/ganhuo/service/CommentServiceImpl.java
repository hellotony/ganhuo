package com.ganhuo.service;

import com.ganhuo.mapper.CommentMapper;
import com.ganhuo.model.domain.Comment;
import com.ganhuo.service.client.CommentService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService {

    
    @Resource
    private CommentMapper commentMapper;


    @Override
    public Integer add(String content, String title, int type, String topicImageUrl, String CommentDesc) {
        if(StringUtils.isBlank(content) || StringUtils.isBlank(title)){
            return 0;
        }
        Comment Comment = new Comment();
        Comment.setContent(content);
        Comment.setDelFlag(0);
        Comment.setAddTime(new Date());
        Comment.setUpdateTime(new Date());
        commentMapper.insert(Comment);
        return Comment.getId();
    }

    @Override
    public Comment getCommentById(Long id) {
        return commentMapper.getCommentById(id);
    }

    @Override
    public Comment getFirstComment() {
        return commentMapper.getFirstComment();
    }

    @Override
    public List<Comment> getCommentListByType(Integer typeId) {
        List<Comment> Comments = commentMapper.getCommentListByType(typeId);
        return Comments;
    }

    @Override
    public List<Comment> getRecentComments(int count) {
        return commentMapper.getRecentComments(count);
    }

    @Override
    public void updateReadTime(Comment Comment) {
        commentMapper.updateComment(Comment);
    }

    @Override
    public List<Comment> getMostHotComment(int i) {
        return commentMapper.getMostHotComment(i);
    }

    @Override
    public List<Comment> getCommentByModule(List<Integer> param) {

        return commentMapper.getCommentByModule(param);
    }

    @Override
    public List<Comment> getAllComment() {
        return commentMapper.getAllComment();
    }

    @Override
    public Integer update(Integer id, String content, String title, String topicImageUrl, String CommentDesc) {
        Comment a = new Comment();
        a.setId(id);
        a.setContent(content);
        commentMapper.updateComment(a);

        return 1;
    }

    @Override
    public Integer insert(Integer articleId, String username, String content) {
        Comment comment = new Comment();
        comment.setArticleId(articleId);
        comment.setUsername(username);
        comment.setContent(content);
        comment.setDelFlag(0);
        comment.setAddTime(new Date());
        comment.setUpdateTime(new Date());
        return commentMapper.insert(comment);
    }

    @Override
    public List<Comment> getCommentsByArticleId(Long articleId) {
        return commentMapper.getCommentsByArticleId(articleId);
    }


}
