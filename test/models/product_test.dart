import 'package:flutter_test/flutter_test.dart';
import 'package:ecommerce_app/models/product.dart';

void main() {
  test('Product.fromJson should return a valid Product object', () {
    final json = {
      'id': 1,
      'title': 'Test Product',
      'description': 'This is a test product',
      'price': 29.99,
      'image': 'https://fakestoreapi.com/products/image.jpg'
    };

    final product = Product.fromJson(json);

    expect(product.id, 1);
    expect(product.title, 'Test Product');
    expect(product.description, 'This is a test product');
    expect(product.price, 29.99);
    expect(product.image, 'https://fakestoreapi.com/products/image.jpg');
  });
}
