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
                'text-cyan-400 font-semibold text-sm uppercase tracking-wider mb-3',
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
                'Our team includes software developers, AI engineers, product designers, and domain experts building the future of API security.',
              ),
            ],
          ),
        ]),
        div(
          classes:
              'stagger-group grid grid-cols-1 md:grid-cols-3 gap-8 max-w-4xl mx-auto',
          [
            for (final member in SiteConfig.team)
              _TeamMember(
                imageUrl: member.imageUrl,
                name: member.name,
                role: member.role,
                bio: member.bio,
                linkedin: member.linkedin,
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
  });

  final String imageUrl;
  final String name;
  final String role;
  final String bio;
  final String linkedin;

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'stagger-item glow-card text-center p-6 rounded-2xl bg-slate-900/50 border border-slate-800',
      [
        img(
          src: imageUrl,
          alt: name,
          classes: 'w-20 h-20 rounded-full mx-auto mb-4 object-cover border-2 border-slate-700',
          attributes: {'loading': 'lazy'},
        ),
        h3(
          classes: 'text-lg font-semibold text-white',
          [Component.text(name)],
        ),
        p(
          classes: 'text-cyan-400 text-sm font-medium mb-3',
          [Component.text(role)],
        ),
        p(
          classes:
              'text-slate-400 text-sm leading-relaxed mb-4',
          [Component.text(bio)],
        ),
        a(
          href: linkedin,
          classes:
              'inline-flex items-center space-x-2 text-sm text-slate-500 hover:text-cyan-400 transition-colors',
          [
            img(src: '/images/logo-linkedin.svg', alt: 'LinkedIn', classes: 'w-4 h-4'),
            span([Component.text('LinkedIn')]),
          ],
        ),
      ],
    );
  }
}
