import 'package:golden_toolkit/golden_toolkit.dart';

import 'steps/screenshot_verified.dart';
import 'steps/the_app_is_rendered.dart';

void main() {
  testGoldens('Primary swatch color is amber', (tester) async {
    await theAppIsRendered(tester);
    await screenshotVerified(tester, 'counter');
  });
}
