import 'package:strings/strings.dart' as strings;

String camelize(str) {
  return strings.camelize(str);
}

String smallCamelize(str) {
  final camelizedString = strings.camelize(str);
  final first = camelizedString.substring(0, 1);
  return first.toLowerCase() + camelizedString.substring(1);
}
