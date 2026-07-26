import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class MarketOpportunitySection extends StatelessComponent {
  const MarketOpportunitySection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'market',
      children: [
        div(classes: 'scroll-reveal text-center mb-16', [
          p(
            classes:
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Market Opportunity')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Targeting the Fastest-Growing Attack Surface')],
          ),
        ]),
        div(classes: 'max-w-2xl mx-auto mb-12 scroll-reveal', [
          img(
            src: 'https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=1000&h=400&fit=crop&q=80',
            alt: 'Market Analysis Dashboard',
            classes: 'w-full rounded-2xl border border-slate-800',
            attributes: {'loading': 'lazy'},
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
          'stagger-item glow-card p-6 rounded-2xl bg-slate-900/50 border border-slate-800',
      [
        h3(
          classes:
              'text-lg font-semibold text-white mb-4',
          [Component.text(title)],
        ),
        ul(classes: 'space-y-2', [
          for (final item in items)
            li(classes: 'flex items-center space-x-2', [
              span(classes: 'text-rose-500 text-sm', [Component.text('\u2022')]),
              span(
                classes: 'text-slate-400 text-sm',
                [Component.text(item)],
              ),
            ]),
        ]),
      ],
    );
  }
}
