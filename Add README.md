# Cursor Control Skill for OpenClaw

这是一个OpenClaw skill，用于在macOS上控制和自动化Cursor编辑器。

## 功能

- ✅ 打开文件和文件夹
- ✅ 打开当前工作目录
- ✅ 打开Git仓库根目录
- ✅ 打开最近修改的文件
- ✅ 完整的错误处理
- ✅ 批量文件操作

## 安装

1. 下载此skill
2. 将其放置到你的OpenClaw工作空间
3. 确保Cursor.app已安装在/Applications/目录

## 使用方法

### 基本命令

```bash
# 打开当前目录
./scripts/cursor_control.sh current

# 打开特定文件
./scripts/cursor_control.sh open README.md

# 打开Git仓库根目录
./scripts/cursor_control.sh git

# 打开最近修改的文件
./scripts/cursor_control.sh recent 5
```

### 在OpenClaw中使用

当你的OpenClaw agent检测到需要调用Cursor时，会自动使用此skill。

## 要求

- macOS系统
- Cursor.app安装在/Applications/Cursor.app
- Bash环境

## 文件结构

```
cursor-control/
├── SKILL.md          # Skill文档
└── scripts/
    └── cursor_control.sh  # 主要控制脚本
```

## 贡献

欢迎提交Issue和Pull Request！

## 许可证

MIT License
