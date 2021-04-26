import 'package:bdd_app/app_widget.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> initialStateOfApp(WidgetTester tester) async {
  await tester.pumpWidget(AppWidget());
  await tester.pumpAndSettle();
  expect(find.text('0'), findsOneWidget);
  expect(find.text('1'), findsNothing);
}
