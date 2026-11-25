# 日常使用指南

> 面向已经装好系统的日常使用。完整快捷键速查见根目录 README；本篇按场景说明常用操作。

## 快捷键按场景

### 启动应用

| 键位 | 动作 |
| --- | --- |
| `Super+Return` | 终端（kitty） |
| `Super+D` | 应用启动器 |
| `Super+E` | emoji 选择器 |
| `Super+0` | 电源菜单 |
| `Super+Ctrl+C` / `+F` | Chrome / Firefox |
| `Super+Ctrl+R` / `+P` / `+G` | RubyMine / PyCharm / GoLand |
| `Super+F3` | 文件管理器（pcmanfm） |
| `Super+T` | 查当前选中的词（goldendict） |

登录时会自动打开 Chrome（工作区 3）和终端（工作区 2），不抢当前焦点。

goldendict 登录后驻留托盘、不显示主窗口；若在别的机器上登录后仍会弹出，在 GoldenDict「首选项 → 界面」中勾选「启动至系统托盘」，并确保「启用系统托盘图标」已开启。

### 窗口管理

| 键位 | 动作 |
| --- | --- |
| `Super+H/J/K/L`（或方向键） | 切换焦点 |
| `Super+Shift+H/J/K/L`（或方向键） | 移动窗口 |
| `Super+Shift+Q` | 关闭窗口 |
| `Super+F` | 全屏 |
| `Super+Shift+Space` | 浮动/平铺切换 |
| `Super+W` | 并入/拆出 tab 组 |
| `Super+Shift+V` / `Super+;` | 预设下一次分割方向：向下 / 向右 |
| `Super+Shift+S` | 切换布局：dwindle ↔ scrolling |
| `Super+左键拖动` / `Super+右键拖动` | 移动 / 调整窗口 |

调窗口大小：`Super+=` / `Super+-` 调宽，`Super+Shift+=` / `Super+Shift+-` 调高，可按住连发；`Super+R` 进入调整模式，`H/J/K/L` 调整，`Enter` 或 `Esc` 退出。

### 工作区

| 键位 | 动作 |
| --- | --- |
| `Super+1..9` | 切换到工作区 |
| `Super+Shift+1..9` | 把窗口移到工作区并跟随 |
| `Alt+Tab` | 回到上一个工作区 |
| `Super+Ctrl+←/→` | 相邻工作区 |
| `Super+滚轮` | 逐个切换工作区 |

便签窗口：`Super+Q` DeepSeek、``Super+` `` Kimi、`Alt+W` 微信。按一次从顶部滑出，再按一次隐藏；窗口常驻，不关闭。DeepSeek/Kimi 首次呼出时才启动，微信未运行时会直接启动。

### 截图与取色

| 键位 | 动作 |
| --- | --- |
| `Super+P` | 框选区域 → 标注 → 存到 `~/Pictures/satty-<时间戳>.png` |
| `Print` | 全屏截图，存到 `~/Pictures/screenshot-<时间戳>.png` |
| `Shift+Print` | 框选区域，存到 `~/Pictures/screenshot-<时间戳>.png` |
| `Super+Shift+P` | 取色，自动复制十六进制值 |

截图流程见下文[截图工作流](#截图工作流)。

### 屏幕录制

| 键位 | 动作 |
| --- | --- |
| `F9` | 开始 / 停止 OBS 录制 |

OBS 需要在运行中。录像默认存到 `~/`，按时间戳命名。

### 剪贴板

| 键位 | 动作 |
| --- | --- |
| `Super+C` / `Super+V` | 复制 / 粘贴 |
| `Super+X` | 剪切 |
| `Super+O` | 剪贴板历史 |

### 系统控制

| 键位 | 动作 |
| --- | --- |
| `Super+Ctrl+L` | 锁屏 |
| `Super+Shift+E` | 退出 Hyprland |
| `Super+M` | 显示/隐藏状态栏 |
| `Super+Shift+D` | 重启通知服务 |
| `Super+Shift+C` | 重载 Hyprland 配置 |
| 音量/亮度/播放键 | 多媒体键 |

空闲时会自动锁屏、关屏；锁屏状态下音量和亮度仍可调，按住可连续调节。Caps Lock 映射为 Ctrl。

## waybar 状态栏

左边是工作区和窗口标题，右边依次是系统状态、时钟、天气和托盘。

| 模块 | 显示内容 | 点击行为 |
| --- | --- | --- |
| workspaces | 工作区编号 | 见下方已知问题 |
| window | 焦点窗口标题 | — |
| clock | 日期时间 | 打开/关闭农历日历 |
| weather | 城市天气 | 打开/关闭城市列表 |
| disk | 根分区剩余空间 | — |
| network | 当前 IP | 切换显示格式 |
| cpu | 使用率 | — |
| memory | 已用/总量 | 切换显示 swap |
| pulseaudio | 音量 | 打开 pavucontrol |
| tray | 托盘图标 | — |

已知问题：点击工作区编号不能切换，请用 `Super+数字`；waybar 上游修复后会恢复。

点击天气模块可以选城市，选择后立即生效。点击时钟打开农历月历，含节日、节气与调休标记；支持按钮、方向键或滚轮翻月，点击某天复制日期。两个弹层都可以按 `Esc`、点击卡片外或再点一次模块关闭。

## 输入法（fcitx5 + rime-ice）

- `Ctrl+Space` 切换中英文。默认是英文键盘 + 雾凇拼音；想改键位用 `fcitx5-configtool`。
- 从中文切到英文时会提交已输入的原始字母，不会选第一个候选词。
- 主题是 catppuccin-mocha-blue。
- 用户词库在 `~/.local/share/fcitx5/rime/*.userdb`；换机器时拷过去可保留词频。

## 截图工作流

`Super+P` 的流程：

1. 框选区域（`Esc` 取消）
2. satty 打开标注界面：箭头、矩形、文字、马赛克等
3. 保存或复制都会存到 `~/Pictures/satty-<时间戳>.png`

所有截图按时间戳命名，集中在 `~/Pictures/`。

## 笔记 scratchpad

`Super+N` 打开笔记列表：

- 笔记存放在 `~/.scratchpads/*.md`，按修改时间倒序排列。
- 第一行是"新建"，回车创建新笔记。
- 选中已有笔记回车，在浮动窗口里用 nvim 打开。
- `Ctrl+D` 删除笔记，会再确认一次。
