import 'package:shared_preferences/shared_preferences.dart';

final class SharedPreferencesService {
  SharedPreferencesService._();
  static final _instance = SharedPreferencesService._();
  static SharedPreferencesService get instance => _instance;

  late final SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<bool> setData<T>(PreferenceKey key, T data) async {
    assert(T == double || T == int || T == bool || T == String, 'Invalid Type');
    return switch (T) {
      const (double) => _preferences.setDouble(key.name, data as double),
      const (int) => _preferences.setInt(key.name, data as int),
      const (bool) => _preferences.setBool(key.name, data as bool),
      const (String) => _preferences.setString(key.name, data as String),
      _ => Future.value(false),
    };
  }

  T? getData<T>(PreferenceKey key) {
    assert(T == double || T == int || T == bool || T == String, 'Invalid Type');
    return switch (T) {
      const (double) => _preferences.getDouble(key.name) as T?,
      const (int) => _preferences.getInt(key.name) as T?,
      const (bool) => _preferences.getBool(key.name) as T?,
      const (String) => _preferences.getString(key.name) as T?,
      _ => null,
    };
  }

  Future<bool> removeData(PreferenceKey key) async {
    return await _preferences.remove(key.name);
  }
}

enum PreferenceKey {
  authToken("auth_token"),
  showHowToUse("show_how_to_use"),
  useDeviceTheme("use_device_theme"),
  isDark("is_dark"),
  bookContentTheme("book_content_theme"),
  bookContentFontSize("book_content_font_size"),
  bookContentFontFamily("book_content_font_family"),
  bookContentReadingMode("book_content_reading_mode"),
  selectedBlockingCount("selected_blocking_count"),
  selectedBlockingWordsPerMinute("selected_blocking_words_per_minute"),
  bookCrossAxisCount("book_cross_axis_count"),
  metronomeVolume("metronome_volume"),
  metronomeIsActive("metronome_is_active"),
  ;

  const PreferenceKey(this.key);
  final String key;
}
