# SrgActionChangelogAndroid

**Description:** This Github action automatically collects changelogs from pull requests and commit messages, enforces Jira ticket and commit message policies, and exports Jira tickets and changelog files.

**Inputs:**
- `enforce_jira_policy`: (Optional, default: 'true') Enforce Jira policy
- `enforce_commit_policy`: (Optional, default: 'true') Enforce commit policy
- `jira_domain`: (Required) The company Jira domain, e.g., 'srgxxxx.atlassian.net'
- `gh_token`: (Required) A Github token with read permission for repositories
- `pattern_commit_convention`: (Optional, default: "feat|fix|ci|chore|docs|new_api|break_api|deprecate_api") The commit message convention pattern
- `pattern_jira_tickets`: (Optional, default: "([a-z]{2,}-)([0-9]+)") Regex for extracting Jira ticket
- `google_sheet_token`: (Required) Google sheet token
- `google_sheet_id`: (Required) Google sheet id
- `google_sheet_client_email`: (Required) Google sheet client email
- `google_sheet_work_sheet_title`: (Required) Google sheet work sheet title

**Outputs:**
- `jira_ticket_list`: The Jira tickets list from pull request and commit message
- `srg_changelog_file`: The file that contains changelog of the current pull request

  
 ## Commit message convention:
 - feat
 - fix
 - ci
 - chore
 - docs 
 - test
 - new_api
 - break_api
 - deprecate_api
 
 ## Learn by diff:
- [ fix if statement for github.event.pull_request.merged](https://github.com/SweetRainGarden/SrgGactionChangelogApp/pull/95/files)
