package com.entities;
// Generated 4 avr. 2018 15:24:35 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Contract generated by hbm2java
 */
@Entity
//@Table(name = "contract", catalog = "tests")
public class Contract implements java.io.Serializable {

	private Integer contractId;
	private Boolean regular;
	private Integer childId;
	private Date startDay;
	private Boolean startMorning;
	private Boolean startAfternoon;
	private Date endDay;
	private Boolean endMorning;
	private Boolean endAfternoon;

	public Contract() {
	}

	public Contract(Boolean regular, Integer childId, Date startDay, Boolean startMorning, Boolean startAfternoon,
			Date endDay, Boolean endMorning, Boolean endAfternoon) {
		this.regular = regular;
		this.childId = childId;
		this.startDay = startDay;
		this.startMorning = startMorning;
		this.endDay = endDay;
		this.endMorning = endMorning;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "contract_id", unique = true, nullable = false)
	public Integer getContractId() {
		return this.contractId;
	}

	public void setContractId(Integer contractId) {
		this.contractId = contractId;
	}

	@Column(name = "regular")
	public Boolean getRegular() {
		return this.regular;
	}

	public void setRegular(Boolean regular) {
		this.regular = regular;
	}

	@Column(name = "child_id")
	public Integer getChildId() {
		return this.childId;
	}

	public void setChildId(Integer childId) {
		this.childId = childId;
	}

	//@Temporal(TemporalType.DATE)
	@Column(name = "startDay", length = 10)
	public Date getStartDay() {
		return this.startDay;
	}

	public void setStartDay(Date startDay) {
		this.startDay = startDay;
	}

	@Column(name = "startMorning")
	public Boolean getStartMorning() {
		return this.startMorning;
	}

	public void setStartMorning(Boolean startMorning) {
		this.startMorning = startMorning;
	}

	//@Temporal(TemporalType.DATE)
	@Column(name = "endDay", length = 10)
	public Date getEndDay() {
		return this.endDay;
	}

	public void setEndDay(Date endDay) {
		this.endDay = endDay;
	}

	@Column(name = "endMorning")
	public Boolean getEndMorning() {
		return this.endMorning;
	}

	public void setEndMorning(Boolean endMorning) {
		this.endMorning = endMorning;
	}

}
