# actions.telegram-notify

向 Telegram 群组指定的 Topic 推送消息。

## Inputs

| **Arguments**       | **Required** | **Description**                                                                        |
| :------------------ | :----------- | -------------------------------------------------------------------------------------- |
| token               | true         | Telegram Token (`https://api.telegram.org/bot{{token}}/sendMessage`)                   |
| chartId             | true         | Telegram Chat ID                                                                       |
| messageThreadId     | true         | The Id Of Telegram Topic                                                               |
| text                | true         | 消息体                                                                                 |
| parseMode           | false        | `"MarkdownV2" \| "HTML"` [详见](https://core.telegram.org/bots/api#formatting-options) |
| disableNotification | false        | 静默，用户将收到无声消息                                                               |
| protectContent      | false        | 保护消息不会被转发或者保存                                                             |

## Outputs

| **Property** | **Description**                      |
| :----------- | :----------------------------------- |
| success      | `"true" \| "false"` 是否成功推送消息 |

## Example

```yaml
name: Test

on: push

jobs:
  test:
    name: Test
    runs-on: ubuntu-latest
    steps:
      - id: telegram
        uses: buka-inc/actions.telegram-notify@v1
        with:
          token: ${{ secrets.TELEGRAM_BOT_TOKEN }}
          chatId: ${{ secrets.TELEGRAM_CHAT_ID }}
          # Telegram Topic Id
          messageThreadId: 1234
          text: "Hello World"
      - if: steps.telegram.outputs.success === "true"
        run: echo "SUCCESS"
```
