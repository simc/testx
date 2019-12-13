part of testx;

extension _ on Object {
  String get str {
    if (this == null) {
      return '<null>';
    } else if (this is String) {
      var str = this as String;
      if (str == '') {
        return '<empty string>';
      }
      if (str.isBlank) {
        str = str.replaceAll(' ', '\\s');
      }

      str = str
          .replaceAll('\\', '\\\\')
          .replaceAll('\'', '\\\'')
          .replaceAll('\'', '\\\'')
          .replaceAll('\t', '\\\t')
          .replaceAll('\b', '\\\b')
          .replaceAll('\n', '\\\n')
          .replaceAll('\r', '\\\r')
          .replaceAll('\$', '\\\$');

      return '"$str"';
    }
  }
}
