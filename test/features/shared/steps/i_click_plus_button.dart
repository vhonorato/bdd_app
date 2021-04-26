import 'package:bdd_app/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iClickPlusButton(WidgetTester tester) async {
  final button = find.byKey(MyHomePage.addButtonKey);
  await tester.tap(button);
  await tester.pumpAndSettle();
}
