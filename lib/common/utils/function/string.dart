import 'package:strings/strings.dart' as strings;

String camelize(String str) {
  return strings.camelize(str);
}

String smallCamelize(String str) {
  final camelizedString = strings.camelize(str);
  final first = camelizedString.substring(0, 1);
  return first.toLowerCase() + camelizedString.substring(1);
}

String snakeCase(String str) {
  return strings.underscore(str);
}
