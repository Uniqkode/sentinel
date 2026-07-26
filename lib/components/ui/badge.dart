import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class Badge extends StatelessComponent {
  const Badge({
    super.key,
    required this.text,
    this.color = 'rose',
  });

  final String text;
  final String color;

  @override
  Component build(BuildContext context) {
    return span(
      classes:
          'inline-flex items-center px-3 py-1 rounded-full text-xs font-medium bg-rose-500/10 text-rose-400 border border-rose-500/20',
      [Component.text(text)],
    );
  }
}
