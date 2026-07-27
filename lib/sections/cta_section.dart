import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../config.dart';
import '../components/layout/section_wrapper.dart';
import '../components/ui/button.dart';

class CtaSection extends StatelessComponent {
  const CtaSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'final-cta',
      classes: 'relative overflow-hidden',
      children: [
        div(
          classes: 'absolute inset-0 bg-gradient-to-br from-rose-950 via-rose-950 to-slate-950 pointer-events-none',
          [],
        ),
        div(
          classes: 'absolute inset-0 pointer-events-none',
          [
            div(
              classes: 'absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[600px] rounded-full bg-rose-500/8 blur-[120px]',
              [],
            ),
          ],
        ),
        div(
          classes: 'scroll-reveal max-w-3xl mx-auto text-center relative z-10',
          [
            h2(
              classes:
                  'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
              [Component.text('Ready to Secure Your APIs?')],
            ),
            p(
              classes:
                  'text-slate-400 text-lg mb-8 max-w-2xl mx-auto',
              [
                Component.text(
                  'Start detecting security issues before they reach production. Book a demo or contact us to get started.',
                ),
              ],
            ),
            div(
              classes: 'flex flex-col sm:flex-row gap-4 justify-center',
              [
                SentinelButton(label: 'Request Demo', href: '#demo'),
                SentinelButton(
                  label: 'Contact Us',
                  href: '#contact',
                  outline: true,
                ),
              ],
            ),
            div(
              classes:
                  'mt-6 flex items-center justify-center space-x-4 text-sm',
              [
                a(
                  href: 'mailto:${SiteConfig.contactEmail}',
                  classes:
                      'text-slate-400 hover:text-white transition-colors',
                  [Component.text(SiteConfig.contactEmail)],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
