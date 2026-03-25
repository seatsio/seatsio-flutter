enum WheelchairSpaceType {
  wheelchairAccessibleSeat,
  wheelchairSpace;

  static WheelchairSpaceType? fromJson(String? value) {
    if (value == null) return null;
    return const {
      'WHEELCHAIR_ACCESSIBLE_SEAT': WheelchairSpaceType.wheelchairAccessibleSeat,
      'WHEELCHAIR_SPACE': WheelchairSpaceType.wheelchairSpace,
    }[value];
  }
}
