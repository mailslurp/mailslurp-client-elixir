# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.CommonActionsController do
  @moduledoc """
  API calls for all endpoints tagged `CommonActionsController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Create new random inbox
  Returns an Inbox with an `id` and an `emailAddress`

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :allow_team_access (boolean()): allowTeamAccess
    - :description (String.t): description
    - :email_address (String.t): emailAddress
    - :expires_at (DateTime.t): expiresAt
    - :expires_in (integer()): expiresIn
    - :favourite (boolean()): favourite
    - :inbox_type (String.t): inboxType
    - :name (String.t): name
    - :tags ([String.t]): tags
    - :use_domain_pool (boolean()): useDomainPool
  ## Returns

  {:ok, %MailSlurpAPI.Model.Inbox{}} on success
  {:error, info} on failure
  """
  @spec create_new_email_address(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.Inbox.t} | {:error, Tesla.Env.t}
  def create_new_email_address(connection, opts \\ []) do
    optional_params = %{
      :"allowTeamAccess" => :query,
      :"description" => :query,
      :"emailAddress" => :query,
      :"expiresAt" => :query,
      :"expiresIn" => :query,
      :"favourite" => :query,
      :"inboxType" => :query,
      :"name" => :query,
      :"tags" => :query,
      :"useDomainPool" => :query
    }
    %{}
    |> method(:post)
    |> url("/createInbox")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.Inbox{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Create new random inbox
  Returns an Inbox with an `id` and an `emailAddress`

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :allow_team_access (boolean()): allowTeamAccess
    - :description (String.t): description
    - :email_address (String.t): emailAddress
    - :expires_at (DateTime.t): expiresAt
    - :expires_in (integer()): expiresIn
    - :favourite (boolean()): favourite
    - :inbox_type (String.t): inboxType
    - :name (String.t): name
    - :tags ([String.t]): tags
    - :use_domain_pool (boolean()): useDomainPool
  ## Returns

  {:ok, %MailSlurpAPI.Model.Inbox{}} on success
  {:error, info} on failure
  """
  @spec create_new_email_address1(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.Inbox.t} | {:error, Tesla.Env.t}
  def create_new_email_address1(connection, opts \\ []) do
    optional_params = %{
      :"allowTeamAccess" => :query,
      :"description" => :query,
      :"emailAddress" => :query,
      :"expiresAt" => :query,
      :"expiresIn" => :query,
      :"favourite" => :query,
      :"inboxType" => :query,
      :"name" => :query,
      :"tags" => :query,
      :"useDomainPool" => :query
    }
    %{}
    |> method(:post)
    |> url("/newEmailAddress")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.Inbox{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Delete all emails in an inbox
  Deletes all emails

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec empty_inbox(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def empty_inbox(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/emptyInbox")
    |> add_param(:query, :"inboxId", inbox_id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  Send an email
  If no senderId or inboxId provided a random email address will be used to send from.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_options (SimpleSendEmailOptions): emailOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec send_email_simple(Tesla.Env.client, MailSlurpAPI.Model.SimpleSendEmailOptions.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def send_email_simple(connection, email_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/sendEmail")
    |> add_param(:body, :body, email_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end
end
