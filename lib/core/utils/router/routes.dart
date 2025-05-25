enum Routes {
  initial('/'),
  navigation('/navigation'),
  login('/login'),
  store('/store'),
  profile('/profile'),
  productDetail('/product_detail');

  final String path;
  const Routes(this.path);
}
