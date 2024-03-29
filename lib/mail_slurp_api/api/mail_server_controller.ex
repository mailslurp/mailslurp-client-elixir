# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.MailServerController do
  @moduledoc """
  API calls for all endpoints tagged `MailServerController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Get DNS Mail Server records for a domain

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - describe_domain_options (DescribeDomainOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.DescribeMailServerDomainResult{}} on success
  {:error, info} on failure
  """
  @spec describe_mail_server_domain(Tesla.Env.client, MailSlurpAPI.Model.DescribeDomainOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.DescribeMailServerDomainResult.t} | {:error, Tesla.Env.t}
  def describe_mail_server_domain(connection, describe_domain_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/mail-server/describe/domain")
    |> add_param(:body, :body, describe_domain_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.DescribeMailServerDomainResult{}}
    ])
  end

  @doc """
  Lookup DNS records for a domain

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - dns_lookup_options (DnsLookupOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.DnsLookupResults{}} on success
  {:error, info} on failure
  """
  @spec get_dns_lookup(Tesla.Env.client, MailSlurpAPI.Model.DnsLookupOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.DnsLookupResults.t} | {:error, Tesla.Env.t}
  def get_dns_lookup(connection, dns_lookup_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/mail-server/describe/dns-lookup")
    |> add_param(:body, :body, dns_lookup_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.DnsLookupResults{}}
    ])
  end

  @doc """
  Get IP address for a domain

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - name (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.IpAddressResult{}} on success
  {:error, info} on failure
  """
  @spec get_ip_address(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.IpAddressResult.t} | {:error, Tesla.Env.t}
  def get_ip_address(connection, name, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/mail-server/describe/ip-address")
    |> add_param(:query, :"name", name)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.IpAddressResult{}}
    ])
  end

  @doc """
  Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - verify_email_address_options (VerifyEmailAddressOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailVerificationResult{}} on success
  {:error, info} on failure
  """
  @spec verify_email_address(Tesla.Env.client, MailSlurpAPI.Model.VerifyEmailAddressOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailVerificationResult.t} | {:error, Tesla.Env.t}
  def verify_email_address(connection, verify_email_address_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/mail-server/verify/email-address")
    |> add_param(:body, :body, verify_email_address_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailVerificationResult{}}
    ])
  end
end
