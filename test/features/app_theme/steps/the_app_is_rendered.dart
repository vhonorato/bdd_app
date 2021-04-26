import 'package:bdd_app/app_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> theAppIsRendered(WidgetTester tester) async {
  await loadAppFonts();
  final builder = DeviceBuilder()..addScenario(widget: AppWidget());
  await tester.pumpDeviceBuilder(builder);
  //await tester.pumpWidgetBuilder(AppWidget());
}
