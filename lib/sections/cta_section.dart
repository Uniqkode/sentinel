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
                  'Join the Sentinel beta and catch security issues before they reach production. Get early access to AI-powered API security.',
                ),
              ],
            ),
            div(
              classes: 'relative inline-block',
              [
                div(
                  classes: 'absolute -inset-1 bg-gradient-to-r from-rose-500/30 via-rose-500/20 to-rose-500/30 rounded-xl blur-sm pointer-events-none',
                  [],
                ),
                WaitlistForm(),
              ],
            ),
            div(
              classes:
                  'mt-6 flex items-center justify-center space-x-4 text-sm',
              [
                a(
                  href: '#demo',
                  classes:
                      'text-rose-400 hover:text-rose-300 transition-colors',
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
