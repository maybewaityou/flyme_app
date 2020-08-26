import 'package:logging/logging.dart';

const String _name = 'Logger';
Logger _instance;

void init() {
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  _instance = Logger(_name);
}

void setLevel(Level level) {
  Logger.root.level = level;
}

void info(String message, [Object error, StackTrace stackTrace]) {
  _instance.info(message, error, stackTrace);
}

void warning(String message, [Object error, StackTrace stackTrace]) {
  _instance.warning(message, error, stackTrace);
}

void config(String message, [Object error, StackTrace stackTrace]) {
  _instance.config(message, error, stackTrace);
}

void fine(String message, [Object error, StackTrace stackTrace]) {
  _instance.fine(message, error, stackTrace);
}

void finer(String message, [Object error, StackTrace stackTrace]) {
  _instance.finer(message, error, stackTrace);
}

void finest(String message, [Object error, StackTrace stackTrace]) {
  _instance.finest(message, error, stackTrace);
}

void severe(String message, [Object error, StackTrace stackTrace]) {
  _instance.severe(message, error, stackTrace);
}

void shout(String message, [Object error, StackTrace stackTrace]) {
  _instance.shout(message, error, stackTrace);
}
