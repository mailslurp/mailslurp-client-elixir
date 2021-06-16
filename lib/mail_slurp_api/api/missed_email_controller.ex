# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.MissedEmailController do
  @moduledoc """
  API calls for all endpoints tagged `MissedEmailController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Get all MissedEmails in paginated format

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in inbox list pagination
    - :size (integer()): Optional page size in inbox list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageMissedEmailProjection{}} on success
  {:error, info} on failure
  """
  @spec get_all_missed_emails(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageMissedEmailProjection.t} | {:error, Tesla.Env.t}
  def get_all_missed_emails(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/missed-emails")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageMissedEmailProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get MissedEmail

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - missed_email_id (String.t): MissedEmailId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.MissedEmail{}} on success
  {:error, info} on failure
  """
  @spec get_missed_email(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.MissedEmail.t} | {:error, Tesla.Env.t}
  def get_missed_email(connection, missed_email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/missed-emails/#{missed_email_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.MissedEmail{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end
end
