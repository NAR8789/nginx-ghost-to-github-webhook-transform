This working prototype explores how to use nginx to transform ghost webhooks into github repository dispatches.

# Running

1. Update webhook.io endpoint in nginx.conf.
2. Start nginx with `./run.sh`.
3. Send a test request with `./test.sh`.
