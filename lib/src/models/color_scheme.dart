enum SeatsioColorScheme {
  light,
  dark;

  String toJson() {
    return const {
      SeatsioColorScheme.light: 'light',
      SeatsioColorScheme.dark: 'dark',
    }[this]!;
  }
}
