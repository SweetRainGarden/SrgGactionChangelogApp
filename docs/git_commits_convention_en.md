# Git Commit Convention

This repository follows a strict commit message convention to make the commit history readable and easy to understand. Please adhere to the following guidelines when crafting your commit messages.

## Commit Message Convention

Each commit message should have a specific prefix, which indicates the type of changes made in the commit. Here is the list of supported prefixes:

1. **feat**: A new feature implemented in the code.
2. **fix**: A bug fix in the existing code.
3. **ci**: Changes related to Continuous Integration and build systems.
4. **chore**: Regular code maintenance, such as refactoring, updating dependencies, or other tasks that don't modify the source code.
5. **docs**: Documentation updates, such as comments or README files.
6. **test**: Adding or modifying test cases, or fixing test-related issues.
7. **new_api**: Introducing new APIs or changes to existing APIs.
8. **break_api**: Breaking changes to existing APIs that may impact users.
9. **deprecate_api**: Deprecating existing APIs, usually followed by a future removal date.

## Commit Message Format

The commit message should follow this format: `<prefix>: <short description of changes>`

- `<prefix>`: One of the supported prefixes listed above.
- `<short description of changes>`: A brief description of the changes made in the commit.

## Examples

Here are some examples of commit messages following the convention:

```
feat: add search functionality to the user list
fix: resolve memory leak in the caching system
docs: update README with git commit convention
test: increase coverage for the authentication module
new_api: add new endpoint for retrieving user statistics
break_api: remove deprecated user login method
deprecate_api: mark old search API as deprecated, to be removed in v3.0.0
```

Please ensure that you follow this commit message convention to keep the repository maintainable and easy to navigate.