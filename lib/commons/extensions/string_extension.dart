extension StringFormatter on String {
  String formatMessage(String content) {
    return '''
================================================
$this
$content
================================================
''';
  }
}
