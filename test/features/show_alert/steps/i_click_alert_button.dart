import 'package:bdd_app/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iClickAlertButton(WidgetTester tester) async {
  final button = find.byKey(MyHomePage.alertButtonKey);
  await tester.tap(button);
  await tester.pumpAndSettle();
}
