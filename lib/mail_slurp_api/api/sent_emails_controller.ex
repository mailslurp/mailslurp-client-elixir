# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.SentEmailsController do
  @moduledoc """
  API calls for all endpoints tagged `SentEmailsController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Delete all sent email receipts

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_all_sent_emails(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_all_sent_emails(connection, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/sent")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false}
    ])
  end

  @doc """
  Delete sent email receipt

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_sent_email(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_sent_email(connection, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/sent/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false}
    ])
  end

  @doc """
  Get all sent email tracking pixels in paginated form

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in sent email tracking pixel list pagination
    - :size (integer()): Optional page size in sent email tracking pixel list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageTrackingPixelProjection{}} on success
  {:error, info} on failure
  """
  @spec get_all_sent_tracking_pixels(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageTrackingPixelProjection.t} | {:error, Tesla.Env.t}
  def get_all_sent_tracking_pixels(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/sent/tracking-pixels")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageTrackingPixelProjection{}}
    ])
  end

  @doc """
  Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
  Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec get_raw_sent_email_contents(Tesla.Env.client, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def get_raw_sent_email_contents(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sent/#{email_id}/raw")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
  Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.RawEmailJson{}} on success
  {:error, info} on failure
  """
  @spec get_raw_sent_email_json(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.RawEmailJson.t} | {:error, Tesla.Env.t}
  def get_raw_sent_email_json(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sent/#{email_id}/raw/json")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.RawEmailJson{}}
    ])
  end

  @doc """
  Get sent email receipt

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.SentEmailDto{}} on success
  {:error, info} on failure
  """
  @spec get_sent_email(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.SentEmailDto.t} | {:error, Tesla.Env.t}
  def get_sent_email(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sent/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.SentEmailDto{}}
    ])
  end

  @doc """
  Get sent email HTML content

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec get_sent_email_html_content(Tesla.Env.client, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def get_sent_email_html_content(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sent/#{id}/html")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Get sent email URL for viewing in browser or downloading
  Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailPreviewUrls{}} on success
  {:error, info} on failure
  """
  @spec get_sent_email_preview_ur_ls(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailPreviewUrls.t} | {:error, Tesla.Env.t}
  def get_sent_email_preview_ur_ls(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sent/#{id}/urls")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailPreviewUrls{}}
    ])
  end

  @doc """
  Get all tracking pixels for a sent email in paginated form

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in sent email tracking pixel list pagination
    - :size (integer()): Optional page size in sent email tracking pixel list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageTrackingPixelProjection{}} on success
  {:error, info} on failure
  """
  @spec get_sent_email_tracking_pixels(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageTrackingPixelProjection.t} | {:error, Tesla.Env.t}
  def get_sent_email_tracking_pixels(connection, id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/sent/#{id}/tracking-pixels")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageTrackingPixelProjection{}}
    ])
  end

  @doc """
  Get all sent emails in paginated form

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id (String.t): Optional inboxId to filter sender of sent emails by
    - :page (integer()): Optional page index in inbox sent email list pagination
    - :size (integer()): Optional page size in inbox sent email list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageSentEmailProjection{}} on success
  {:error, info} on failure
  """
  @spec get_sent_emails(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageSentEmailProjection.t} | {:error, Tesla.Env.t}
  def get_sent_emails(connection, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query,
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/sent")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageSentEmailProjection{}}
    ])
  end

  @doc """
  Get results of email sent with queues in paginated form

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in inbox sent email list pagination
    - :size (integer()): Optional page size in inbox sent email list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageSentEmailWithQueueProjection{}} on success
  {:error, info} on failure
  """
  @spec get_sent_emails_with_queue_results(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageSentEmailWithQueueProjection.t} | {:error, Tesla.Env.t}
  def get_sent_emails_with_queue_results(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/sent/queue-results")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageSentEmailWithQueueProjection{}}
    ])
  end

  @doc """
  Get all sent organization emails in paginated form

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id (String.t): Optional inboxId to filter sender of sent emails by
    - :page (integer()): Optional page index in sent email list pagination
    - :size (integer()): Optional page size in sent email list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageSentEmailProjection{}} on success
  {:error, info} on failure
  """
  @spec get_sent_organization_emails(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageSentEmailProjection.t} | {:error, Tesla.Env.t}
  def get_sent_organization_emails(connection, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query,
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/sent/organization")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageSentEmailProjection{}}
    ])
  end
end
