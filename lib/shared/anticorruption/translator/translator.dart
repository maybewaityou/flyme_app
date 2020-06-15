import 'package:flyme_app/shared/infrastructure/model/model.dart';

abstract class DataModelTranslator<T extends DataModel> {
  T translate(Map<String, dynamic> json);
}
