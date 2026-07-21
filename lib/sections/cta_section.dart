import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../config.dart';
import '../components/layout/section_wrapper.dart';
import '../components/forms/waitlist_form.dart';

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
                  'Join the Sentinel beta and catch security issues before they reach production. Get early access to AI-powered API security.',
                ),
              ],
            ),
            WaitlistForm(),
            div(
              classes:
                  'mt-6 flex items-center justify-center space-x-4 text-sm',
              [
                a(
                  href: '#demo',
                  classes:
                      'text-cyan-400 hover:text-cyan-300 transition-colors',
                  [Component.text('Schedule a Demo \u2192')],
                ),
                span(classes: 'text-slate-600', [Component.text('|')]),
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
