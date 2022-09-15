# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.BounceController do
  @moduledoc """
  API calls for all endpoints tagged `BounceController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Filter a list of email recipients and remove those who have bounced
  Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - filter_bounced_recipients_options (FilterBouncedRecipientsOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.FilterBouncedRecipientsResult{}} on success
  {:error, info} on failure
  """
  @spec filter_bounced_recipient(Tesla.Env.client, MailSlurpAPI.Model.FilterBouncedRecipientsOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.FilterBouncedRecipientsResult.t} | {:error, Tesla.Env.t}
  def filter_bounced_recipient(connection, filter_bounced_recipients_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/bounce/filter-recipients")
    |> add_param(:body, :body, filter_bounced_recipients_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.FilterBouncedRecipientsResult{}}
    ])
  end

  @doc """
  Get a bounced email.
  Bounced emails are email you have sent that were rejected by a recipient

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): ID of the bounced email to fetch
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.BouncedEmailDto{}} on success
  {:error, info} on failure
  """
  @spec get_bounced_email(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.BouncedEmailDto.t} | {:error, Tesla.Env.t}
  def get_bounced_email(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/bounce/emails/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.BouncedEmailDto{}}
    ])
  end

  @doc """
  Get paginated list of bounced emails.
  Bounced emails are email you have sent that were rejected by a recipient

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index
    - :size (integer()): Optional page size 
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageBouncedEmail{}} on success
  {:error, info} on failure
  """
  @spec get_bounced_emails(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageBouncedEmail.t} | {:error, Tesla.Env.t}
  def get_bounced_emails(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/bounce/emails")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageBouncedEmail{}}
    ])
  end

  @doc """
  Get a bounced email.
  Bounced emails are email you have sent that were rejected by a recipient

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): ID of the bounced recipient
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.BouncedRecipientDto{}} on success
  {:error, info} on failure
  """
  @spec get_bounced_recipient(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.BouncedRecipientDto.t} | {:error, Tesla.Env.t}
  def get_bounced_recipient(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/bounce/recipients/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.BouncedRecipientDto{}}
    ])
  end

  @doc """
  Get paginated list of bounced recipients.
  Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index 
    - :size (integer()): Optional page size 
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageBouncedRecipients{}} on success
  {:error, info} on failure
  """
  @spec get_bounced_recipients(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageBouncedRecipients.t} | {:error, Tesla.Env.t}
  def get_bounced_recipients(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/bounce/recipients")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageBouncedRecipients{}}
    ])
  end

  @doc """
  Get paginated list of complaints.
  SMTP complaints made against your account

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index 
    - :size (integer()): Optional page size 
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageComplaint{}} on success
  {:error, info} on failure
  """
  @spec get_complaints(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageComplaint.t} | {:error, Tesla.Env.t}
  def get_complaints(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/bounce/complaints")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageComplaint{}}
    ])
  end
end
