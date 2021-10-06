# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.WebhookController do
  @moduledoc """
  API calls for all endpoints tagged `WebhookController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Attach a WebHook URL to an inbox
  Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - webhook_options (CreateWebhookOptions): webhookOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookDto{}} on success
  {:error, info} on failure
  """
  @spec create_webhook(Tesla.Env.client, String.t, MailSlurpAPI.Model.CreateWebhookOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookDto.t} | {:error, Tesla.Env.t}
  def create_webhook(connection, inbox_id, webhook_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/inboxes/#{inbox_id}/webhooks")
    |> add_param(:body, :body, webhook_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.WebhookDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Delete all webhooks

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_all_webhooks(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_all_webhooks(connection, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/webhooks")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  Delete and disable a Webhook for an Inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - webhook_id (String.t): webhookId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_webhook(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_webhook(connection, inbox_id, webhook_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/inboxes/#{inbox_id}/webhooks/#{webhook_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  Get results for all webhooks

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :before (DateTime.t): Filter by created at before the given timestamp
    - :page (integer()): Optional page index in list pagination
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :size (integer()): Optional page size in list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :unseen_only (boolean()): Filter for unseen exceptions only
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageWebhookResult{}} on success
  {:error, info} on failure
  """
  @spec get_all_webhook_results(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageWebhookResult.t} | {:error, Tesla.Env.t}
  def get_all_webhook_results(connection, opts \\ []) do
    optional_params = %{
      :"before" => :query,
      :"page" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"unseenOnly" => :query
    }
    %{}
    |> method(:get)
    |> url("/webhooks/results")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageWebhookResult{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  List Webhooks Paginated
  List webhooks in paginated form. Allows for page index, page size, and sort direction.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :before (DateTime.t): Filter by created at before the given timestamp
    - :page (integer()): Optional page index in list pagination
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :size (integer()): Optional page size for paginated result list.
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageWebhookProjection{}} on success
  {:error, info} on failure
  """
  @spec get_all_webhooks(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageWebhookProjection.t} | {:error, Tesla.Env.t}
  def get_all_webhooks(connection, opts \\ []) do
    optional_params = %{
      :"before" => :query,
      :"page" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/webhooks/paginated")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageWebhookProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get paginated webhooks for an Inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - opts (KeywordList): [optional] Optional parameters
    - :before (DateTime.t): Filter by created at before the given timestamp
    - :page (integer()): Optional page index in list pagination
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :size (integer()): Optional page size in list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageWebhookProjection{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_webhooks_paginated(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageWebhookProjection.t} | {:error, Tesla.Env.t}
  def get_inbox_webhooks_paginated(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"before" => :query,
      :"page" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/webhooks/paginated")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageWebhookProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get JSON Schema definition for webhook payload

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - webhook_id (String.t): webhookId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.JsonSchemaDto{}} on success
  {:error, info} on failure
  """
  @spec get_json_schema_for_webhook_payload(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.JsonSchemaDto.t} | {:error, Tesla.Env.t}
  def get_json_schema_for_webhook_payload(connection, webhook_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/webhooks/#{webhook_id}/schema")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.JsonSchemaDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :event_name (String.t): eventName
  ## Returns

  {:ok, %MailSlurpAPI.Model.AbstractWebhookPayload{}} on success
  {:error, info} on failure
  """
  @spec get_test_webhook_payload(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.AbstractWebhookPayload.t} | {:error, Tesla.Env.t}
  def get_test_webhook_payload(connection, opts \\ []) do
    optional_params = %{
      :"eventName" => :query
    }
    %{}
    |> method(:get)
    |> url("/webhooks/test")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.AbstractWebhookPayload{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get webhook test payload for email opened event

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookEmailOpenedPayload{}} on success
  {:error, info} on failure
  """
  @spec get_test_webhook_payload_email_opened(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookEmailOpenedPayload.t} | {:error, Tesla.Env.t}
  def get_test_webhook_payload_email_opened(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks/test/email-opened-payload")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.WebhookEmailOpenedPayload{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get webhook test payload for email opened event

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookEmailReadPayload{}} on success
  {:error, info} on failure
  """
  @spec get_test_webhook_payload_email_read(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookEmailReadPayload.t} | {:error, Tesla.Env.t}
  def get_test_webhook_payload_email_read(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks/test/email-read-payload")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.WebhookEmailReadPayload{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get example payload for webhook

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - webhook_id (String.t): webhookId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.AbstractWebhookPayload{}} on success
  {:error, info} on failure
  """
  @spec get_test_webhook_payload_for_webhook(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.AbstractWebhookPayload.t} | {:error, Tesla.Env.t}
  def get_test_webhook_payload_for_webhook(connection, webhook_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/webhooks/#{webhook_id}/example")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.AbstractWebhookPayload{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get webhook test payload for new attachment event

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookNewAttachmentPayload{}} on success
  {:error, info} on failure
  """
  @spec get_test_webhook_payload_new_attachment(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookNewAttachmentPayload.t} | {:error, Tesla.Env.t}
  def get_test_webhook_payload_new_attachment(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks/test/new-attachment-payload")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.WebhookNewAttachmentPayload{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get webhook test payload for new contact event

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookNewContactPayload{}} on success
  {:error, info} on failure
  """
  @spec get_test_webhook_payload_new_contact(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookNewContactPayload.t} | {:error, Tesla.Env.t}
  def get_test_webhook_payload_new_contact(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks/test/new-contact-payload")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.WebhookNewContactPayload{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get webhook test payload for new email event

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookNewEmailPayload{}} on success
  {:error, info} on failure
  """
  @spec get_test_webhook_payload_new_email(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookNewEmailPayload.t} | {:error, Tesla.Env.t}
  def get_test_webhook_payload_new_email(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks/test/new-email-payload")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.WebhookNewEmailPayload{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get a webhook for an Inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - webhook_id (String.t): webhookId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookDto{}} on success
  {:error, info} on failure
  """
  @spec get_webhook(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookDto.t} | {:error, Tesla.Env.t}
  def get_webhook(connection, webhook_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks/#{webhook_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.WebhookDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get a webhook result for a webhook

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - webhook_result_id (String.t): Webhook Result ID
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookResultDto{}} on success
  {:error, info} on failure
  """
  @spec get_webhook_result(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookResultDto.t} | {:error, Tesla.Env.t}
  def get_webhook_result(connection, webhook_result_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks/results/#{webhook_result_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.WebhookResultDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get a webhook results for a webhook

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - webhook_id (String.t): ID of webhook to get results for
  - opts (KeywordList): [optional] Optional parameters
    - :before (DateTime.t): Filter by created at before the given timestamp
    - :page (integer()): Optional page index in list pagination
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :size (integer()): Optional page size in list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :unseen_only (boolean()): Filter for unseen exceptions only
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageWebhookResult{}} on success
  {:error, info} on failure
  """
  @spec get_webhook_results(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageWebhookResult.t} | {:error, Tesla.Env.t}
  def get_webhook_results(connection, webhook_id, opts \\ []) do
    optional_params = %{
      :"before" => :query,
      :"page" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"unseenOnly" => :query
    }
    %{}
    |> method(:get)
    |> url("/webhooks/#{webhook_id}/results")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageWebhookResult{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get count of unseen webhook results with error status

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.UnseenErrorCountDto{}} on success
  {:error, info} on failure
  """
  @spec get_webhook_results_unseen_error_count(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.UnseenErrorCountDto.t} | {:error, Tesla.Env.t}
  def get_webhook_results_unseen_error_count(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks/results/unseen-count")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.UnseenErrorCountDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get all webhooks for an Inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%WebhookDto{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_webhooks(Tesla.Env.client, String.t, keyword()) :: {:ok, list(MailSlurpAPI.Model.WebhookDto.t)} | {:error, Tesla.Env.t}
  def get_webhooks(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/webhooks")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.WebhookDto{}]},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get a webhook result and try to resend the original webhook payload
  Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - webhook_result_id (String.t): Webhook Result ID
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookRedriveResult{}} on success
  {:error, info} on failure
  """
  @spec redrive_webhook_result(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookRedriveResult.t} | {:error, Tesla.Env.t}
  def redrive_webhook_result(connection, webhook_result_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/webhooks/results/#{webhook_result_id}/redrive")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.WebhookRedriveResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Send webhook test data

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - webhook_id (String.t): webhookId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.WebhookTestResult{}} on success
  {:error, info} on failure
  """
  @spec send_test_data(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.WebhookTestResult.t} | {:error, Tesla.Env.t}
  def send_test_data(connection, webhook_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/webhooks/#{webhook_id}/test")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.WebhookTestResult{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end
end
