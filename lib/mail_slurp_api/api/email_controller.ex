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
  Delete all emails
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
      { 204, false},
      { 401, false},
      { 403, false}
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
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
  Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - attachment_id (String.t): ID of attachment
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
    - :api_key (String.t): Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.
  ## Returns

  {:ok, %MailSlurpAPI.Model.binary(){}} on success
  {:error, info} on failure
  """
  @spec download_attachment(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def download_attachment(connection, attachment_id, email_id, opts \\ []) do
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
      { 200, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get email attachment as base64 encoded string (alternative to binary responses)
  Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - attachment_id (String.t): ID of attachment
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.DownloadAttachmentDto{}} on success
  {:error, info} on failure
  """
  @spec download_attachment_base64(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.DownloadAttachmentDto.t} | {:error, Tesla.Env.t}
  def download_attachment_base64(connection, attachment_id, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/attachments/#{attachment_id}/base64")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.DownloadAttachmentDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Forward email
  Forward an existing email to new recipients.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - forward_email_options (ForwardEmailOptions): forwardEmailOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec forward_email(Tesla.Env.client, String.t, MailSlurpAPI.Model.ForwardEmailOptions.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def forward_email(connection, email_id, forward_email_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/emails/#{email_id}/forward")
    |> add_param(:body, :body, forward_email_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get email attachment metadata
  Returns the metadata such as name and content-type for a given attachment and email.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - attachment_id (String.t): ID of attachment
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.AttachmentMetaData{}} on success
  {:error, info} on failure
  """
  @spec get_attachment_meta_data(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.AttachmentMetaData.t} | {:error, Tesla.Env.t}
  def get_attachment_meta_data(connection, attachment_id, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/attachments/#{attachment_id}/metadata")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.AttachmentMetaData{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get all email attachment metadata
  Returns an array of attachment metadata such as name and content-type for a given email if present.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%AttachmentMetaData{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_attachments(Tesla.Env.client, String.t, keyword()) :: {:ok, list(MailSlurpAPI.Model.AttachmentMetaData.t)} | {:error, Tesla.Env.t}
  def get_attachments(connection, email_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/emails/#{email_id}/attachments")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.AttachmentMetaData{}]},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get email content
  Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): emailId
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
      { 200, %MailSlurpAPI.Model.Email{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get email content regex pattern match results. Runs regex against email body and returns match groups.
  Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of email to match against
  - content_match_options (ContentMatchOptions): contentMatchOptions
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
      { 200, %MailSlurpAPI.Model.EmailContentMatchResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get email content as HTML
  Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): emailId
  - opts (KeywordList): [optional] Optional parameters
    - :decode (boolean()): decode
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
      { 200, false},
      { 401, false},
      { 403, false},
      { 404, false}
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
    |> method(:post)
    |> url("/emails/#{email_id}/html-query")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailTextLinesResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Parse and return text from an email, stripping HTML and decoding encoded characters
  Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - decode_html_entities (boolean()): Decode HTML entities
  - email_id (String.t): ID of email to fetch text for
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailTextLinesResult{}} on success
  {:error, info} on failure
  """
  @spec get_email_text_lines(Tesla.Env.client, boolean(), String.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailTextLinesResult.t} | {:error, Tesla.Env.t}
  def get_email_text_lines(connection, decode_html_entities, email_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/emails/#{email_id}/text")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailTextLinesResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get all emails
  By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id ([String.t]): Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
    - :page (integer()): Optional page index in email list pagination
    - :size (integer()): Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :unread_only (boolean()): Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
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
      :"unreadOnly" => :query
    }
    %{}
    |> method(:get)
    |> url("/emails")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageEmailProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get raw email string
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
      { 200, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get raw email in JSON
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
      { 200, %MailSlurpAPI.Model.RawEmailJson{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get unread email count
  Get number of emails unread

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
      { 200, %MailSlurpAPI.Model.UnreadCount{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Reply to an email
  Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_id (String.t): ID of the email that should be replied to
  - reply_to_email_options (ReplyToEmailOptions): replyToEmailOptions
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
      { 200, %MailSlurpAPI.Model.SentEmailDto{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Validate email
  Validate the HTML content of email if HTML is found. Considered valid if no HTML.

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
      { 201, %MailSlurpAPI.Model.ValidationDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end
end
