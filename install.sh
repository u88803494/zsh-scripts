#!/bin/bash

# ============================================
# ZSH Scripts Installation Script
# ============================================
# 用途：為 zsh-scripts repo 創建符號連結到 Oh My Zsh custom 目錄
# 這樣 Oh My Zsh 就能自動載入 custom.plugin.zsh 中的 aliases
# ============================================

# 創建符號連結
# -s: 創建符號連結（symbolic link）
# -f: 如果目標已存在，強制覆蓋
# 來源：~/Developer/Personal/zsh-scripts
# 目標：~/.oh-my-zsh/custom/zsh-scripts
ln -sf ~/Developer/Personal/zsh-scripts ~/.oh-my-zsh/custom/zsh-scripts

echo "✅ Symlink created: ~/.oh-my-zsh/custom/zsh-scripts → ~/Developer/Personal/zsh-scripts"
echo "🔄 Restart terminal or run: source ~/.zshrc"