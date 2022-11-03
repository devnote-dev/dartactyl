abstract class Sort {
  final String? sort;

  const Sort([this.sort]);

  String? toJson() => sort;
}

class ActivityLogSort extends Sort {
  const ActivityLogSort._(super.sort);

  static const ActivityLogSort sortByPositiveTimestamp =
      ActivityLogSort._('timestamp');

  static const ActivityLogSort sortByNegativeTimestamp =
      ActivityLogSort._('-timestamp');
}