class LocationException implements Exception {
  @override
  String toString() {
    return 'Access to location declined.\n\nAdd location using the search button above.';
  }
}
