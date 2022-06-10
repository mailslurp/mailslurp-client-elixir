# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.EmailController do
  @moduledoc """
  API calls for all endpoints tagged `EmailController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Set IMAP flags associated with a message. Only supports '\\Seen' flag.
  Apply RFC3501 section-2.3.2 IMAP flag operations on an email

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): 
  - imap_flag_operation_options (ImapFlagOperationOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailPreview{}} on success
  {:error, info} on failure
  """
  @spec apply_imap_flag_operation(Tesla.Env.client, String.t, MailSlurpAPI.Model.ImapFlagOperationOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailPreview.t} | {:error, Tesla.Env.t}
  def apply_imap_flag_operation(connection, email_id, imap_flag_operation_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/emails/#{email_id}/imap-flag-operation")
    |> add_param(:body, :body, imap_flag_operation_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailPreview{}}
    ])
  end

  @doc """
  Delete all emails in all inboxes.
  Deletes all emails in your account. Be careful as emails cannot be recovered

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_all_emails(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_all_emails(connection, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/emails")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false}
    ])
  end

  @doc """
  Delete an email
  Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email to delete
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_email(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_email(connection, email_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/emails/#{email_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false}
    ])
  end

  @doc """
  Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
  Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - attachment_id (String.t): ID of attachment
  - opts (KeywordList): [optional] Optional parameters
    - :api_key (String.t): Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.
  ## Returns

  {:ok, %MailSlurpAPI.Model.binary(){}} on success
  {:error, info} on failure
  """
  @spec download_attachment(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def download_attachment(connection, email_id, attachment_id, opts \\ []) do
    optional_params = %{
      :"apiKey" => :query
    }
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/attachments/#{attachment_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { :default, false}
    ])
  end

  @doc """
  Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
  Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - attachment_id (String.t): ID of attachment
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.DownloadAttachmentDto{}} on success
  {:error, info} on failure
  """
  @spec download_attachment_base64(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.DownloadAttachmentDto.t} | {:error, Tesla.Env.t}
  def download_attachment_base64(connection, email_id, attachment_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/attachments/#{attachment_id}/base64")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.DownloadAttachmentDto{}}
    ])
  end

  @doc """
  Get email body as string. Returned as `plain/text` with content type header.
  Returns the specified email body for a given email as a string

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec download_body(Tesla.Env.client, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def download_body(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/body")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Get email body in bytes. Returned as `octet-stream` with content type header.
  Returns the specified email body for a given email as a stream / array of bytes.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.binary(){}} on success
  {:error, info} on failure
  """
  @spec download_body_bytes(Tesla.Env.client, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def download_body_bytes(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/body-bytes")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { :default, false}
    ])
  end

  @doc """
  Forward email to recipients
  Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - forward_email_options (ForwardEmailOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.SentEmailDto{}} on success
  {:error, info} on failure
  """
  @spec forward_email(Tesla.Env.client, String.t, MailSlurpAPI.Model.ForwardEmailOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.SentEmailDto.t} | {:error, Tesla.Env.t}
  def forward_email(connection, email_id, forward_email_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/emails/#{email_id}/forward")
    |> add_param(:body, :body, forward_email_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.SentEmailDto{}}
    ])
  end

  @doc """
  Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
  Returns the metadata such as name and content-type for a given attachment and email.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - attachment_id (String.t): ID of attachment
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.AttachmentMetaData{}} on success
  {:error, info} on failure
  """
  @spec get_attachment_meta_data(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.AttachmentMetaData.t} | {:error, Tesla.Env.t}
  def get_attachment_meta_data(connection, email_id, attachment_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/attachments/#{attachment_id}/metadata")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.AttachmentMetaData{}}
    ])
  end

  @doc """
  Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
  Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :decode (boolean()): Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing
  ## Returns

  {:ok, %MailSlurpAPI.Model.Email{}} on success
  {:error, info} on failure
  """
  @spec get_email(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.Email.t} | {:error, Tesla.Env.t}
  def get_email(connection, email_id, opts \\ []) do
    optional_params = %{
      :"decode" => :query
    }
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.Email{}}
    ])
  end

  @doc """
  Get all email attachment metadata. Metadata includes name and size of attachments.
  Returns an array of attachment metadata such as name and content-type for a given email if present.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%AttachmentMetaData{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_email_attachments(Tesla.Env.client, String.t, keyword()) :: {:ok, list(MailSlurpAPI.Model.AttachmentMetaData.t)} | {:error, Tesla.Env.t}
  def get_email_attachments(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/attachments")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.AttachmentMetaData{}]}
    ])
  end

  @doc """
  Get email content regex pattern match results. Runs regex against email body and returns match groups.
  Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email to match against
  - content_match_options (ContentMatchOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailContentMatchResult{}} on success
  {:error, info} on failure
  """
  @spec get_email_content_match(Tesla.Env.client, String.t, MailSlurpAPI.Model.ContentMatchOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailContentMatchResult.t} | {:error, Tesla.Env.t}
  def get_email_content_match(connection, email_id, content_match_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/emails/#{email_id}/contentMatch")
    |> add_param(:body, :body, content_match_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailContentMatchResult{}}
    ])
  end

  @doc """
  Get email count

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.CountDto{}} on success
  {:error, info} on failure
  """
  @spec get_email_count(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.CountDto.t} | {:error, Tesla.Env.t}
  def get_email_count(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/emails/count")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.CountDto{}}
    ])
  end

  @doc """
  Get email content as HTML. For displaying emails in browser context.
  Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :decode (boolean()): 
  ## Returns

  {:ok, %MailSlurpAPI.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec get_email_html(Tesla.Env.client, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def get_email_html(connection, email_id, opts \\ []) do
    optional_params = %{
      :"decode" => :query
    }
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/html")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Parse and return text from an email, stripping HTML and decoding encoded characters
  Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email to perform HTML query on
  - html_selector (String.t): HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailTextLinesResult{}} on success
  {:error, info} on failure
  """
  @spec get_email_html_query(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailTextLinesResult.t} | {:error, Tesla.Env.t}
  def get_email_html_query(connection, email_id, html_selector, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/htmlQuery")
    |> add_param(:query, :"htmlSelector", html_selector)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailTextLinesResult{}}
    ])
  end

  @doc """
  Parse and return list of links found in an email (only works for HTML content)
  HTML parsing uses JSoup and UNIX line separators. Searches content for href attributes

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email to fetch text for
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailLinksResult{}} on success
  {:error, info} on failure
  """
  @spec get_email_links(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailLinksResult.t} | {:error, Tesla.Env.t}
  def get_email_links(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/links")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailLinksResult{}}
    ])
  end

  @doc """
  Get email URLs for viewing in browser or downloading
  Get a list of URLs for email content as text/html or raw SMTP message for viewing the message in a browser.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailPreviewUrls{}} on success
  {:error, info} on failure
  """
  @spec get_email_preview_ur_ls(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailPreviewUrls.t} | {:error, Tesla.Env.t}
  def get_email_preview_ur_ls(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/urls")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailPreviewUrls{}}
    ])
  end

  @doc """
  Parse and return text from an email, stripping HTML and decoding encoded characters
  Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email to fetch text for
  - opts (KeywordList): [optional] Optional parameters
    - :decode_html_entities (boolean()): Decode HTML entities
    - :line_separator (String.t): Line separator character
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailTextLinesResult{}} on success
  {:error, info} on failure
  """
  @spec get_email_text_lines(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailTextLinesResult.t} | {:error, Tesla.Env.t}
  def get_email_text_lines(connection, email_id, opts \\ []) do
    optional_params = %{
      :"decodeHtmlEntities" => :query,
      :"lineSeparator" => :query
    }
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/textLines")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailTextLinesResult{}}
    ])
  end

  @doc """
  Get all emails in all inboxes in paginated form. Email API list all.
  By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id ([String.t]): Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
    - :page (integer()): Optional page index in email list pagination
    - :size (integer()): Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :unread_only (boolean()): Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
    - :search_filter (String.t): Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
    - :since (DateTime.t): Optional filter emails received after given date time
    - :before (DateTime.t): Optional filter emails received before given date time
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageEmailProjection{}} on success
  {:error, info} on failure
  """
  @spec get_emails_paginated(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageEmailProjection.t} | {:error, Tesla.Env.t}
  def get_emails_paginated(connection, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query,
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"unreadOnly" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/emails")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageEmailProjection{}}
    ])
  end

  @doc """
  Get gravatar url for email address

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_address (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :size (String.t): 
  ## Returns

  {:ok, %MailSlurpAPI.Model.GravatarUrl{}} on success
  {:error, info} on failure
  """
  @spec get_gravatar_url_for_email_address(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.GravatarUrl.t} | {:error, Tesla.Env.t}
  def get_gravatar_url_for_email_address(connection, email_address, opts \\ []) do
    optional_params = %{
      :"size" => :query
    }
    %{}
    |> method(:get)
    |> url("/emails/gravatarFor")
    |> add_param(:query, :"emailAddress", email_address)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.GravatarUrl{}}
    ])
  end

  @doc """
  Get latest email in all inboxes. Most recently received.
  Get the newest email in all inboxes or in a passed set of inbox IDs

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_ids ([String.t]): Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes
  ## Returns

  {:ok, %MailSlurpAPI.Model.Email{}} on success
  {:error, info} on failure
  """
  @spec get_latest_email(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.Email.t} | {:error, Tesla.Env.t}
  def get_latest_email(connection, opts \\ []) do
    optional_params = %{
      :"inboxIds" => :query
    }
    %{}
    |> method(:get)
    |> url("/emails/latest")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.Email{}}
    ])
  end

  @doc """
  Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
  Get the newest email in all inboxes or in a passed set of inbox IDs

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of the inbox you want to get the latest email from
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.Email{}} on success
  {:error, info} on failure
  """
  @spec get_latest_email_in_inbox1(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.Email.t} | {:error, Tesla.Env.t}
  def get_latest_email_in_inbox1(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/latestIn")
    |> add_param(:query, :"inboxId", inbox_id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.Email{}}
    ])
  end

  @doc """
  Get all organization emails. List team or shared test email accounts
  By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id ([String.t]): Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
    - :page (integer()): Optional page index in email list pagination
    - :size (integer()): Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :unread_only (boolean()): Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
    - :search_filter (String.t): Optional search filter search filter for emails.
    - :since (DateTime.t): Optional filter emails received after given date time
    - :before (DateTime.t): Optional filter emails received before given date time
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageEmailProjection{}} on success
  {:error, info} on failure
  """
  @spec get_organization_emails_paginated(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageEmailProjection.t} | {:error, Tesla.Env.t}
  def get_organization_emails_paginated(connection, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query,
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"unreadOnly" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/emails/organization")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageEmailProjection{}}
    ])
  end

  @doc """
  Get raw email string. Returns unparsed raw SMTP message with headers and body.
  Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec get_raw_email_contents(Tesla.Env.client, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def get_raw_email_contents(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/raw")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
  Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.RawEmailJson{}} on success
  {:error, info} on failure
  """
  @spec get_raw_email_json(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.RawEmailJson.t} | {:error, Tesla.Env.t}
  def get_raw_email_json(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/raw/json")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.RawEmailJson{}}
    ])
  end

  @doc """
  Get unread email count
  Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.UnreadCount{}} on success
  {:error, info} on failure
  """
  @spec get_unread_email_count(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.UnreadCount.t} | {:error, Tesla.Env.t}
  def get_unread_email_count(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/unreadCount")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.UnreadCount{}}
    ])
  end

  @doc """
  Mark an email as read on unread
  Marks an email as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :read (boolean()): What value to assign to email read property. Default true.
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailPreview{}} on success
  {:error, info} on failure
  """
  @spec mark_as_read(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailPreview.t} | {:error, Tesla.Env.t}
  def mark_as_read(connection, email_id, opts \\ []) do
    optional_params = %{
      :"read" => :query
    }
    %{}
    |> method(:patch)
    |> url("/emails/#{email_id}/read")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailPreview{}}
    ])
  end

  @doc """
  Reply to an email
  Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of the email that should be replied to
  - reply_to_email_options (ReplyToEmailOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.SentEmailDto{}} on success
  {:error, info} on failure
  """
  @spec reply_to_email(Tesla.Env.client, String.t, MailSlurpAPI.Model.ReplyToEmailOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.SentEmailDto.t} | {:error, Tesla.Env.t}
  def reply_to_email(connection, email_id, reply_to_email_options, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/emails/#{email_id}")
    |> add_param(:body, :body, reply_to_email_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.SentEmailDto{}}
    ])
  end

  @doc """
  Send email
  Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of the inbox you want to send the email from
  - send_email_options (SendEmailOptions): 
  - opts (KeywordList): [optional] Optional parameters
    - :use_domain_pool (boolean()): Use domain pool. Optionally create inbox to send from using the mailslurp domain pool.
    - :virtual_send (boolean()): Optionally create inbox to send from that is a virtual inbox and won't send to external addresses
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec send_email_source_optional(Tesla.Env.client, String.t, MailSlurpAPI.Model.SendEmailOptions.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def send_email_source_optional(connection, inbox_id, send_email_options, opts \\ []) do
    optional_params = %{
      :"useDomainPool" => :query,
      :"virtualSend" => :query
    }
    %{}
    |> method(:post)
    |> url("/emails")
    |> add_param(:body, :body, send_email_options)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, false}
    ])
  end

  @doc """
  Validate email HTML contents
  Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.ValidationDto{}} on success
  {:error, info} on failure
  """
  @spec validate_email(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.ValidationDto.t} | {:error, Tesla.Env.t}
  def validate_email(connection, email_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/emails/#{email_id}/validate")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.ValidationDto{}}
    ])
  end
end
