This working prototype explores how to use nginx to transform ghost webhooks into github repository dispatches, e.g. to publish static site via github action upon making a new post in Ghost.

Ghost outbound webhooks can only do hardcoded GET requests.
No POST or bearer authentication or body.

Github actions [can be triggered](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#repository_dispatch) by [repository dispatch](https://docs.github.com/en/rest/repos/repos?apiVersion=2022-11-28#create-a-repository-dispatch-event).
But this is a POST with bearer authentication and a body.

To glue them together, we can use nginx as a request-transforming proxy.

# Running

1. Update webhook.io endpoint in nginx.conf.
2. Start nginx with `./run.sh`.
3. Send a test request with `./test.sh`.
