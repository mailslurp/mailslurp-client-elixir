# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.InboxForwarderController do
  @moduledoc """
  API calls for all endpoints tagged `InboxForwarderController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Create an inbox forwarder
  Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - create_inbox_forwarder_options (CreateInboxForwarderOptions): createInboxForwarderOptions
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id (String.t): Inbox id to attach forwarder to
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxForwarderDto{}} on success
  {:error, info} on failure
  """
  @spec create_new_inbox_forwarder(Tesla.Env.client, MailSlurpAPI.Model.CreateInboxForwarderOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxForwarderDto.t} | {:error, Tesla.Env.t}
  def create_new_inbox_forwarder(connection, create_inbox_forwarder_options, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query
    }
    %{}
    |> method(:post)
    |> url("/forwarders")
    |> add_param(:body, :body, create_inbox_forwarder_options)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxForwarderDto{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Delete an inbox forwarder
  Delete inbox forwarder

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): ID of inbox forwarder
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_inbox_forwarder(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_inbox_forwarder(connection, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/forwarders/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  Delete inbox forwarders
  Delete inbox forwarders. Accepts optional inboxId filter.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id (String.t): Optional inbox id to attach forwarder to
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_inbox_forwarders(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_inbox_forwarders(connection, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query
    }
    %{}
    |> method(:delete)
    |> url("/forwarders")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  Get an inbox forwarder
  Get inbox ruleset

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): ID of inbox forwarder
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxForwarderDto{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_forwarder(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxForwarderDto.t} | {:error, Tesla.Env.t}
  def get_inbox_forwarder(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/forwarders/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxForwarderDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  List inbox forwarders
  List all forwarders attached to an inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :before (DateTime.t): Filter by created at before the given timestamp
    - :inbox_id (String.t): Optional inbox id to get forwarders from
    - :page (integer()): Optional page index in inbox forwarder list pagination
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :size (integer()): Optional page size in inbox forwarder list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageInboxForwarderDto{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_forwarders(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageInboxForwarderDto.t} | {:error, Tesla.Env.t}
  def get_inbox_forwarders(connection, opts \\ []) do
    optional_params = %{
      :"before" => :query,
      :"inboxId" => :query,
      :"page" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/forwarders")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageInboxForwarderDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Test an inbox forwarder
  Test an inbox forwarder

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): ID of inbox forwarder
  - inbox_forwarder_test_options (InboxForwarderTestOptions): inboxForwarderTestOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxForwarderTestResult{}} on success
  {:error, info} on failure
  """
  @spec test_inbox_forwarder(Tesla.Env.client, String.t, MailSlurpAPI.Model.InboxForwarderTestOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxForwarderTestResult.t} | {:error, Tesla.Env.t}
  def test_inbox_forwarder(connection, id, inbox_forwarder_test_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/forwarders/#{id}/test")
    |> add_param(:body, :body, inbox_forwarder_test_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxForwarderTestResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Test inbox forwarders for inbox
  Test inbox forwarders for inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of inbox
  - inbox_forwarder_test_options (InboxForwarderTestOptions): inboxForwarderTestOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxForwarderTestResult{}} on success
  {:error, info} on failure
  """
  @spec test_inbox_forwarders_for_inbox(Tesla.Env.client, String.t, MailSlurpAPI.Model.InboxForwarderTestOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxForwarderTestResult.t} | {:error, Tesla.Env.t}
  def test_inbox_forwarders_for_inbox(connection, inbox_id, inbox_forwarder_test_options, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/forwarders")
    |> add_param(:query, :"inboxId", inbox_id)
    |> add_param(:body, :body, inbox_forwarder_test_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxForwarderTestResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Test new inbox forwarder
  Test new inbox forwarder

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - test_new_inbox_forwarder_options (TestNewInboxForwarderOptions): testNewInboxForwarderOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxForwarderTestResult{}} on success
  {:error, info} on failure
  """
  @spec test_new_inbox_forwarder(Tesla.Env.client, MailSlurpAPI.Model.TestNewInboxForwarderOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxForwarderTestResult.t} | {:error, Tesla.Env.t}
  def test_new_inbox_forwarder(connection, test_new_inbox_forwarder_options, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/forwarders")
    |> add_param(:body, :body, test_new_inbox_forwarder_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxForwarderTestResult{}},
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end
end
