# ============================================
# AI Tools - 快速啟動 AI CLI 工具
# ============================================

# Claude AI CLI 快捷指令
# 用途：快速啟動 Claude Code CLI
# 範例：c "幫我寫一個函數"
alias c='claude'

# Claude AI CLI 第二帳號
# 用途：用第二個 Claude 帳號啟動，分攤主帳號用量
# 說明：
#   - CLAUDE_CONFIG_DIR: 指向獨立設定目錄，登入狀態與 c 分開
#   - --mcp-config: 載入與主帳號共用的 MCP 設定
#   - 其餘設定（CLAUDE.md/agents/commands/settings）已 symlink 共用
# 範例：cc "幫我寫一個函數"
alias cc='CLAUDE_CONFIG_DIR="$HOME/.claude-alt" claude --mcp-config "$HOME/.claude-shared/mcp.json"'

# 同步主帳號 MCP 設定到第二帳號共用檔
# 用途：在主帳號用 claude mcp add 新增 MCP 後執行一次
# 範例：claude-sync-mcp
claude-sync-mcp() {
  jq '{mcpServers: (.mcpServers // {})}' "$HOME/.claude.json" > "$HOME/.claude-shared/mcp.json" \
    && echo "✅ 已同步 $(jq -r '.mcpServers | keys | length' "$HOME/.claude-shared/mcp.json") 個 MCP server"
}

# Gemini AI CLI 快捷指令（備用）
# 用途：當 Claude 掛掉時的替代方案
# 範例：g "解釋這段程式碼"
alias g='gemini'

# GitHub Copilot CLI 快捷指令
# 用途：GitHub Copilot 命令列工具（2025 新版 Public Preview）
# 範例：cop "如何用 git 刪除遠端分支"
alias cop='copilot'

# Google Antigravity IDE 快捷指令
# 用途：用 Antigravity 開啟目錄（類似 code .）
# 範例：a . 或 a ~/project
alias a='agy'

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
