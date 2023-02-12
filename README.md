# pre-commit hooks

A collection of organization-maintained pre-commit hooks.

```yaml
- repo: https://github.com/premiscale/pre-commit-hooks
    rev: <latest rev>
    hooks:
      - id: msg-issue-prefix
```

## Hooks

- `msg-issue-prefix` - prefix Git commit messages with the branch name.