import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../../config.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(
      classes:
          'bg-slate-950 border-t border-slate-800/50 pt-16 pb-8',
      [
        div(classes: 'max-w-7xl mx-auto px-4 sm:px-6 lg:px-8', [
          div(
            classes:
                'grid grid-cols-1 md:grid-cols-4 gap-8 mb-12',
            [
              _buildBrandColumn(),
              _buildProductColumn(),
              _buildLegalColumn(),
              _buildSocialColumn(),
            ],
          ),
          _buildBottomBar(),
        ]),
      ],
    );
  }

  Component _buildBrandColumn() {
    return div(classes: 'md:col-span-1', [
      div(classes: 'flex items-center space-x-2.5 mb-4', [
        img(
          src: '/images/shield-logo.svg',
          alt: SiteConfig.productName,
          classes: 'w-8 h-8',
          attributes: {'width': '32', 'height': '32'},
        ),
        span(
          classes: 'text-xl font-bold text-white tracking-tight',
          [Component.text(SiteConfig.productName)],
        ),
      ]),
      p(
        classes: 'text-slate-400 text-sm leading-relaxed',
        [Component.text(SiteConfig.tagline)],
      ),
    ]);
  }

  Component _buildProductColumn() {
    return div([
      h4(
        classes: 'text-sm font-semibold text-white uppercase tracking-wider mb-4',
        [Component.text('Product')],
      ),
      ul(classes: 'space-y-3', [
        _footerLink('Features', '#features'),
        _footerLink('Technology', '#technology'),
        _footerLink('Roadmap', '#roadmap'),
        _footerLink('Pricing', '#pricing'),
        _footerLink('Request Demo', '#demo'),
      ]),
    ]);
  }

  Component _buildLegalColumn() {
    return div([
      h4(
        classes: 'text-sm font-semibold text-white uppercase tracking-wider mb-4',
        [Component.text('Legal')],
      ),
      ul(classes: 'space-y-3', [
        _footerLink('Privacy Policy', '/privacy-policy'),
        _footerLink('Terms of Use', '/terms-of-use'),
        _footerLink('Security', '#'),
        _footerLink('Contact', '#contact'),
      ]),
    ]);
  }

  Component _buildSocialColumn() {
    return div([
      h4(
        classes: 'text-sm font-semibold text-white uppercase tracking-wider mb-4',
        [Component.text('Connect')],
      ),
      ul(classes: 'space-y-3', [
        a(
          href: SiteConfig.twitterUrl,
          classes: 'text-slate-400 hover:text-rose-400 transition-colors flex items-center space-x-2',
          [
            img(src: '/images/logo-x.svg', alt: 'X', classes: 'w-4 h-4'),
            span([Component.text('X / Twitter')]),
          ],
        ),
        a(
          href: SiteConfig.linkedinUrl,
          classes: 'text-slate-400 hover:text-rose-400 transition-colors flex items-center space-x-2',
          [
            img(src: '/images/logo-linkedin.svg', alt: 'LinkedIn', classes: 'w-4 h-4'),
            span([Component.text('LinkedIn')]),
          ],
        ),
        a(
          href: SiteConfig.facebookUrl,
          classes: 'text-slate-400 hover:text-rose-400 transition-colors flex items-center space-x-2',
          [
            span([Component.text('Facebook')]),
          ],
        ),
      ]),
    ]);
  }

  Component _footerLink(String text, String href) {
    return li([
      a(
        href: href,
        classes: 'text-slate-400 hover:text-rose-400 text-sm transition-colors',
        [Component.text(text)],
      ),
    ]);
  }

  Component _buildBottomBar() {
    return div(
      classes:
          'border-t border-slate-800/50 pt-8 mt-8 flex flex-col md:flex-row items-center justify-between',
      [
        p(classes: 'text-slate-500 text-sm', [
          Component.text('\u00a9 2026 ${SiteConfig.companyName}. All rights reserved.'),
        ]),
        div(classes: 'flex items-center space-x-6', [
          a(
            href: '/privacy-policy',
            classes: 'text-slate-500 hover:text-slate-300 text-sm',
            [Component.text('Privacy')],
          ),
          a(
            href: '/terms-of-use',
            classes: 'text-slate-500 hover:text-slate-300 text-sm',
            [Component.text('Terms')],
          ),
        ]),
      ],
    );
  }
}
