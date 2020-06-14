// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Flutter Starter Kit', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final blueLightThemeFinder = find.byValueKey('blueLightTheme');
    final blueDarkThemeFinder = find.byValueKey('blueDarkTheme');
    final greenLightThemeFinder = find.byValueKey('greenLightTheme');
    final greenDarkThemeFinder = find.byValueKey('greenDarkTheme');

    final zhLanguageFinder = find.byValueKey('zhLanguage');
    final enLanguageFinder = find.byValueKey('enLanguage');

    final secondPageFinder = find.byValueKey('secondPage');
    final secondPageGoBackFinder = find.byValueKey('secondPageGoBack');
    final registryPageFinder = find.byValueKey('registryPage');
    final registryPageGoBackFinder = find.byValueKey('registryPageGoBack');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('change theme', () async {
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(blueDarkThemeFinder);
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(blueLightThemeFinder);
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(greenLightThemeFinder);
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(greenDarkThemeFinder);
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(blueLightThemeFinder);

      expect('', '');
    });

    test('change language', () async {
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(zhLanguageFinder);
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(enLanguageFinder);

      expect('', '');
    });

    test('change page', () async {
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(secondPageFinder);
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(secondPageGoBackFinder);
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(registryPageFinder);
      await Future.delayed(Duration(seconds: 2));
      await driver.tap(registryPageGoBackFinder);

      expect('', '');
    });
  });
}
