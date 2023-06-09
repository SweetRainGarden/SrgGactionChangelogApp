# Git 提交规范

本仓库遵循严格的提交信息规范，以使提交历史易于阅读和理解。在编写提交信息时，请遵循以下准则。

## 提交信息规范

每个提交信息应该有一个特定的前缀，表示提交中所做更改的类型。以下是支持的前缀列表：

1. **feat**: 代码中实现的新功能。
2. **fix**: 现有代码中的错误修复。
3. **ci**: 与持续集成和构建系统相关的更改。
4. **chore**: 常规代码维护，如重构、更新依赖项或其他不修改源代码的任务。
5. **docs**: 文档更新，如注释或 README 文件。
6. **test**: 添加或修改测试用例，或修复与测试相关的问题。
7. **new_api**: 引入新 API 或对现有 API 进行更改。
8. **break_api**: 对现有 API 的破坏性更改，可能影响用户。
9. **deprecate_api**: 弃用现有 API，通常后跟未来的删除日期。

## 提交信息格式

提交信息应遵循以下格式：`<prefix>: <changes 的简短描述>`

- `<prefix>`: 上面列出的支持的前缀之一。
- `<changes 的简短描述>`: 对提交中所做更改的简要描述。

## 示例

以下是遵循规范的提交信息示例：

```
feat: 添加用户列表搜索功能
fix: 解决缓存系统中的内存泄漏问题
docs: 更新 README，添加 Git 提交规范
test: 提高身份验证模块的测试覆盖率
new_api: 添加新端点，用于检索用户统计信息
break_api: 删除已弃用的用户登录方法
deprecate_api: 将旧搜索 API 标记为弃用，将在 v3.0.0 中删除
```

请确保遵循此提交信息规范，以保持仓库的可维护性和易于导航。