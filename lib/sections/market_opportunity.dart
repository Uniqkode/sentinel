import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class MarketOpportunitySection extends StatelessComponent {
  const MarketOpportunitySection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      id: 'market',
      children: [
        div(classes: 'scroll-reveal text-center mb-16', [
          p(
            classes:
                'text-cyan-400 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Market Opportunity')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-slate-900 mb-6',
            [Component.text('Targeting the Fastest-Growing Attack Surface')],
          ),
        ]),
        div(
          classes:
              'stagger-group grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 max-w-5xl mx-auto',
          [
            _MarketCard(
              title: 'Target Users',
              items: [
                'Backend developers',
                'DevSecOps teams',
                'Fintech engineering leads',
                'Platform/API teams',
              ],
            ),
            _MarketCard(
              title: 'Initial Markets',
              items: [
                'United States',
                'European Union',
                'United Kingdom',
                'Global SaaS teams',
              ],
            ),
            _MarketCard(
              title: 'Revenue Model',
              items: [
                'SaaS subscription',
                'Starter tier',
                'Team tier',
                'Enterprise plans',
              ],
            ),
            _MarketCard(
              title: 'Growth Strategy',
              items: [
                'Start with API-heavy fintech',
                'Expand to healthtech',
                'General SaaS adoption',
                'Enterprise sales',
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _MarketCard extends StatelessComponent {
  const _MarketCard({
    required this.title,
    required this.items,
  });

  final String title;
  final List<String> items;

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'stagger-item glow-card p-6 rounded-2xl bg-slate-50 border border-slate-200',
      [
        h3(
          classes:
              'text-lg font-semibold text-slate-900 mb-4',
          [Component.text(title)],
        ),
        ul(classes: 'space-y-2', [
          for (final item in items)
            li(classes: 'flex items-center space-x-2', [
              span(classes: 'text-cyan-500 text-sm', [Component.text('\u2022')]),
              span(
                classes: 'text-slate-600 text-sm',
                [Component.text(item)],
              ),
            ]),
        ]),
      ],
    );
  }
}