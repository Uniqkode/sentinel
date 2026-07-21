import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class TractionSection extends StatelessComponent {
  const TractionSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'traction',
      children: [
        div(classes: 'scroll-reveal text-center mb-16', [
          p(
            classes:
                'text-cyan-400 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Traction')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Early Traction')],
          ),
        ]),
        div(
          classes:
              'stagger-group max-w-4xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8',
          [
            _TractionItem(
              icon: '\u{1F680}',
              title: 'MVP in Development',
              description:
                  'Core API schema diffing and breaking change detection features are being built and tested internally.',
            ),
            _TractionItem(
              icon: '\u{1F465}',
              title: 'Pilot Users',
              description:
                  'Currently onboarding pilot users from fintech and healthtech API teams for early feedback.',
            ),
            _TractionItem(
              icon: '\u{1F4E2}',
              title: 'Beta Access Opening Soon',
              description:
                  'Private beta access is opening soon for selected backend teams. Join the waitlist to get early access.',
            ),
          ],
        ),
      ],
    );
  }
}

class _TractionItem extends StatelessComponent {
  const _TractionItem({
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
      classes: 'stagger-item glow-card text-center p-6',
      [
        div(classes: 'text-4xl mb-4', [Component.text(icon)]),
        h3(
          classes: 'text-lg font-semibold text-white mb-3',
          [Component.text(title)],
        ),
        p(
          classes: 'text-slate-400 text-sm leading-relaxed',
          [Component.text(description)],
        ),
      ],
    );
  }
}