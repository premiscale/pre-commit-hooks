# pre-commit hooks

A collection of organization-maintained pre-commit hooks.

```yaml
- repo: https://github.com/premiscale/pre-commit-hooks
    rev: <latest rev>
    hooks:
      - id: msg-issue-prefix
      - id: cloud-init-schema
        args:
          - user-data1
          - user-data2
      - id: gunicorn-config-schema
```

## Hooks

- `msg-issue-prefix` - prefix Git commit messages with the branch name.
- `cloud-init-schema` - validate cloud-init user data files in a repository.
- `gunicorn-config-schema` - validate gunicorn config files.