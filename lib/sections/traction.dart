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
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Traction')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Traction & Milestones')],
          ),
        ]),
        div(
          classes:
              'stagger-group max-w-4xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8',
          [
            _TractionItem(
              icon: '\u2714',
              title: 'MVP Launched',
              description:
                  'Core API schema diffing engine, breaking change detection, and credential scanning are live and operational.',
            ),
            _TractionItem(
              icon: '\u{1F465}',
              title: 'Product Users',
              description:
                  'Onboarding product users from fintech and healthtech API teams with active feedback loops and iterative improvements.',
            ),
            _TractionItem(
              icon: '\u{1F31F}',
              title: 'Beta Access Live',
              description:
                  'Private beta is live for selected backend teams. Sign up for a demo to get access and start securing your APIs.',
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
