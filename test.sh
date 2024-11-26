BODY=$(curl -X POST \
  https://api.telegram.org/bot7578894502:AAG-tuwnpaJsgJ2WBBgjOWk64Y3ync6e8p0/sendMessage \
  -d chat_id="-1002259498131" \
  -d text="测试请忽略" \
  -d message_thread_id="1199" \
  -d parse_mode="MarkdownV2" \
  -d disable_notification=false \
  -d protect_content=true)

SUCCESS=$(echo $BODY | jq -r '.ok')

echo $SUCCESS
