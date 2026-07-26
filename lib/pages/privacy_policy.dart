import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/layout/section_wrapper.dart';

class PrivacyPolicyPage extends StatelessComponent {
  const PrivacyPolicyPage({super.key});

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
              [Component.text('Privacy Policy')],
            ),
            p(
              classes: 'text-slate-400 text-sm mb-8',
              [Component.text('Last updated: July 2026')],
            ),
            _Section(
              title: '1. Introduction',
              content:
                  'Sentinel Labs ("we," "our," or "us") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website and use our services.',
            ),
            _Section(
              title: '2. Information We Collect',
              content:
                  'We may collect information you provide directly, including your name, email address, company name, and API configuration data when you sign up for our services or contact us.',
            ),
            _Section(
              title: '3. How We Use Your Information',
              content:
                  'We use the information we collect to provide and improve our services, send technical alerts and notifications, respond to inquiries, and ensure the security of our platform.',
            ),
            _Section(
              title: '4. Data Storage & Security',
              content:
                  'Your data is stored securely using AWS cloud infrastructure with encryption at rest and in transit. We implement industry-standard security practices including access controls, audit logging, and regular security assessments.',
            ),
            _Section(
              title: '5. API Traffic Data',
              content:
                  'Sentinel analyzes API traffic patterns for security monitoring. We do not store raw request/response payloads containing user data. Only metadata and schema information is retained for drift detection.',
            ),
            _Section(
              title: '6. Third-Party Services',
              content:
                  'We may use third-party services for analytics, cloud hosting, and communication. These services have access only to the minimum information necessary to perform their functions.',
            ),
            _Section(
              title: '7. Cookies',
              content:
                  'We use essential cookies to maintain your session and preferences. Analytics cookies may be used to understand how visitors interact with our website.',
            ),
            _Section(
              title: '8. Data Protection Rights',
              content:
                  'You have the right to access, correct, or delete your personal data. To exercise these rights, please contact us at hello@sentinelai.tech.',
            ),
            _Section(
              title: '9. Changes to This Policy',
              content:
                  'We may update this Privacy Policy from time to time. We will notify you of any material changes by posting the new policy on this page.',
            ),
            _Section(
              title: '10. Contact Us',
              content:
                  'If you have questions about this Privacy Policy, please contact us at hello@sentinelai.tech.',
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
        classes:
            'text-xl font-semibold text-white mb-3',
        [Component.text(title)],
      ),
      p(
        classes:
            'text-slate-400 leading-relaxed',
        [Component.text(content)],
      ),
    ]);
  }
}
