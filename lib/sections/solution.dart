import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class SolutionSection extends StatelessComponent {
  const SolutionSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      id: 'solution',
      children: [
        div(classes: 'text-center mb-16 scroll-reveal', [
          p(
            classes:
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('The Solution')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Sentinel Catches What Your CI/CD Misses')],
          ),
          p(
            classes: 'text-slate-400 text-lg max-w-3xl mx-auto',
            [
              Component.text(
                'A continuous AI-powered security layer that monitors your API surface in real time, detecting drift, leaks, and breaking changes before they reach production.',
              ),
            ],
          ),
        ]),
        div(classes: 'max-w-3xl mx-auto mb-12 scroll-reveal', [
          img(
            src: 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=1200&h=500&fit=crop&q=80',
            alt: 'API Security Monitoring',
            classes: 'w-full rounded-2xl border border-slate-800',
            attributes: {'loading': 'lazy'},
          ),
        ]),
        div(classes: 'stagger-group', [
          div(
            classes:
                'grid grid-cols-1 md:grid-cols-3 gap-8 max-w-5xl mx-auto',
            [
              div(classes: 'stagger-item', [
                _SolutionCard(
                  icon: '\u{1F50D}',
                  title: 'Real-Time Monitoring',
                  description:
                      'Continuously analyze HTTP traffic patterns across your API gateway to detect unauthorized endpoints and anomalous behavior.',
                ),
              ]),
              div(classes: 'stagger-item', [
                _SolutionCard(
                  icon: '\u{1F9E0}',
                  title: 'AI-Powered Drift Detection',
                  description:
                      'Sequence prediction models compare API schemas across commits, catching breaking changes before they propagate to consumers.',
                ),
              ]),
              div(classes: 'stagger-item', [
                _SolutionCard(
                  icon: '\u{1F512}',
                  title: 'Credential Leak Scanner',
                  description:
                      'Automated scanning of code repositories and traffic logs for exposed API keys, tokens, secrets, and sensitive data.',
                ),
              ]),
            ],
          ),
        ]),
      ],
    );
  }
}

class _SolutionCard extends StatelessComponent {
  const _SolutionCard({
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
      classes: 'glow-card text-center p-8',
      [
        div(classes: 'text-4xl mb-4', [Component.text(icon)]),
        h3(
          classes:
              'text-xl font-semibold text-white mb-3',
          [Component.text(title)],
        ),
        p(
          classes: 'text-slate-400 leading-relaxed',
          [Component.text(description)],
        ),
      ],
    );
  }
}
