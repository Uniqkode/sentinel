import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class TermsOfUsePage extends StatelessComponent {
  const TermsOfUsePage({super.key});

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      div(classes: 'pt-24', []),
      SectionWrapper(
        dark: true,
        children: [
          div(classes: 'max-w-3xl mx-auto', [
            h1(
              classes:
                  'text-4xl font-bold text-white mb-8',
              [Component.text('Terms of Use')],
            ),
            p(
              classes: 'text-slate-400 text-sm mb-8',
              [Component.text('Last updated: July 2026')],
            ),
            _Section(
              title: '1. Acceptance of Terms',
              content:
                  'By accessing or using the Sentinel platform and website, you agree to be bound by these Terms of Use. If you do not agree, do not use our services.',
            ),
            _Section(
              title: '2. Service Description',
              content:
                  'Sentinel provides AI-powered API security monitoring, including schema drift detection, credential leak scanning, and breaking change alerts. Services are provided on a subscription basis.',
            ),
            _Section(
              title: '3. User Responsibilities',
              content:
                  'You are responsible for maintaining the confidentiality of your account credentials, ensuring your API configurations are accurate, and complying with all applicable laws when using our services.',
            ),
            _Section(
              title: '4. Acceptable Use',
              content:
                  'You agree not to misuse our services, attempt unauthorized access, use the platform for illegal purposes, or interfere with the operation of the service.',
            ),
            IntellectualProperty(),
            _Section(
              title: '6. Service Availability',
              content:
                  'We strive to maintain high availability but do not guarantee uninterrupted service. We may perform maintenance and updates that temporarily affect availability.',
            ),
            _Section(
              title: '7. Limitation of Liability',
              content:
                  'Sentinel Labs shall not be liable for any indirect, incidental, special, or consequential damages arising from your use of the service, even if advised of the possibility of such damages.',
            ),
            _Section(
              title: '8. Termination',
              content:
                  'We may suspend or terminate your access to the service at any time for violation of these terms. You may terminate your account at any time by contacting us.',
            ),
            _Section(
              title: '9. Governing Law',
              content:
                  'These terms are governed by the laws of the applicable jurisdiction. Any disputes shall be resolved through binding arbitration.',
            ),
            _Section(
              title: '10. Contact',
              content:
                  'For questions about these Terms, contact us at hello@sentinelai.tech.',
            ),
          ]),
        ],
      ),
    ]);
  }
}

class _Section extends StatelessComponent {
  const _Section({required this.title, required this.content});

  final String title;
  final String content;

  @override
  Component build(BuildContext context) {
    return div(classes: 'mb-8', [
      h2(
        classes: 'text-xl font-semibold text-white mb-3',
        [Component.text(title)],
      ),
      p(
        classes: 'text-slate-400 leading-relaxed',
        [Component.text(content)],
      ),
    ]);
  }
}

class IntellectualProperty extends StatelessComponent {
  const IntellectualProperty({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'mb-8', [
      h2(
        classes: 'text-xl font-semibold text-white mb-3',
        [Component.text('5. Intellectual Property')],
      ),
      p(
        classes: 'text-slate-400 leading-relaxed',
        [
          Component.text(
            'All content, trademarks, and intellectual property on this website and the Sentinel platform are owned by Sentinel Labs. You may not reproduce, distribute, or create derivative works without our written permission.',
          ),
        ],
      ),
    ]);
  }
}
