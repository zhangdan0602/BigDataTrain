package cn.edu360.sm.model;

import java.util.List;

public class Orders {
    private Integer ordersId;

    private Integer count;

    private Integer status;

    private Integer userId;

    private Integer postId;
    
    private List<Items> itemss;
    
    private Post post;

    public Integer getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(Integer ordersId) {
        this.ordersId = ordersId;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

	public List<Items> getItemss() {
		return itemss;
	}

	public void setItemss(List<Items> itemss) {
		this.itemss = itemss;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}
    
    
}