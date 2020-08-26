import 'package:meta/meta.dart';

@immutable
class FlatData<D> {
  final D data;
  final Exception error;

  FlatData({this.data, this.error});

  bool hasData() => data != null;

  bool hasError() => error != null;

  T when<T>(
      {@required T reject(Exception exception), @required T resolve(D data)}) {
    if (hasError()) return reject(error);
    return resolve(data);
  }
}

Future<FlatData> to<D>(Future<D> future) {
  return future
      .then((data) => FlatData(data: data))
      .catchError((error) => FlatData(error: error));
}
