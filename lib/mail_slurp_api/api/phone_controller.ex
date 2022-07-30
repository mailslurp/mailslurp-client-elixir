# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.PhoneController do
  @moduledoc """
  API calls for all endpoints tagged `PhoneController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - create_emergency_address_options (CreateEmergencyAddressOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmergencyAddress{}} on success
  {:error, info} on failure
  """
  @spec create_emergency_address(Tesla.Env.client, MailSlurpAPI.Model.CreateEmergencyAddressOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmergencyAddress.t} | {:error, Tesla.Env.t}
  def create_emergency_address(connection, create_emergency_address_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/phone/emergency-addresses")
    |> add_param(:body, :body, create_emergency_address_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmergencyAddress{}}
    ])
  end

  @doc """

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - address_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmptyResponseDto{}} on success
  {:error, info} on failure
  """
  @spec delete_emergency_address(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmptyResponseDto.t} | {:error, Tesla.Env.t}
  def delete_emergency_address(connection, address_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/phone/emergency-addresses/#{address_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmptyResponseDto{}}
    ])
  end

  @doc """

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - phone_number_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_phone_number(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_phone_number(connection, phone_number_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/phone/numbers/#{phone_number_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false}
    ])
  end

  @doc """

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - address_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmergencyAddress{}} on success
  {:error, info} on failure
  """
  @spec get_emergency_address(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmergencyAddress.t} | {:error, Tesla.Env.t}
  def get_emergency_address(connection, address_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/phone/emergency-addresses/#{address_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmergencyAddress{}}
    ])
  end

  @doc """

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%EmergencyAddressDto{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_emergency_addresses(Tesla.Env.client, keyword()) :: {:ok, list(MailSlurpAPI.Model.EmergencyAddressDto.t)} | {:error, Tesla.Env.t}
  def get_emergency_addresses(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/phone/emergency-addresses")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.EmergencyAddressDto{}]}
    ])
  end

  @doc """

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - phone_number_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.PhoneNumberDto{}} on success
  {:error, info} on failure
  """
  @spec get_phone_number(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PhoneNumberDto.t} | {:error, Tesla.Env.t}
  def get_phone_number(connection, phone_number_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/phone/numbers/#{phone_number_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PhoneNumberDto{}}
    ])
  end

  @doc """

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index for list pagination
    - :size (integer()): Optional page size for list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PagePhoneNumberProjection{}} on success
  {:error, info} on failure
  """
  @spec get_phone_numbers(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PagePhoneNumberProjection.t} | {:error, Tesla.Env.t}
  def get_phone_numbers(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/phone/numbers")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PagePhoneNumberProjection{}}
    ])
  end

  @doc """

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%PhonePlanDto{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_phone_plans(Tesla.Env.client, keyword()) :: {:ok, list(MailSlurpAPI.Model.PhonePlanDto.t)} | {:error, Tesla.Env.t}
  def get_phone_plans(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/phone/plans")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.PhonePlanDto{}]}
    ])
  end

  @doc """

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - phone_number_id (String.t): 
  - test_phone_number_options (TestPhoneNumberOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec test_phone_number_send_sms(Tesla.Env.client, String.t, MailSlurpAPI.Model.TestPhoneNumberOptions.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def test_phone_number_send_sms(connection, phone_number_id, test_phone_number_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/phone/numbers/#{phone_number_id}/test")
    |> add_param(:body, :body, test_phone_number_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end
end
