# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.EmailVerificationController do
  @moduledoc """
  API calls for all endpoints tagged `EmailVerificationController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Validate a list of email addresses. Per unit billing. See your plan for pricing.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in list pagination
    - :size (integer()): Optional page size for paginated result list.
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
    - :is_valid (boolean()): Filter where email is valid is true or false
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageEmailValidationRequest{}} on success
  {:error, info} on failure
  """
  @spec get_validation_requests(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageEmailValidationRequest.t} | {:error, Tesla.Env.t}
  def get_validation_requests(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query,
      :"isValid" => :query
    }
    %{}
    |> method(:get)
    |> url("/email-verification/validation-requests")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageEmailValidationRequest{}}
    ])
  end

  @doc """
  Validate a list of email addresses. Per unit billing. See your plan for pricing.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - validate_email_address_list_options (ValidateEmailAddressListOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.ValidateEmailAddressListResult{}} on success
  {:error, info} on failure
  """
  @spec validate_email_address_list(Tesla.Env.client, MailSlurpAPI.Model.ValidateEmailAddressListOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.ValidateEmailAddressListResult.t} | {:error, Tesla.Env.t}
  def validate_email_address_list(connection, validate_email_address_list_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/email-verification/email-address-list")
    |> add_param(:body, :body, validate_email_address_list_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.ValidateEmailAddressListResult{}}
    ])
  end
end
