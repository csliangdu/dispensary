/*
 */

package com.dispensary.project.vo.query;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;

import java.util.*;

import javacommon.base.*;
import javacommon.util.*;

import cn.org.rapid_framework.util.*;
import cn.org.rapid_framework.web.util.*;
import cn.org.rapid_framework.page.*;
import cn.org.rapid_framework.page.impl.*;

import com.dispensary.project.model.*;
import com.dispensary.project.dao.*;
import com.dispensary.project.service.*;
import com.dispensary.project.vo.query.*;

/**
 * @author jxx
 * @version 1.0
 * @since 1.0
 */


public class UserRoleInfoQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** 序列号 */
	private java.lang.Integer id;
	/** 用户ID  */
	private java.lang.Integer userId;
	/** 角色ID  */
	private java.lang.Integer roleId;

	public java.lang.Integer getId() {
		return this.id;
	}
	
	public void setId(java.lang.Integer value) {
		this.id = value;
	}
	
	public java.lang.Integer getUserId() {
		return this.userId;
	}
	
	public void setUserId(java.lang.Integer value) {
		this.userId = value;
	}
	
	public java.lang.Integer getRoleId() {
		return this.roleId;
	}
	
	public void setRoleId(java.lang.Integer value) {
		this.roleId = value;
	}
	
		private java.lang.String userIdModelTag;
		private java.lang.String roleIdModelTag;
		public java.lang.String getUserIdModelTag(){
			return this.userIdModelTag;
		}
		
		public  void setUserIdModelTag(String userinfoTag){
			this.userIdModelTag=userinfoTag;
		}
		public java.lang.String getRoleIdModelTag(){
			return this.roleIdModelTag;
		}
		
		public  void setRoleIdModelTag(String roleTag){
			this.roleIdModelTag=roleTag;
		}
	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

