import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';
import '../components/ui/card.dart';

class FeaturesSection extends StatelessComponent {
  const FeaturesSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'features',
      children: [
        div(classes: 'text-center mb-16 scroll-reveal', [
          p(
            classes:
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Features')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Built for Security-First Engineering Teams')],
          ),
          p(
            classes: 'text-slate-400 text-lg max-w-3xl mx-auto',
            [
              Component.text(
                'Everything your team needs to detect, prevent, and respond to API security threats before they impact your users.',
              ),
            ],
          ),
        ]),
        div(classes: 'max-w-3xl mx-auto mb-12 scroll-reveal', [
          img(
            src: 'https://images.unsplash.com/photo-1555949963-aa79dcee981c?w=1200&h=500&fit=crop&q=80',
            alt: 'Developer Security Features',
            classes: 'w-full rounded-2xl border border-slate-800',
            attributes: {'loading': 'lazy'},
          ),
        ]),
        div(classes: 'stagger-group', [
          div(
            classes:
                'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6',
            [
              div(classes: 'stagger-item', [
                FeatureCard(
                  icon: '\u{1F504}',
                  title: 'API Schema Drift Detection',
                  description:
                      'Compare OpenAPI and Swagger specs across commits. Automatically detect when production behavior diverges from documented contracts.',
                ),
              ]),
              div(classes: 'stagger-item', [
                FeatureCard(
                  icon: '\u{1F47B}',
                  title: 'Shadow Endpoint Discovery',
                  description:
                      'Find unregistered and undocumented routes in your production traffic. No endpoint goes unnoticed.',
                ),
              ]),
              div(classes: 'stagger-item', [
                FeatureCard(
                  icon: '\u{1F511}',
                  title: 'Credential Leak Scanner',
                  description:
                      'Detect exposed API keys, tokens, secrets, and sensitive data across codebases and traffic logs before they reach production.',
                ),
              ]),
              div(classes: 'stagger-item', [
                FeatureCard(
                  icon: '\u{26A0}\u{FE0F}',
                  title: 'Breaking Change Alerts',
                  description:
                      'Instant notifications when backward-incompatible changes are detected. Know immediately when an API update could break consumers.',
                ),
              ]),
              div(classes: 'stagger-item', [
                FeatureCard(
                  icon: '\u{1F4C8}',
                  title: 'Regression Impact Analysis',
                  description:
                      'Map breaking changes to downstream consumers. Understand the blast radius before deploying to production.',
                ),
              ]),
              div(classes: 'stagger-item', [
                FeatureCard(
                  icon: '\u{1F4CB}',
                  title: 'Audit Trail & Compliance',
                  description:
                      'Complete history of API changes with timestamps, diffs, and contributor info. Simplify security audits and compliance reviews.',
                ),
              ]),
            ],
          ),
        ]),

      ],
    );
  }
}
