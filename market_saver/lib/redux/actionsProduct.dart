import 'package:market_saver/model/Product.dart';

class AddProductAction {
	Product _product;

	AddProductAction(this._product);
}

class ToggleProductStateAction {
	final Product _product;

	ToggleProductStateAction(this._product);
}