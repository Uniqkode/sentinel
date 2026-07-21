import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class SectionWrapper extends StatelessComponent {
  const SectionWrapper({
    super.key,
    required this.children,
    this.id,
    this.dark = false,
    this.classes = '',
  });

  final List<Component> children;
  final String? id;
  final bool dark;
  final String classes;

  @override
  Component build(BuildContext context) {
    return section(
      id: id,
      classes:
          'py-20 md:py-28 lg:py-32 ${dark ? 'bg-slate-950' : 'bg-gradient-to-b from-slate-50 to-white'} $classes',
      [
        div(classes: 'max-w-7xl mx-auto px-4 sm:px-6 lg:px-8', children),
      ],
    );
  }
}