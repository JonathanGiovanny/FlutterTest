import 'package:market_saver/model/Product.dart';
import 'package:market_saver/redux/actionsProduct.dart';

List<Product> productReducer(
	List<Product> products, dynamic action) {
  if (action is AddProductAction) {
	return addProduct(products, action);

  } else if (action is ToggleProductStateAction) {
	return toggleProductState(products, action);
  }
  return products;
}

List<Product> addProduct(List<Product> products, AddProductAction action) {
  return new List.from(products)..add(new Product(0, ''));
}

List<Product> toggleProductState(
	List<Product> products, ToggleProductStateAction action) {
  List<Product> productsNew = products
	  .map((_product) =>
		  _product.name == '' ? '' : _product)
	  .toList();
  return productsNew;
}