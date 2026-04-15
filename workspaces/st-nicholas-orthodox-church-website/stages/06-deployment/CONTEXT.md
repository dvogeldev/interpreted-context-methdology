# Stage 06: Deployment/Launch

Deploy the website to production and monitor post-launch.

## Inputs

| Source | File/Location | Section/Scope | Why |
|--------|--------------|---------------|-----|
| Previous stage | `../05-testing-launch/output/` | Full file | Tested and validated website from Stage 5 |
| Universal coding rules | `../../../../shared/vibe-code-rules.md` | Full document | Enforce production-quality standards, git workflow, security, file size limits, and no-scope-creep rules |
| Reference | `../../../../shared/branding-guidelines.md` | Full file | Final logo and favicon files for production |
| Reference | `../../../../shared/content-policies.md` | Full file | Content policies for final validation |
| Reference | `../../../../skills/deployment/SKILL.md` | Full file | Deployment strategies and best practices |

## Process

1. Configure deployment target (DigitalOcean App Platform, Vercel, or Cloudflare Pages)
2. Set up environment variables for production (including plugin secrets)
3. Configure database deployment and connection
4. Set up media storage (R2 or platform-specific storage) with CDN
5. Configure CDN caching strategies for media assets
6. Install and configure SSL/TLS certificates
7. Configure DNS settings and monitor propagation
8. Implement health check and monitoring systems
9. Set up logging aggregation and analysis
10. Configure backup automation and verification
11. Test and verify rollback procedures
12. Validate plugin-specific deployment considerations:
    - Resend API key security and validation
    - Import/export tool access controls in production
    - R2 bucket permissions and CORS settings
    - Environment-specific configuration for plugins
13. Deploy website to production URL
14. Verify production environment is running and monitored
15. Confirm SSL/TLS certificates are active and valid
16. Validate domain is properly configured and resolving
17. Ensure monitoring and logging systems are operational
18. Verify backup systems are functioning
19. Publish launch announcement
20. Activate post-launch support plan
21. Establish performance metrics baseline
22. Activate error tracking and reporting systems
23. Verify all plugins functioning in production:
    - Resend sending emails successfully
    - Import/export working for data migrations
    - R2 storage serving media with proper CDN caching
24. Confirm theme switching persists across sessions
25. Validate historical timeline loading and displaying correctly
26. Confirm events displaying accurately in all views
27. Verify logo and favicon visible in browser tab
28. Ensure accessibility compliance (WCAG 2.2 AA) is maintained
29. Confirm SEO optimization and indexing by search engines
30. Validate fast loading times meet performance budgets
31. Ensure security against common vulnerabilities
32. Verify backup system is verified and automated
33. Confirm monitoring alerts are configured and tested

## Checkpoints

| After Step | Agent Presents | Human Decides |
|------------|---------------|---------------|
| 6 | SSL/TLS certificate installation | Whether certificates are properly installed and valid |
| 12 | Plugin-specific deployment validation | Whether Resend, Import/Export, and R2 configurations are correct |
| 18 | Backup systems verification | Whether backup systems are functioning correctly |
| 24 | Theme switching persistence validation | Whether theme switching works across sessions |
| 30 | Performance budget validation | Whether fast loading times meet targets |
| 33 | Monitoring alerts configuration | Whether alerts are properly configured and tested |

## Audit

| Check | Pass Condition |
|-------|---------------|
| Deployment success | Website deployed at production URL and accessible |
| Environment running | Production environment running and monitored |
| SSL/TLS certificates | Certificates active and valid |
| Domain configuration | Domain properly configured and resolving |
| Monitoring/logging | Systems operational and functioning |
| Backup systems | Systems functioning and verified |
| Launch announcement | Published and communicated |
| Post-launch support | Plan activated and ready |
| Performance baseline | Metrics established and tracked |
| Error tracking | Systems active and reporting |
| Plugins in production: |
| - Resend emails | Sending emails successfully |
| - Import/export | Working for data migrations |
| - R2 storage | Serving media with proper CDN caching |
| Theme switching | Persisting across user sessions |
| Historical timeline | Loading and displaying correctly |
| Events display | Accurate in all views (calendar, list, map) |
| Logo/favicon | Visible in browser tab and site |
| Accessibility compliance | WCAG 2.2 AA maintained |
| SEO optimization | Optimized and indexed by search engines |
| Performance budgets | Fast loading times met (LCP, FID, CLS) |
| Security | Protected against common vulnerabilities |
| Backup system | Verified and automated |
| Monitoring alerts | Configured and tested |

## Outputs

| Artifact | Location | Format |
|----------|----------|--------|
| Deployed production website | `stages/06-deployment/output/` | Live website at production URL with monitoring enabled |