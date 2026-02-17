#!/bin/bash

# カラーコードの定義
RED='\033[91m'
BOLD='\033[1m'
RESET='\033[0m'

# 画面をクリア（より没入感を出すため）
clear

# 怖いドクロのAA表示
cat << "EOF"
      ______
    .-"      "-.
   /            \
  |              |
  |,  .-.  .-.  ,|
  | )(__/  \__)( |
  |/     /\     \|
  (_     ^^     _)
   \__|IIIIII|__/
    | \IIIIII/ |
    \          /
     `--------`
EOF

# 警告メッセージ（色付き）
echo -e "${RED}${BOLD}"
echo "    [!] CRITICAL WARNING: DESTRUCTIVE SEQUENCE INITIATED"
echo "    ----------------------------------------------------"
echo "    THIS OPERATION CANNOT BE UNDONE."
echo "    ALL DATA WILL BE PERMANENTLY AFFECTED."
echo "    ----------------------------------------------------"
echo -e "${RESET}"

echo -e "${RED}Starting countdown sequence...${RESET}\n"
sleep 1

# カウントダウン処理
# {10..1} で10から1までループ
for i in {10..1}
do
    # \r で行頭に戻し、-n で改行を抑制
    printf "\r${RED}${BOLD}Executing in: %2d seconds...${RESET}" $i
    sleep 1
done

# 終了メッセージ
printf "\r${RED}${BOLD}Executing in:  0 seconds...${RESET}\n"
sleep 0.5
echo -e "\n${RED}${BOLD}[!] SEQUENCE COMPLETE. SYSTEM COMPROMISED.${RESET}\n"