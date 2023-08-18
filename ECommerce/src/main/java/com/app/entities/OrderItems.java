package com.app.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="order_items")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class OrderItems extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product productId;
	private int quantity;
	private long totalBill;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User userId;
}
