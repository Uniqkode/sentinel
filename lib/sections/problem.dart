import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class ProblemSection extends StatelessComponent {
  const ProblemSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'problem',
      children: [
        div(classes: 'text-center mb-16 scroll-reveal', [
          p(
            classes:
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('The Problem')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6 scroll-reveal',
            [Component.text('The Hidden Cost of Undetected API Changes')],
          ),
          p(
            classes:
                'text-slate-400 text-lg max-w-3xl mx-auto',
            [
              Component.text(
                'Undetected API breaking changes and shadow endpoints create major security exploits and financial risk during rapid code deployments.',
              ),
            ],
          ),
        ]),
        div(
          classes: 'stagger-group grid grid-cols-1 md:grid-cols-3 gap-8 max-w-5xl mx-auto',
          [
            div(
              classes: 'stagger-item text-center p-6',
              [
                div(
                  classes: 'text-3xl md:text-4xl font-bold text-rose-400 mb-2 shadow-lg shadow-rose-500/10',
                  attributes: {'data-counter': '70', 'data-suffix': '%'},
                  [Component.text('0%')],
                ),
                div(
                  classes: 'text-slate-400 text-sm',
                  [Component.text('of security breaches stem from API vulnerabilities')],
                ),
              ],
            ),
            div(
              classes: 'stagger-item text-center p-6',
              [
                div(
                  classes: 'text-3xl md:text-4xl font-bold text-rose-400 mb-2 shadow-lg shadow-rose-500/10',
                  attributes: {'data-counter': '4.45', 'data-prefix': '\$', 'data-suffix': 'M'},
                  [Component.text('\$0M')],
                ),
                div(
                  classes: 'text-slate-400 text-sm',
                  [Component.text('average cost of a single data breach')],
                ),
              ],
            ),
            div(
              classes: 'stagger-item text-center p-6',
              [
                div(
                  classes: 'text-3xl md:text-4xl font-bold text-rose-400 mb-2 shadow-lg shadow-rose-500/10',
                  attributes: {'data-counter': '3', 'data-suffix': 'x'},
                  [Component.text('0x')],
                ),
                div(
                  classes: 'text-slate-400 text-sm',
                  [Component.text('API calls grow faster than teams monitoring them')],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
