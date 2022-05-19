package dto;

import java.io.Serializable;

public class Product implements Serializable { // Serializable 인터페이스, 인터페이스는 다형성
	private static final long serialVersionUID = 2867748905925104542L; // 여기저기있는 변수들을 모아서 보낼 때

	// model class를 만들때는 private으로 만들고 고민시작, jsp에서 사용할건 무지성으로 private
	private String productId;
	private String name;
	private int unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private long unitsInStock;
	private String condition;
	
	// 모델 클래스
	// JSP : 자바빈즈 (getter/setter, 기본 생성자, Serializable)
	
	public Product() {}; // 생성자를 추가해서 자동으로 만들어주는 기본생성자가 사라짐 직접입력
	
	public Product(String productId, String name, int unitPrice) { 
		this.productId = productId;
		this.name = name;
		this.unitPrice = unitPrice;
	}
	
	public String getProductId() {
		return productId;
	}
	
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}

	@Override
	public String toString() { // 객체를 스트링 형태로 보여주는 것
		return "Product [productId=" + productId + ", name=" + name + ", unitPrice=" + unitPrice + ", description="
				+ description + ", manufacturer=" + manufacturer + ", category=" + category + ", unitsInStock="
				+ unitsInStock + ", condition=" + condition + "]";
	}
	
	
	
}
