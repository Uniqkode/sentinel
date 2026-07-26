import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class WhyNowSection extends StatelessComponent {
  const WhyNowSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'why-now',
      children: [
        div(classes: 'scroll-reveal max-w-4xl mx-auto text-center', [
          p(
            classes:
                'text-rose-400 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Why Now')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-8',
            [Component.text('The Gap Between Speed and Security Is Growing')],
          ),
          div(classes: 'stagger-group', [
            p(
              classes:
                  'stagger-item text-slate-300 text-lg md:text-xl leading-relaxed mb-8',
              [
                Component.text(
                  'API-first architecture has become the backbone of modern software. As microservices proliferate and deployment velocity increases, the attack surface grows exponentially. Teams ship faster than their security tooling can adapt.',
                ),
              ],
            ),
            p(
              classes:
                  'stagger-item text-slate-400 text-lg leading-relaxed',
              [
                Component.text(
                  'Sentinel exists because the gap between deployment speed and security coverage has become a critical risk that manual audits cannot close. The time for autonomous, AI-driven API security is now.',
                ),
              ],
            ),
          ]),
        ]),
      ],
    );
  }
}
