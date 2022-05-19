# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.TemplateController do
  @moduledoc """
  API calls for all endpoints tagged `TemplateController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Create a Template
  Create an email template with variables for use with templated transactional emails.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - create_template_options (CreateTemplateOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.TemplateDto{}} on success
  {:error, info} on failure
  """
  @spec create_template(Tesla.Env.client, MailSlurpAPI.Model.CreateTemplateOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.TemplateDto.t} | {:error, Tesla.Env.t}
  def create_template(connection, create_template_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/templates")
    |> add_param(:body, :body, create_template_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.TemplateDto{}}
    ])
  end

  @doc """
  Delete email template
  Delete template

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - template_id (String.t): Template ID
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_template(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_template(connection, template_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/templates/#{template_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false}
    ])
  end

  @doc """
  List templates
  Get all templates in paginated format

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in list pagination
    - :size (integer()): Optional page size in list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :since (DateTime.t): Filter by created at after the given timestamp
    - :before (DateTime.t): Filter by created at before the given timestamp
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageTemplateProjection{}} on success
  {:error, info} on failure
  """
  @spec get_all_templates(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageTemplateProjection.t} | {:error, Tesla.Env.t}
  def get_all_templates(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/templates/paginated")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageTemplateProjection{}}
    ])
  end

  @doc """
  Get template
  Get email template

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - template_id (String.t): Template ID
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.TemplateDto{}} on success
  {:error, info} on failure
  """
  @spec get_template(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.TemplateDto.t} | {:error, Tesla.Env.t}
  def get_template(connection, template_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/templates/#{template_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.TemplateDto{}}
    ])
  end

  @doc """
  List templates
  Get all templates

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%TemplateProjection{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_templates(Tesla.Env.client, keyword()) :: {:ok, list(MailSlurpAPI.Model.TemplateProjection.t)} | {:error, Tesla.Env.t}
  def get_templates(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/templates")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.TemplateProjection{}]}
    ])
  end

  @doc """
  Update template
  Update email template

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - template_id (String.t): Template ID
  - create_template_options (CreateTemplateOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.TemplateDto{}} on success
  {:error, info} on failure
  """
  @spec update_template(Tesla.Env.client, String.t, MailSlurpAPI.Model.CreateTemplateOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.TemplateDto.t} | {:error, Tesla.Env.t}
  def update_template(connection, template_id, create_template_options, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/templates/#{template_id}")
    |> add_param(:body, :body, create_template_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.TemplateDto{}}
    ])
  end
end
