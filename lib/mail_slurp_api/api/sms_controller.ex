# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.SmsController do
  @moduledoc """
  API calls for all endpoints tagged `SmsController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Delete SMS message.
  Delete an SMS message

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - sms_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_sms_message(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_sms_message(connection, sms_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/sms/#{sms_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false}
    ])
  end

  @doc """
  Delete all SMS messages
  Delete all SMS messages or all messages for a given phone number

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :phone_number_id (String.t): 
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_sms_messages(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_sms_messages(connection, opts \\ []) do
    optional_params = %{
      :"phoneNumberId" => :query
    }
    %{}
    |> method(:delete)
    |> url("/sms")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false}
    ])
  end

  @doc """
  Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
  Returns a SMS summary object with content.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - sms_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.SmsDto{}} on success
  {:error, info} on failure
  """
  @spec get_sms_message(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.SmsDto.t} | {:error, Tesla.Env.t}
  def get_sms_message(connection, sms_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sms/#{sms_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.SmsDto{}}
    ])
  end

  @doc """
  Get all SMS messages in all phone numbers in paginated form. .
  By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :phone_number (String.t): Optional receiving phone number to filter SMS messages for
    - :page (integer()): Optional page index in SMS list pagination
    - :size (integer()): Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :unread_only (boolean()): Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly
    - :since (DateTime.t): Optional filter SMSs received after given date time
    - :before (DateTime.t): Optional filter SMSs received before given date time
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageSmsProjection{}} on success
  {:error, info} on failure
  """
  @spec get_sms_messages_paginated(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageSmsProjection.t} | {:error, Tesla.Env.t}
  def get_sms_messages_paginated(connection, opts \\ []) do
    optional_params = %{
      :"phoneNumber" => :query,
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"unreadOnly" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/sms")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageSmsProjection{}}
    ])
  end

  @doc """
  Get unread SMS count
  Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.UnreadCount{}} on success
  {:error, info} on failure
  """
  @spec get_unread_sms_count(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.UnreadCount.t} | {:error, Tesla.Env.t}
  def get_unread_sms_count(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sms/unreadCount")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.UnreadCount{}}
    ])
  end
end
