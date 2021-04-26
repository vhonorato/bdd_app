import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../shared/steps/i_click_plus_button.dart';
import 'steps/i_click_subtract_button.dart';
import 'steps/i_see_the_value.dart';
import '../shared/steps/initial_state_of_app.dart';

void addSubtractTest() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Test add features', () {
    testWidgets('Test Plus feature of the app', (WidgetTester tester) async {
      await initialStateOfApp(tester);
      await iClickPlusButton(tester);
      await iSeeTheValue(tester);
    });

    testWidgets('Test Subtract feature of the app',
        (WidgetTester tester) async {
      await initialStateOfApp(tester);
      await iClickPlusButton(tester);
      await iClickPlusButton(tester);
      await iClickSubtractButton(tester);
      await iSeeTheValue(tester);
    });
  });
}
