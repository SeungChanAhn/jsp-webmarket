package dao;

import java.util.ArrayList;
import java.util.List;
import dto.Product;

// Product에 대한 기능을 정의
public class ProductRepository {
	private List<Product> products = new ArrayList<>(); // 어떠한 리스트라도 받아들일수있도록 List로 선언

	// 원래는 DB에서 가져올 데이터
	// 지금 DB 안 배워서 그냥 3개 만든 것임
	public ProductRepository() {
		Product phone = new Product("P1234", "iphone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, blablabla");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");

		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("4.7-inch, 1334X750 Retina HD display, blablabla");
		notebook.setCategory("Smart Phone");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refubished");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("4.7-inch, 1334X750 Retina HD display, blablabla");
		tablet.setCategory("Smart Phone");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");

		products.add(phone);
		products.add(notebook);
		products.add(tablet);
	}

	// 모든 상품 정보를 가져온다.
	public List<Product> getAllProducts() {
		return products;
	}

	// ID로 상품 찾기기능
	public Product getProductById(String productId) {
		// 원래 코드는 책 173p 참고
		return products
				.stream() // 상품 3개 흘러감
				.filter((product) -> product.getProductId().equals(productId)) // 걸러낼 규칙 true(필요한것)만 걸러냄
				.findFirst() // 첫번째 것
				.get(); // 얻기
	}
}
