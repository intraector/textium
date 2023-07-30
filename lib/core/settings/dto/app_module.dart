enum AppModule {
  copier;

  static AppModule? from(String? name) {
    if (name == copier.name) return copier;
    return null;
  }
}
