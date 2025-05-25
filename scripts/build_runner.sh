# for localization
dart run easy_localization:generate --source-dir assets/translations
dart run easy_localization:generate -S assets/translations -f keys -o locale_keys.g.dart

dart run easy_localization:generate --source-dir assets/translations && dart run easy_localization:generate -S assets/translations -f keys -o locale_keys.g.dart

# for generate freezed class
dart run build_runner build --delete-conflicting-outputs