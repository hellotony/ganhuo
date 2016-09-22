package com.ganhuo.model.domain.base;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.io.Serializable;

public class Base implements Serializable {
	
	private static final long serialVersionUID = 3754703914350025981L;

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
	}
	
	@Override
	public boolean equals(Object other){
		return EqualsBuilder.reflectionEquals(this, other);
	}
	
	@Override
	public int hashCode(){
		return HashCodeBuilder.reflectionHashCode(this);
	}
}
