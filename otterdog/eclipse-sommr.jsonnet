local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-sommr') {
  settings+: {
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('sommr') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Automotive sommr project",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "read",
      },
    },
    orgs.newRepo('sommr-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Automotive sommr project website.",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "read",
      },
    },
  ],
}
