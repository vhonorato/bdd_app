import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../shared/steps/i_click_plus_button.dart';
import '../shared/steps/initial_state_of_app.dart';
import 'steps/i_click_alert_button.dart';
import 'steps/i_click_close_button.dart';
import 'steps/i_see_the_message.dart';

void showAlertText() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Test Plus feature of the app', (WidgetTester tester) async {
    await initialStateOfApp(tester);
    await iClickPlusButton(tester);
    await iClickAlertButton(tester);
    await iSeeTheMessage(tester);
    await iClickCloseButton(tester);
  });
}
