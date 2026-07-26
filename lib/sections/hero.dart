import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/ui/button.dart';
import '../components/ui/badge.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'hero',
      classes:
          'relative min-h-screen flex items-center justify-center bg-slate-950 overflow-hidden pt-20',
      [
        _buildBackground(),
        div(
          classes:
              'relative z-10 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center scroll-reveal',
          attributes: {'data-delay': '200'},
          [
            Badge(text: 'Now in Private Beta'),
            div(classes: 'mt-6', []),
            h1(
              classes:
                  'text-4xl sm:text-5xl md:text-6xl lg:text-7xl font-bold text-white leading-tight max-w-5xl mx-auto scroll-reveal',
              attributes: {'data-delay': '100'},
              [
                Component.text('Autonomous '),
                span(classes: 'text-rose-400', [Component.text('AI Security')]),
                Component.text(' Agent for API Regression & Data Leak Detection'),
              ],
            ),
            p(
              classes:
                  'mt-6 text-lg md:text-xl text-slate-400 max-w-3xl mx-auto leading-relaxed',
              [
                Component.text(
                  'Detect API schema drift before production. Cut vulnerability audit times from weeks to minutes. Achieve 99.9% detection accuracy on exposed sensitive credentials.',
                ),
              ],
            ),
            div(
              classes: 'mt-10 flex flex-col sm:flex-row gap-4 justify-center',
              [
                SentinelButton(label: 'Request Demo', href: '#demo'),
                SentinelButton(
                  label: 'Join Waitlist',
                  href: '#final-cta',
                  outline: true,
                ),
              ],
            ),
            img(
              src: 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=1200&h=750&fit=crop&q=80',
              alt: 'Sentinel Dashboard - API Security Monitoring',
              classes: 'mx-auto mt-12 rounded-2xl shadow-lg shadow-rose-500/10 border border-slate-800 max-w-4xl w-full',
              attributes: {'loading': 'eager'},
            ),
            div(
              classes:
                  'mt-8 flex items-center justify-center space-x-2 text-slate-500 text-sm',
              [
                div(
                  classes:
                      'w-2 h-2 rounded-full bg-rose-400 animate-pulse',
                  [],
                ),
                span([Component.text('Trusted by backend teams building at scale')]),
              ],
            ),
          ],
        ),
        _buildGridOverlay(),
      ],
    );
  }

  Component _buildBackground() {
    return div(
      classes: 'absolute inset-0',
      [
        img(
          src: 'https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=1920&h=1080&fit=crop&q=80',
          alt: '',
          classes: 'hero-bg-image absolute inset-0 w-full h-full object-cover opacity-40 scale-105',
          attributes: {'loading': 'eager', 'aria-hidden': 'true'},
        ),
        div(
          classes: 'absolute inset-0 bg-gradient-to-b from-slate-950/60 via-slate-950/70 to-slate-950',
          [],
        ),
        div(
          classes: 'absolute inset-0 bg-gradient-to-tr from-rose-500/5 via-transparent to-rose-500/5 pointer-events-none',
          [],
        ),
      ],
    );
  }

  Component _buildGridOverlay() {
    return div(
      classes:
          'absolute inset-0 opacity-[0.03] pointer-events-none',
      [
        div(
          classes: 'absolute inset-0',
          [
            Component.element(
              tag: 'style',
              children: [
                Component.text(
                  'background-image: linear-gradient(rgba(244,63,94,0.3) 1px, transparent 1px), linear-gradient(90deg, rgba(244,63,94,0.3) 1px, transparent 1px); background-size: 60px 60px;',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
