import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'pages/home.dart';
import 'pages/privacy_policy.dart';
import 'pages/terms_of_use.dart';
import 'components/layout/header.dart';
import 'components/layout/footer.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        Route(
          path: '/',
          builder: (_, _) => _Shell(child: HomePage()),
        ),
        Route(
          path: '/privacy-policy',
          builder: (_, _) => _Shell(child: PrivacyPolicyPage()),
        ),
        Route(
          path: '/terms-of-use',
          builder: (_, _) => _Shell(child: TermsOfUsePage()),
        ),
      ],
    );
  }
}

class _Shell extends StatelessComponent {
  const _Shell({required this.child});

  final Component child;

  @override
  Component build(BuildContext context) {
    return Component.fragment([Header(), child, Footer()]);
  }
}
