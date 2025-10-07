# ============================================
# AI Tools - 快速啟動 AI CLI 工具
# ============================================

# Claude AI CLI 快捷指令
# 用途：快速啟動 Claude Code CLI
# 範例：c "幫我寫一個函數"
alias c='claude'

# Gemini AI CLI 快捷指令（備用）
# 用途：當 Claude 掛掉時的替代方案
# 範例：g "解釋這段程式碼"
alias g='gemini'

# GitHub Copilot CLI 快捷指令
# 用途：GitHub Copilot 命令列工具（2025 新版 Public Preview）
# 範例：cop "如何用 git 刪除遠端分支"
alias cop='copilot'

# ============================================
# Utilities - 常用工具指令
# ============================================

# 清屏快捷指令（Windows 習慣）
# 用途：清空終端機畫面
# 等同於：clear 或 Ctrl+L
alias cls='clear'

# UUID 生成器（小寫 + 自動複製）
# 用途：生成小寫 UUID 並自動複製到剪貼簿，同時顯示在終端
# 說明：
#   - uuidgen: 生成 UUID
#   - tr -d '\n': 移除換行符號
#   - tr '[:upper:]' '[:lower:]': 轉換為小寫
#   - pbcopy: 複製到剪貼簿
#   - pbpaste && echo: 顯示已複製的內容
# 範例：uuid
#   輸出：a1b2c3d4-e5f6-7890-abcd-ef1234567890
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"
