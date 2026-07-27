import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';
import '../components/ui/button.dart';

class PricingSection extends StatelessComponent {
  const PricingSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'pricing',
      children: [
        div(classes: 'scroll-reveal text-center mb-16', [
          p(
            classes:
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Pricing')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Simple, Transparent Pricing')],
          ),
          p(
            classes: 'text-slate-400 text-lg max-w-2xl mx-auto',
            [
              Component.text(
                'Start free and scale as your API surface grows. No hidden fees, no per-endpoint charges.',
              ),
            ],
          ),
        ]),
        div(
          classes:
              'stagger-group grid grid-cols-1 md:grid-cols-3 gap-8 max-w-5xl mx-auto',
          [
            _PricingCard(
              name: 'Starter',
              price: '\$0',
              period: '/month',
              description: 'For small projects and evaluation',
              features: [
                'Up to 50 API endpoints',
                'Basic schema diffing',
                'Email alerts',
                'Community support',
                '7-day log retention',
              ],
              cta: 'Get Started',
              ctaHref: '#demo',
              featured: false,
            ),
            _PricingCard(
              name: 'Team',
              price: '\$149',
              period: '/month',
              description: 'For growing engineering teams',
              features: [
                'Up to 500 API endpoints',
                'AI-powered anomaly detection',
                'Credential leak scanning',
                'Slack & PagerDuty integrations',
                '30-day log retention',
                'Priority email support',
              ],
              cta: 'Start Free Trial',
              ctaHref: '#demo',
              featured: true,
            ),
            _PricingCard(
              name: 'Enterprise',
              price: 'Custom',
              period: '',
              description: 'For large-scale deployments',
              features: [
                'Unlimited API endpoints',
                'Advanced AI models & Triton GPU',
                'Custom integrations & webhooks',
                'SOC2 compliance reporting',
                '90-day log retention',
                'Dedicated account manager',
                'SLA guarantee',
              ],
              cta: 'Contact Sales',
              ctaHref: '#contact',
              featured: false,
            ),
          ],
        ),
      ],
    );
  }
}

class _PricingCard extends StatelessComponent {
  const _PricingCard({
    required this.name,
    required this.price,
    required this.period,
    required this.description,
    required this.features,
    required this.cta,
    required this.ctaHref,
    this.featured = false,
  });

  final String name;
  final String price;
  final String period;
  final String description;
  final List<String> features;
  final String cta;
  final String ctaHref;
  final bool featured;

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'stagger-item glow-card relative p-8 rounded-2xl ${featured ? 'bg-rose-500/10 border-2 border-rose-500/40 shadow-lg shadow-rose-500/10' : 'bg-slate-900/50 border border-slate-800'} transition-all',
      [
        if (featured)
          div(
            classes:
                'absolute -top-3 left-1/2 -translate-x-1/2 px-4 py-1 bg-rose-500 text-white text-xs font-bold rounded-full',
            [Component.text('Most Popular')],
          ),
        div(classes: 'text-center mb-8', [
          h3(
            classes:
                'text-xl font-bold ${featured ? 'text-rose-400' : 'text-white'} mb-2',
            [Component.text(name)],
          ),
          p(
            classes: 'text-slate-400 text-sm mb-4',
            [Component.text(description)],
          ),
          div(classes: 'flex items-baseline justify-center', [
            span(
              classes:
                  'text-4xl font-extrabold ${featured ? 'text-white' : 'text-white'}',
              [Component.text(price)],
            ),
            if (period.isNotEmpty)
              span(
                classes: 'text-slate-400 text-sm ml-1',
                [Component.text(period)],
              ),
          ]),
        ]),
        div(classes: 'space-y-3 mb-8', [
          for (final feature in features)
            div(classes: 'flex items-start space-x-3', [
              span(
                classes:
                    'text-rose-500 text-sm mt-0.5 shrink-0',
                [Component.text('\u2713')],
              ),
              span(
                classes: 'text-slate-300 text-sm',
                [Component.text(feature)],
              ),
            ]),
        ]),
        div(classes: '', [
          SentinelButton(
            label: cta,
            href: ctaHref,
            primary: featured,
            outline: !featured,
          ),
        ]),
      ],
    );
  }
}
