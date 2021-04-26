import 'package:bdd_app/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iClickCloseButton(WidgetTester tester) async {
  final button = find.byKey(MyHomePage.closeButtonKey);
  await tester.tap(button);
  await tester.pumpAndSettle();
}
