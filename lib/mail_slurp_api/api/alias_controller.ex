# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.AliasController do
  @moduledoc """
  API calls for all endpoints tagged `AliasController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
  Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - create_alias_options (CreateAliasOptions): createAliasOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.AliasDto{}} on success
  {:error, info} on failure
  """
  @spec create_alias(Tesla.Env.client, MailSlurpAPI.Model.CreateAliasOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.AliasDto.t} | {:error, Tesla.Env.t}
  def create_alias(connection, create_alias_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/aliases")
    |> add_param(:body, :body, create_alias_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.AliasDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Delete an email alias

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - alias_id (String.t): aliasId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_alias(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_alias(connection, alias_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/aliases/#{alias_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  Get an email alias
  Get an email alias by ID

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - alias_id (String.t): aliasId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.AliasDto{}} on success
  {:error, info} on failure
  """
  @spec get_alias(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.AliasDto.t} | {:error, Tesla.Env.t}
  def get_alias(connection, alias_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/aliases/#{alias_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.AliasDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get emails for an alias
  Get paginated emails for an alias by ID

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - alias_id (String.t): aliasId
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index alias email list pagination
    - :size (integer()): Optional page size alias email list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageEmailProjection{}} on success
  {:error, info} on failure
  """
  @spec get_alias_emails(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageEmailProjection.t} | {:error, Tesla.Env.t}
  def get_alias_emails(connection, alias_id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/aliases/#{alias_id}/emails")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageEmailProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get threads created for an alias
  Returns threads created for an email alias in paginated form

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - alias_id (String.t): aliasId
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in thread list pagination
    - :size (integer()): Optional page size in thread list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageThreadProjection{}} on success
  {:error, info} on failure
  """
  @spec get_alias_threads(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageThreadProjection.t} | {:error, Tesla.Env.t}
  def get_alias_threads(connection, alias_id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/aliases/#{alias_id}/threads")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageThreadProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get all email aliases you have created
  Get all email aliases in paginated form

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in alias list pagination
    - :size (integer()): Optional page size in alias list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageAlias{}} on success
  {:error, info} on failure
  """
  @spec get_aliases(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageAlias.t} | {:error, Tesla.Env.t}
  def get_aliases(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/aliases")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageAlias{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Reply to an email
  Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - alias_id (String.t): ID of the alias that email belongs to
  - email_id (String.t): ID of the email that should be replied to
  - reply_to_alias_email_options (ReplyToAliasEmailOptions): replyToAliasEmailOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.SentEmailDto{}} on success
  {:error, info} on failure
  """
  @spec reply_to_email(Tesla.Env.client, String.t, String.t, MailSlurpAPI.Model.ReplyToAliasEmailOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.SentEmailDto.t} | {:error, Tesla.Env.t}
  def reply_to_email(connection, alias_id, email_id, reply_to_alias_email_options, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/aliases/#{alias_id}/emails/#{email_id}")
    |> add_param(:body, :body, reply_to_alias_email_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.SentEmailDto{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Send an email from an alias inbox
  Send an email from an alias. Replies to the email will be forwared to the alias masked email address

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - alias_id (String.t): aliasId
  - opts (KeywordList): [optional] Optional parameters
    - :send_email_options (SendEmailOptions): Options for the email to be sent
  ## Returns

  {:ok, %MailSlurpAPI.Model.SentEmailDto{}} on success
  {:error, info} on failure
  """
  @spec send_alias_email(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.SentEmailDto.t} | {:error, Tesla.Env.t}
  def send_alias_email(connection, alias_id, opts \\ []) do
    optional_params = %{
      :"sendEmailOptions" => :body
    }
    %{}
    |> method(:post)
    |> url("/aliases/#{alias_id}/emails")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.SentEmailDto{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Update an email alias

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - alias_id (String.t): aliasId
  - update_alias_options (UpdateAliasOptions): updateAliasOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec update_alias(Tesla.Env.client, String.t, MailSlurpAPI.Model.UpdateAliasOptions.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def update_alias(connection, alias_id, update_alias_options, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/aliases/#{alias_id}")
    |> add_param(:body, :body, update_alias_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, false},
      { 202, %MailSlurpAPI.Model.Alias{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end
end
