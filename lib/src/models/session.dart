enum Session {
  cont,
  start,
  manual,
  none;

  String toJson() {
    return const {
      Session.cont: 'continue',
      Session.start: 'start',
      Session.manual: 'manual',
      Session.none: 'none',
    }[this]!;
  }
}
