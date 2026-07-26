import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class HowItWorksSection extends StatelessComponent {
  const HowItWorksSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'how-it-works',
      children: [
        div(classes: 'scroll-reveal text-center mb-16', [
          p(
            classes:
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('How It Works')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Four Steps to API Security')],
          ),
        ]),
        div(classes: 'max-w-3xl mx-auto mb-12 scroll-reveal', [
          img(
            src: 'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=1200&h=500&fit=crop&q=80',
            alt: 'Automated Security Monitoring',
            classes: 'w-full rounded-2xl border border-slate-800',
            attributes: {'loading': 'lazy'},
          ),
        ]),
        div(
          classes:
              'stagger-group grid grid-cols-1 md:grid-cols-4 gap-8 max-w-5xl mx-auto relative',
          [
            _StepCard(
              number: '01',
              title: 'Connect',
              description:
                  'Point Sentinel at your API gateway, repository, or traffic logs. One-time setup takes minutes.',
            ),
            _StepCard(
              number: '02',
              title: 'Baseline',
              description:
                  'Our AI learns your API schema, behavior patterns, and expected traffic flows.',
            ),
            _StepCard(
              number: '03',
              title: 'Monitor',
              description:
                  'Real-time traffic analysis and schema diff comparison runs continuously in the background.',
            ),
            _StepCard(
              number: '04',
              title: 'Alert',
              description:
                  'Instant notifications on drift, credential leaks, or breaking changes delivered to your team.',
            ),
          ],
        ),
      ],
    );
  }
}

class _StepCard extends StatelessComponent {
  const _StepCard({
    required this.number,
    required this.title,
    required this.description,
  });

  final String number;
  final String title;
  final String description;

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'stagger-item glow-card text-center relative',
      [
        div(
          classes:
              'w-16 h-16 rounded-2xl bg-gradient-to-br from-rose-500 to-rose-600 flex items-center justify-center mx-auto mb-6 shadow-lg shadow-rose-500/20',
          [
            span(
              classes:
                  'text-xl font-bold text-white',
              [Component.text(number)],
            ),
          ],
        ),
        h3(
          classes:
              'text-xl font-semibold text-white mb-3',
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
