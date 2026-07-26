import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class FeatureCard extends StatelessComponent {
  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final String icon;
  final String title;
  final String description;

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'group glow-card relative p-6 rounded-2xl bg-slate-900/50 border border-slate-800 hover:border-rose-500/30 transition-all duration-300 hover:shadow-lg hover:shadow-rose-500/15',
      [
        div(classes: 'text-3xl mb-4', [Component.text(icon)]),
        h3(
          classes:
              'text-lg font-semibold text-white mb-2 group-hover:text-rose-400 transition-colors',
          [Component.text(title)],
        ),
        p(classes: 'text-slate-400 text-sm leading-relaxed', [
          Component.text(description),
        ]),
      ],
    );
  }
}

class StatCard extends StatelessComponent {
  const StatCard({
    super.key,
    required this.value,
    required this.label,
  });

  final String value;
  final String label;

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'text-center p-6',
      [
        div(
          classes:
              'text-3xl md:text-4xl font-bold text-rose-400 mb-2',
          [Component.text(value)],
        ),
        div(
          classes: 'text-slate-400 text-sm',
          [Component.text(label)],
        ),
      ],
    );
  }
}