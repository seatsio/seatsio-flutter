enum ShowSectionContents {
  always,
  auto,
  onlyAfterZoom;

  String toJson() {
    return const {
      ShowSectionContents.always: 'always',
      ShowSectionContents.auto: 'auto',
      ShowSectionContents.onlyAfterZoom: 'onlyAfterZoom',
    }[this]!;
  }
}
