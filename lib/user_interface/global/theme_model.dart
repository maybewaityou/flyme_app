import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/config/theme/theme.dart';
import 'package:flyme_app/shared/user_interface/view_model/view_model.dart';
import 'package:injectable/injectable.dart';

part 'theme_model.g.dart';

@lazySingleton
@Properties([
  Property(
    name: 'theme',
    type: AppTheme,
    initial: 'AppTheme.blueLight',
  )
])
class ThemeModel extends _$ViewModel {
  @override
  void init() {
    print('==== ThemeModel init ====');
  }
}
