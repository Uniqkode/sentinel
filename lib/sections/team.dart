import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../config.dart';
import '../components/layout/section_wrapper.dart';

class TeamSection extends StatelessComponent {
  const TeamSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'team',
      children: [
        div(classes: 'scroll-reveal text-center mb-16', [
          p(
            classes:
                'text-rose-500 font-semibold text-sm uppercase tracking-wider mb-3',
            [Component.text('Team')],
          ),
          h2(
            classes:
                'text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-6',
            [Component.text('Meet the Team')],
          ),
          p(
            classes: 'text-slate-400 text-lg max-w-2xl mx-auto',
            [
              Component.text(
                'Experienced leaders building the future of autonomous API security.',
              ),
            ],
          ),
        ]),
        div(
          classes:
              'stagger-group grid grid-cols-1 md:grid-cols-2 gap-8 max-w-3xl mx-auto',
          [
            for (final member in SiteConfig.team)
              _TeamMember(
                imageUrl: member.imageUrl,
                name: member.name,
                role: member.role,
                bio: member.bio,
                linkedin: member.linkedin,
                twitter: member.twitter,
                facebook: member.facebook,
              ),
          ],
        ),
      ],
    );
  }
}

class _TeamMember extends StatelessComponent {
  const _TeamMember({
    required this.imageUrl,
    required this.name,
    required this.role,
    required this.bio,
    required this.linkedin,
    this.twitter,
    this.facebook,
  });

  final String imageUrl;
  final String name;
  final String role;
  final String bio;
  final String linkedin;
  final String? twitter;
  final String? facebook;

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'stagger-item glow-card text-center p-8 rounded-2xl bg-slate-900/50 border border-slate-800 hover:border-rose-500/20 transition-all',
      [
        img(
          src: imageUrl,
          alt: name,
          classes: 'w-28 h-28 rounded-full mx-auto mb-5 object-cover border-2 border-rose-500/20',
          attributes: {'loading': 'eager'},
        ),
        h3(
          classes: 'text-xl font-bold text-white mb-1',
          [Component.text(name)],
        ),
        p(
          classes: 'text-rose-400 text-sm font-semibold mb-3',
          [Component.text(role)],
        ),
        p(
          classes:
              'text-slate-400 text-sm leading-relaxed mb-6 max-w-xs mx-auto',
          [Component.text(bio)],
        ),
        div(classes: 'flex items-center justify-center space-x-4', [
          a(
            href: linkedin,
            classes:
                'text-slate-500 hover:text-rose-400 transition-colors',
            [
              img(src: '/images/logo-linkedin.svg', alt: 'LinkedIn', classes: 'w-5 h-5'),
            ],
          ),
          if (twitter != null)
            a(
              href: twitter!,
              classes:
                  'text-slate-500 hover:text-rose-400 transition-colors',
              [
                img(src: '/images/logo-x.svg', alt: 'X', classes: 'w-5 h-5'),
              ],
            ),
          if (facebook != null)
            a(
              href: facebook!,
              classes:
                  'text-slate-500 hover:text-rose-400 transition-colors',
              [
                span(classes: 'text-lg text-slate-500 hover:text-rose-400 transition-colors', [Component.text('f')]),
              ],
            ),
        ]),
      ],
    );
  }
}
