// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _tr = {
  "hello": "Merhaba",
  "welcome": "Hoş geldiniz",
  "login": "Giriş yap",
  "logout": "Çıkış yap",
  "register": "Kayıt ol",
  "email": "E-posta",
  "password": "Parola",
  "profile": "Profil",
  "home": "Ana sayfa",
  "store": "Mağaza",
  "products": "Ürünler",
  "settings": "Ayarlar",
  "search": "Ara",
  "cart": "Sepet",
  "phone_number": "Telefon numarası",
  "address": "Adres",
  "addresses": "Adresler",
  "not_available": "Mevcut değil",
  "something_went_wrong": "Bir şeyler yanlış gitti!",
  "invalid": "Geçersiz",
  "email_required": "E-posta gerekli",
  "password_required": "Parola gerekli",
  "joined_on_prefix": "",
  "joined_on_suffix": " tarihinde katıldın.",
  "add_to_cart": "Sepete ekle",
  "added_to_cart": "Sepete eklendi",
  "language": "Dil",
  "theme": "Tema",
  "developed_by": "Enes Cerrahoğlu tarafından geliştirildi.",
  "my_website": "www.enescerrahoglu.com"
};
static const Map<String,dynamic> _en = {
  "hello": "Hello",
  "welcome": "Welcome",
  "login": "Login",
  "logout": "Logout",
  "register": "Register",
  "email": "Email",
  "password": "Password",
  "profile": "Profile",
  "home": "Home",
  "store": "Store",
  "products": "Products",
  "settings": "Settings",
  "search": "Search",
  "cart": "Cart",
  "phone_number": "Phone number",
  "address": "Address",
  "addresses": "Addresses",
  "not_available": "Not available",
  "something_went_wrong": "Something went wrong!",
  "invalid": "Invalid",
  "email_required": "Email required",
  "password_required": "Password required",
  "joined_on_prefix": "You joined on ",
  "joined_on_suffix": "",
  "add_to_cart": "Add to cart",
  "added_to_cart": "Added to cart",
  "language": "Language",
  "theme": "Theme",
  "developed_by": "Developed by Enes Cerrahoğlu.",
  "my_website": "www.enescerrahoglu.com"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"tr": _tr, "en": _en};
}
