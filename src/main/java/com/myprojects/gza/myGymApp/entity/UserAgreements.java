package com.myprojects.gza.myGymApp.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="user_agreements")
public class UserAgreements {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name="zgoda1")
	private boolean agreement1;
	
	@Column(name="zgoda2")
	private boolean agreement2;
	
	@Column(name="zgoda3")
	private boolean agreement3;
	
	@Column(name="zgoda4")
	private boolean agreement4;
	
	@Column(name="zgoda5")
	private boolean agreement5;
	
	@OneToOne(mappedBy = "userAgreements",
			cascade = {CascadeType.DETACH, CascadeType.MERGE, 
					CascadeType.PERSIST, CascadeType.REFRESH}, 
			fetch = FetchType.LAZY)
	private User user;

	public UserAgreements() {}
	
	public UserAgreements(int id, boolean agreement1, boolean agreement2, boolean agreement3, boolean agreement4,
			boolean agreement5) {
		this.id = id;
		this.agreement1 = agreement1;
		this.agreement2 = agreement2;
		this.agreement3 = agreement3;
		this.agreement4 = agreement4;
		this.agreement5 = agreement5;
	}

	public boolean isAgreement1() {
		return agreement1;
	}

	public void setAgreement1(boolean agreement1) {
		this.agreement1 = agreement1;
	}

	public boolean isAgreement2() {
		return agreement2;
	}

	public void setAgreement2(boolean agreement2) {
		this.agreement2 = agreement2;
	}

	public boolean isAgreement3() {
		return agreement3;
	}

	public void setAgreement3(boolean agreement3) {
		this.agreement3 = agreement3;
	}

	public boolean isAgreement4() {
		return agreement4;
	}

	public void setAgreement4(boolean agreement4) {
		this.agreement4 = agreement4;
	}

	public boolean isAgreement5() {
		return agreement5;
	}

	public void setAgreement5(boolean agreement5) {
		this.agreement5 = agreement5;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "UserAgreements [id=" + id + ", agreement1=" + agreement1 + ", agreement2=" + agreement2
				+ ", agreement3=" + agreement3 + ", agreement4=" + agreement4 + ", agreement5=" + agreement5 + "]";
	}
}
