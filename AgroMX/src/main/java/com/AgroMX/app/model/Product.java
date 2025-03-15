package com.AgroMX.app.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

	@Entity
	@Table(name = "Products")
	public class Product {

		@Id 
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Long id;
//		@OneToMany
//		@JoinColumn(name = "order_id", nullable = false)
//		private Order orderId;
		@ManyToOne
		@JoinColumn(name = "detail_id", nullable = false)
		private Detail detailId;
		@ManyToOne
		@JoinColumn(name = "category_id", nullable = false)
		private Category CategoryId;
		@Column(name = "product_name", length = 100, nullable = false)
		private String productName;
		@Column(name = "price", length = 100, nullable = true)
		private Double price;
		@Column(name = "stock", length = 50, nullable = false, unique = true)
		private Long stock;
		@Column(name = "description", length = 1000, nullable = false)
		private String description;
		@Column(name = "benefits", length = 1000, nullable = false)
		private String benefits;

		Product() {		
			
		}

		public Product(Long id, String productName, Double price, Long stock, String description,
				String benefits) {
			this.id = id;
			this.productName = productName;
			this.price = price;
			this.stock = stock;
			this.description = description;
			this.benefits = benefits;
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getProductName() {
			return productName;
		}

		public void setProductName(String productName) {
			this.productName = productName;
		}

		public Double getPrice() {
			return price;
		}

		public void setPrice(Double price) {
			this.price = price;
		}

		public Long getStock() {
			return stock;
		}

		public void setStock(Long stock) {
			this.stock = stock;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getBenefits() {
			return benefits;
		}

		public void setBenefits(String benefits) {
			this.benefits = benefits;
		}

		@Override
		public String toString() {
			StringBuilder builder = new StringBuilder();
			builder.append("Product [id=");
			builder.append(id);
			builder.append(", productName=");
			builder.append(productName);
			builder.append(", stock=");
			builder.append(stock);
			builder.append(", description=");
			builder.append(description);
			builder.append(", benefits=");
			builder.append(benefits);
			builder.append("]");
			return builder.toString();
		}
		
}	

