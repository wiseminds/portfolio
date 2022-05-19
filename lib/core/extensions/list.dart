// extension BLExt<T> on BuiltList<T> {
//   T? get firstItem => (this.length > 0) ? this.first : null;
// }

extension LExt<T> on List<T> {
  T? get firstItem => isNotEmpty ? first : null;
}
