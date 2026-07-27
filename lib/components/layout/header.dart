import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../../config.dart';
import '../ui/button.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return header(
      classes:
          'fixed top-0 left-0 right-0 z-50 bg-slate-950/80 backdrop-blur-xl border-b border-slate-800/50',
      [
        div(
          classes:
              'flex items-center justify-between h-16 md:h-20 px-4 sm:px-6 lg:px-8',
          [
            _buildLogo(),
            _buildDesktopNav(),
          ],
        ),
        _buildDrawerOverlay(),
      ],
    );
  }

  Component _buildLogo() {
    return a(href: '/', classes: 'flex items-center space-x-2.5', [
      img(
        src: '/images/shield-logo.svg',
        alt: SiteConfig.productName,
        classes: 'w-9 h-9',
        attributes: {'width': '36', 'height': '36'},
      ),
      span(
        classes: 'text-xl font-bold text-white tracking-tight',
        [Component.text(SiteConfig.productName)],
      ),
    ]);
  }

  Component _buildDesktopNav() {
    final links = [
      ('Features', '#features'),
      ('Technology', '#technology'),
      ('Roadmap', '#roadmap'),
      ('Team', '#team'),
      ('Pricing', '#pricing'),
    ];

    return div(classes: 'flex items-center', [
      nav(classes: 'hidden md:flex items-center space-x-8', [
        for (final link in links)
          a(
            href: link.$2,
            classes:
                'text-sm text-slate-400 hover:text-rose-400 transition-colors duration-200',
            [Component.text(link.$1)],
          ),
      ]),
      div(
        classes:
            'hidden md:flex items-center space-x-3 ml-8 border-l border-slate-800 pl-8',
        [
          a(
            href: '#contact',
            classes:
                'text-sm text-slate-400 hover:text-rose-400 transition-colors',
            [Component.text('Contact')],
          ),
          SentinelButton(label: 'Request Demo', href: '#demo', small: true),
        ],
      ),
      _buildHamburgerButton(),
    ]);
  }

  Component _buildHamburgerButton() {
    return Component.element(
      tag: 'label',
      attributes: {'for': 'mobile-menu-toggle'},
      classes:
          'md:hidden cursor-pointer flex flex-col items-center justify-center w-10 h-10 rounded-lg hover:bg-white/10 transition-colors',
      children: [
        Component.element(
          tag: 'span',
          id: 'bar-1',
          classes:
              'hamburger-bar block w-5 h-[2px] bg-white rounded-full transition-all duration-300',
        ),
        Component.element(
          tag: 'span',
          id: 'bar-2',
          classes:
              'hamburger-bar block w-5 h-[2px] bg-white rounded-full transition-all duration-300 my-1',
        ),
        Component.element(
          tag: 'span',
          id: 'bar-3',
          classes:
              'hamburger-bar block w-5 h-[2px] bg-white rounded-full transition-all duration-300',
        ),
      ],
    );
  }

  Component _buildDrawerOverlay() {
    final links = [
      ('Features', '#features'),
      ('Technology', '#technology'),
      ('Roadmap', '#roadmap'),
      ('Team', '#team'),
      ('Pricing', '#pricing'),
      ('Demo', '#demo'),
      ('Contact', '#contact'),
    ];

    return Component.fragment([
      Component.element(
        tag: 'input',
        attributes: {'type': 'checkbox', 'id': 'mobile-menu-toggle'},
        classes: 'hidden',
      ),
      Component.element(
        tag: 'div',
        id: 'mobile-menu-overlay',
        classes: 'md:hidden fixed inset-0 bg-black/60 z-[55] hidden',
      ),
      Component.element(
        tag: 'div',
        id: 'mobile-menu',
        classes:
            'md:hidden fixed top-0 right-0 bottom-0 w-80 max-w-[85vw] z-[60] bg-slate-950 border-l border-rose-500/20 shadow-2xl shadow-rose-500/5 overflow-y-auto transform translate-x-full transition-transform duration-300',
        children: [
          div(classes: 'flex items-center justify-between p-5 border-b border-slate-800', [
            div(classes: 'flex items-center space-x-2', [
              img(
                src: '/images/shield-logo.svg',
                alt: SiteConfig.productName,
                classes: 'w-7 h-7',
                attributes: {'width': '28', 'height': '28'},
              ),
              span(
                classes: 'text-lg font-bold text-white',
                [Component.text(SiteConfig.productName)],
              ),
            ]),
            Component.element(
              tag: 'label',
              attributes: {'for': 'mobile-menu-toggle'},
              classes:
                  'cursor-pointer p-2 rounded-lg hover:bg-white/10 transition-colors',
              children: [
                Component.element(
                  tag: 'span',
                  classes: 'block w-5 h-[2px] bg-white rotate-45 translate-y-[3px]',
                ),
                Component.element(
                  tag: 'span',
                  classes: 'block w-5 h-[2px] bg-white -rotate-45 -translate-y-[1px]',
                ),
              ],
            ),
          ]),
          nav(classes: 'p-5 space-y-2', [
            for (final link in links)
              a(
                href: link.$2,
                classes:
                    'block px-5 py-3.5 text-slate-300 hover:text-rose-400 hover:bg-white/5 hover:border hover:border-rose-500/20 rounded-lg transition-all duration-200 text-base font-medium',
                [Component.text(link.$1)],
              ),
          ]),
          div(classes: 'p-5 border-t border-slate-800', [
            div(classes: 'mb-3', [
              SentinelButton(label: 'Request Demo', href: '#demo'),
            ]),
            p(
              classes: 'text-xs text-slate-500 text-center',
              [Component.text('hello@${SiteConfig.domain}')],
            ),
          ]),
        ],
      ),
    ]);
  }
}
