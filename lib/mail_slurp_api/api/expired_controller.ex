# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.ExpiredController do
  @moduledoc """
  API calls for all endpoints tagged `ExpiredController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Get default expiration settings
  Return default times used for inbox expiration

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.ExpirationDefaults{}} on success
  {:error, info} on failure
  """
  @spec get_expiration_defaults(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.ExpirationDefaults.t} | {:error, Tesla.Env.t}
  def get_expiration_defaults(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/expired/defaults")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.ExpirationDefaults{}}
    ])
  end

  @doc """
  Get expired inbox record for a previously existing inbox
  Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of inbox you want to retrieve (not the inbox ID)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.ExpiredInboxDto{}} on success
  {:error, info} on failure
  """
  @spec get_expired_inbox_by_inbox_id(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.ExpiredInboxDto.t} | {:error, Tesla.Env.t}
  def get_expired_inbox_by_inbox_id(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/expired/inbox/#{inbox_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.ExpiredInboxDto{}}
    ])
  end

  @doc """
  Get an expired inbox record
  Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - expired_id (String.t): ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.ExpiredInboxDto{}} on success
  {:error, info} on failure
  """
  @spec get_expired_inbox_record(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.ExpiredInboxDto.t} | {:error, Tesla.Env.t}
  def get_expired_inbox_record(connection, expired_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/expired/#{expired_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.ExpiredInboxDto{}}
    ])
  end

  @doc """
  List records of expired inboxes
  Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in inbox sent email list pagination
    - :size (integer()): Optional page size in inbox sent email list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageExpiredInboxRecordProjection{}} on success
  {:error, info} on failure
  """
  @spec get_expired_inboxes(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageExpiredInboxRecordProjection.t} | {:error, Tesla.Env.t}
  def get_expired_inboxes(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/expired")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageExpiredInboxRecordProjection{}}
    ])
  end
end
