abstract class ErgastApiRM {
  const ErgastApiRM({
    required this.limit,
    required this.offset,
    required this.total,
  });

  final String limit;
  final String offset;
  final String total;
}