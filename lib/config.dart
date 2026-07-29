/// Sentinel Website Configuration
///
/// Edit this file to update contact details, team members, domain, and branding.
/// All components import from here so you only need to change values in one place.
class SiteConfig {
  SiteConfig._();

  // ─── Domain & Branding ───────────────────────────────────────
  static const String domain = 'sentinelai.tech';
  static const String siteUrl = 'https://$domain';
  static const String companyName = 'Sentinel Labs';
  static const String productName = 'Sentinel';
  static const String tagline = 'Autonomous AI security for API-first teams.';

  // ─── Contact Information ─────────────────────────────────────
  static const String contactEmail = 'hello@$domain';
  static const String contactPhone = '09067654698';
  static const String contactAddress = 'Trans-Ekulu Enugu';
  static const String contactResponseTime = 'Within 24 hours';
  static const String contactSupportNote = 'Available for all plans';

  // ─── Form Submission ─────────────────────────────────────────
  static const String formsubmitEmail = 'hello@$domain';
  static const String formRedirectBase = siteUrl;

  // ─── Social Links ────────────────────────────────────────────
  static const String twitterUrl = 'https://x.com/Ugochukwu_Zilla';
  static const String linkedinUrl = 'https://linkedin.com/company/sentinelai';
  static const String facebookUrl = 'https://www.facebook.com/osumpaul.ugochukwu';

  // ─── SEO / Meta ──────────────────────────────────────────────
  static const String metaTitle = '$productName \u2014 AI-Powered API Security Agent';
  static const String metaDescription =
      'Detect API schema drift, shadow endpoints, and credential leaks before production. AI security for backend teams.';

  // ─── Team Members ────────────────────────────────────────────
  static const List<TeamMember> team = [
    TeamMember(
      name: 'Osum Ugochukwu Paul',
      role: 'CEO & Founder',
      bio: 'Visionary leader and security engineer dedicated to building autonomous AI solutions that protect API-first teams from regression attacks and data leaks.',
      imageUrl: '/images/osum.png',
      linkedin: 'https://www.linkedin.com/in/osum-ugochukwu-b7240114a',
      twitter: 'https://x.com/Ugochukwu_Zilla',
      facebook: 'https://www.facebook.com/osumpaul.ugochukwu',
    ),
    TeamMember(
      name: 'Ibrahim Abdullahi',
      role: 'Chief Technology Officer',
      bio: 'Experienced engineer leading AI model development, cloud infrastructure, and GPU-accelerated inference systems for real-time security analysis.',
      imageUrl: '/images/male2.png',
      linkedin: 'https://www.linkedin.com/in/ibrahim-abdullahi-sentinel',
    ),
  ];
}

/// Data class for team member information.
class TeamMember {
  const TeamMember({
    required this.name,
    required this.role,
    required this.bio,
    required this.imageUrl,
    required this.linkedin,
    this.twitter,
    this.facebook,
  });

  final String name;
  final String role;
  final String bio;
  final String imageUrl;
  final String linkedin;
  final String? twitter;
  final String? facebook;
}
