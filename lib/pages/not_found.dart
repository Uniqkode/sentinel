import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class NotFoundPage extends StatelessComponent {
  const NotFoundPage({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      classes:
          'min-h-screen flex items-center justify-center bg-slate-950 pt-20',
      [
        div(classes: 'text-center px-4', [
          div(
            classes: 'text-8xl font-bold text-cyan-400 mb-4',
            [Component.text('404')],
          ),
          h1(
            classes:
                'text-2xl font-semibold text-white mb-4',
            [Component.text('Page Not Found')],
          ),
          p(
            classes: 'text-slate-400 mb-8 max-w-md mx-auto',
            [
              Component.text(
                "The page you're looking for doesn't exist or has been moved.",
              ),
            ],
          ),
          a(
            href: '/',
            classes:
                'inline-flex items-center px-6 py-3 bg-cyan-500 text-slate-950 font-semibold rounded-lg hover:bg-cyan-400 transition-all duration-300',
            [Component.text('\u2190 Back to Home')],
          ),
        ]),
      ],
    );
  }
}
