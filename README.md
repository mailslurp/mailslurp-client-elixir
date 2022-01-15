# Elixir MailSlurp Library

Official Elixir library for MailSlurp. Create email accounts then send and receive email from Elixir, Erlang, Phoenix and more.

## Quick links

- [Hex Package](https://hex.pm/packages/mailslurp)
- [Hex Docs](https://hexdocs.pm/mailslurp/)
- [GitHub Source](https://github.com/mailslurp/mailslurp-client-elixir)
- [Documentation](https://www.mailslurp.com/docs/elixir/)

## Install

There are multiple ways to install MailSlurp. 

> **Note:** replace the version shown with the [latest version on hex.pm](https://hex.pm/packages/mailslurp).

### Mix.exs

```elixir
{:mailslurp, "~> 11.6"}
```

### Rebar.config

```text
{mailslurp, "11.6.0"}
```

### Erlang.mk

```text
dep_mailslurp = hex 11.6.0
```

### Recommended extras

MailSlurp uses Tesla client and httpc by default. Hackney is recommended as it handles some MailSlurp POST methods with empty bodies. 

```elixir
defp deps do
[
  {:hackney, "~> 1.17.4"},
  {:mailslurp, "~> 11.6.1"}
]
end
```

## Configure client

### Get API KEY

Create a [MailSlurp account](https://app.mailslurp.com/login/) to obtain a free API KEY.

![find api key](https://www.mailslurp.com/assets/guides/find-api-key.png)

### Configure Tesla

The MailSlurp REST API is split into controllers. Each method accepts a Tesla client as the first parameter.

```elixir
# create a tesla client for MailSlurp controllers
middleware = [
  # set x-api-key header with MailSlurp API Key
  {Tesla.Middleware.Headers, [{"x-api-key", "your-mailslurp-api-key-here"}]},
  {Tesla.Middleware.BaseUrl, "https://api.mailslurp.com"},
  {Tesla.Middleware.EncodeJson, engine: Poison}
]
# use hackney adapter instead of httpc
adapter = {Tesla.Adapter.Hackney, [recv_timeout: 30_000]}
# create a connection
connection = Tesla.client(middleware, adapter)
```

### Use controllers

Controller method return values can be matched against `:ok, T` or `:error, :info`.

```elixir
# handle ok result and response
{ :ok, inbox } = MailSlurpAPI.Api.InboxController.create_inbox(connection)
# handle error
{ :error, info } = MailSlurpAPI.Api.InboxController.create_inbox(connection)
```

## Examples

Here are some common use cases. See the [documentation](https://www.mailslurp.com/docs/elixir/) or [examples](https://www.mailslurp.com/tags/elixir/) pages for more information.

### Create inbox

Inboxes have an `emailAddress` and `id`.

```elixir
# create test email address
{ :ok, inbox } = MailSlurpAPI.Api.InboxController.create_inbox(connection)
assert inbox.emailAddress =~ "@mailslurp."
```

### Receive email

```elixir
{:ok, email} = MailSlurpAPI.Api.WaitForController.wait_for_latest_email(connection, [
    :inboxId = inbox.id,
    :timeout = 30_000,
    :unreadOnly = true
])
```

### Send email

```elixir
MailSlurpAPI.Api.InboxController.send_email(connection, inbox.id, [
    to: [inbox.emailAddress],
    subject: "test",
    body: "Hello"
])
```
