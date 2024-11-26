#!/bin/bash

BODY=$(curl -X POST https://api.telegram.org/bot7578894502:AAG-tuwnpaJsgJ2WBBgjOWk64Y3ync6e8p0/sendMessage \
  -d chat_id="-1002259498131" \
  -d text="actions\\.telegram\\-notify 测试消息" \
  -d parse_mode="MarkdownV2" \
  -d message_thread_id="1199" \
  -d disable_notification=false \
  -d protect_content=false)

echo $BODY
SUCCESS=$(echo $BODY | jq -r '.ok')

echo $SUCCESS
