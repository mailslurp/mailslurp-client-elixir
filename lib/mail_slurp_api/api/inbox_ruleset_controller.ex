# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.InboxRulesetController do
  @moduledoc """
  API calls for all endpoints tagged `InboxRulesetController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Create an inbox ruleset
  Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - create_inbox_ruleset_options (CreateInboxRulesetOptions): createInboxRulesetOptions
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id (String.t): Inbox id to attach ruleset to
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxRulesetDto{}} on success
  {:error, info} on failure
  """
  @spec create_new_inbox_ruleset(Tesla.Env.client, MailSlurpAPI.Model.CreateInboxRulesetOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxRulesetDto.t} | {:error, Tesla.Env.t}
  def create_new_inbox_ruleset(connection, create_inbox_ruleset_options, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query
    }
    %{}
    |> method(:post)
    |> url("/rulesets")
    |> add_param(:body, :body, create_inbox_ruleset_options)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxRulesetDto{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Delete an inbox ruleset
  Delete inbox ruleset

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): ID of inbox ruleset
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_inbox_ruleset(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_inbox_ruleset(connection, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/rulesets/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  Delete inbox rulesets
  Delete inbox rulesets. Accepts optional inboxId filter.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id (String.t): Optional inbox id to attach ruleset to
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_inbox_rulesets(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_inbox_rulesets(connection, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query
    }
    %{}
    |> method(:delete)
    |> url("/rulesets")
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
  Get an inbox ruleset
  Get inbox ruleset

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): ID of inbox ruleset
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxRulesetDto{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_ruleset(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxRulesetDto.t} | {:error, Tesla.Env.t}
  def get_inbox_ruleset(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/rulesets/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxRulesetDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  List inbox rulesets
  List all rulesets attached to an inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id (String.t): Optional inbox id to get rulesets from
    - :page (integer()): Optional page index in inbox ruleset list pagination
    - :search_filter (String.t): Optional search filter
    - :size (integer()): Optional page size in inbox ruleset list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageInboxRulesetDto{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_rulesets(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageInboxRulesetDto.t} | {:error, Tesla.Env.t}
  def get_inbox_rulesets(connection, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query,
      :"page" => :query,
      :"searchFilter" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/rulesets")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageInboxRulesetDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Test an inbox ruleset
  Test an inbox ruleset

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): ID of inbox ruleset
  - inbox_ruleset_test_options (InboxRulesetTestOptions): inboxRulesetTestOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxRulesetTestResult{}} on success
  {:error, info} on failure
  """
  @spec test_inbox_ruleset(Tesla.Env.client, String.t, MailSlurpAPI.Model.InboxRulesetTestOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxRulesetTestResult.t} | {:error, Tesla.Env.t}
  def test_inbox_ruleset(connection, id, inbox_ruleset_test_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/rulesets/#{id}/test")
    |> add_param(:body, :body, inbox_ruleset_test_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxRulesetTestResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Test inbox rulesets for inbox
  Test inbox rulesets for inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of inbox
  - inbox_ruleset_test_options (InboxRulesetTestOptions): inboxRulesetTestOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxRulesetTestResult{}} on success
  {:error, info} on failure
  """
  @spec test_inbox_rulesets_for_inbox(Tesla.Env.client, String.t, MailSlurpAPI.Model.InboxRulesetTestOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxRulesetTestResult.t} | {:error, Tesla.Env.t}
  def test_inbox_rulesets_for_inbox(connection, inbox_id, inbox_ruleset_test_options, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/rulesets")
    |> add_param(:query, :"inboxId", inbox_id)
    |> add_param(:body, :body, inbox_ruleset_test_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxRulesetTestResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Test new inbox ruleset
  Test new inbox ruleset

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - test_new_inbox_ruleset_options (TestNewInboxRulesetOptions): testNewInboxRulesetOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxRulesetTestResult{}} on success
  {:error, info} on failure
  """
  @spec test_new_inbox_ruleset(Tesla.Env.client, MailSlurpAPI.Model.TestNewInboxRulesetOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxRulesetTestResult.t} | {:error, Tesla.Env.t}
  def test_new_inbox_ruleset(connection, test_new_inbox_ruleset_options, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/rulesets")
    |> add_param(:body, :body, test_new_inbox_ruleset_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxRulesetTestResult{}},
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end
end
