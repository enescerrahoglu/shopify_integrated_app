enum ThemeModes {
  system('device_theme'),
  light('light_theme'),
  dark('dark_theme');

  const ThemeModes(this.name);
  final String name;
}
