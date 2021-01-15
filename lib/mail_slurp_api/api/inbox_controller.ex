# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.InboxController do
  @moduledoc """
  API calls for all endpoints tagged `InboxController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Create an Inbox (email address)
  Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :description (String.t): Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
    - :email_address (String.t): A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    - :expires_at (DateTime.t): Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
    - :expires_in (integer()): Number of milliseconds that inbox should exist for
    - :favourite (boolean()): Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering
    - :name (String.t): Optional name of the inbox. Displayed in the dashboard for easier search
    - :tags ([String.t]): Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    - :use_domain_pool (boolean()): Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field.
  ## Returns

  {:ok, %MailSlurpAPI.Model.Inbox{}} on success
  {:error, info} on failure
  """
  @spec create_inbox(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.Inbox.t} | {:error, Tesla.Env.t}
  def create_inbox(connection, opts \\ []) do
    optional_params = %{
      :"description" => :query,
      :"emailAddress" => :query,
      :"expiresAt" => :query,
      :"expiresIn" => :query,
      :"favourite" => :query,
      :"name" => :query,
      :"tags" => :query,
      :"useDomainPool" => :query
    }
    %{}
    |> method(:post)
    |> url("/inboxes")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.Inbox{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Create an inbox with additional options
  Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - create_inbox_dto (CreateInboxDto): createInboxDto
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.Inbox{}} on success
  {:error, info} on failure
  """
  @spec create_inbox_with_options(Tesla.Env.client, MailSlurpAPI.Model.CreateInboxDto.t, keyword()) :: {:ok, MailSlurpAPI.Model.Inbox.t} | {:error, Tesla.Env.t}
  def create_inbox_with_options(connection, create_inbox_dto, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/inboxes/withOptions")
    |> add_param(:body, :body, create_inbox_dto)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.Inbox{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Delete all inboxes
  Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_all_inboxes(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_all_inboxes(connection, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/inboxes")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  Delete inbox
  Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_inbox(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_inbox(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/inboxes/#{inbox_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end

  @doc """
  List All Inboxes Paginated
  List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return(, and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :favourite (boolean()): Optionally filter results for favourites only
    - :page (integer()): Optional page index in inbox list pagination
    - :search (String.t): Optionally filter by search words partial matching ID, tags, name, and email address
    - :size (integer()): Optional page size in inbox list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :tag (String.t): Optionally filter by tags
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageInboxProjection{}} on success
  {:error, info} on failure
  """
  @spec get_all_inboxes(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageInboxProjection.t} | {:error, Tesla.Env.t}
  def get_all_inboxes(connection, opts \\ []) do
    optional_params = %{
      :"favourite" => :query,
      :"page" => :query,
      :"search" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"tag" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/paginated")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageInboxProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
  List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): Id of inbox that emails belongs to
  - opts (KeywordList): [optional] Optional parameters
    - :limit (integer()): Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
    - :min_count (integer()): Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
    - :retry_timeout (integer()): Maximum milliseconds to spend retrying inbox database until minCount emails are returned
    - :since (DateTime.t): Exclude emails received before this ISO 8601 date time
    - :size (integer()): Alias for limit. Assessed first before assessing any passed limit.
    - :sort (String.t): Sort the results by received date and direction ASC or DESC
  ## Returns

  {:ok, [%EmailPreview{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_emails(Tesla.Env.client, String.t, keyword()) :: {:ok, list(MailSlurpAPI.Model.EmailPreview.t)} | {:error, Tesla.Env.t}
  def get_emails(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"limit" => :query,
      :"minCount" => :query,
      :"retryTimeout" => :query,
      :"since" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/emails")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.EmailPreview{}]},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get an expired inbox record
  Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - expired_id (String.t): ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.ExpiredInboxDto{}} on success
  {:error, info} on failure
  """
  @spec get_expired_inbox_record_by_id(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.ExpiredInboxDto.t} | {:error, Tesla.Env.t}
  def get_expired_inbox_record_by_id(connection, expired_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/expired-records/#{expired_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.ExpiredInboxDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get expired inbox record for a previously existing inbox
  Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of inbox you want to retrieve (not the inbox ID)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.ExpiredInboxDto{}} on success
  {:error, info} on failure
  """
  @spec get_expired_inbox_record_by_inbox_id(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.ExpiredInboxDto.t} | {:error, Tesla.Env.t}
  def get_expired_inbox_record_by_inbox_id(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/expired-record")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.ExpiredInboxDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  List records of expired inboxes
  Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in inbox sent email list pagination
    - :size (integer()): Optional page size in inbox sent email list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageExpiredInboxRecordProjection{}} on success
  {:error, info} on failure
  """
  @spec get_expired_inbox_records(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageExpiredInboxRecordProjection.t} | {:error, Tesla.Env.t}
  def get_expired_inbox_records(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/expired-records")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageExpiredInboxRecordProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get Inbox
  Returns an inbox's properties, including its email address and ID.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.Inbox{}} on success
  {:error, info} on failure
  """
  @spec get_inbox(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.Inbox.t} | {:error, Tesla.Env.t}
  def get_inbox(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.Inbox{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get inbox emails paginated
  Get a paginated list of emails in an inbox. Does not hold connections open.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): Id of inbox that emails belongs to
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in inbox emails list pagination
    - :size (integer()): Optional page size in inbox emails list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageEmailPreview{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_emails_paginated(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageEmailPreview.t} | {:error, Tesla.Env.t}
  def get_inbox_emails_paginated(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/emails/paginated")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageEmailPreview{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get Inbox Sent Emails
  Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in inbox sent email list pagination
    - :size (integer()): Optional page size in inbox sent email list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageSentEmailProjection{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_sent_emails(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageSentEmailProjection.t} | {:error, Tesla.Env.t}
  def get_inbox_sent_emails(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/sent")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageSentEmailProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get inbox tags
  Get all inbox tags

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%String{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_inbox_tags(Tesla.Env.client, keyword()) :: {:ok, list(String.t)} | {:error, Tesla.Env.t}
  def get_inbox_tags(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/tags")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, []},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  List Inboxes / Email Addresses
  List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended. You can provide a limit and sort parameter.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :size (integer()): Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, [%Inbox{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_inboxes(Tesla.Env.client, keyword()) :: {:ok, list(MailSlurpAPI.Model.Inbox.t)} | {:error, Tesla.Env.t}
  def get_inboxes(connection, opts \\ []) do
    optional_params = %{
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.Inbox{}]},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Send Email
  Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of the inbox you want to send the email from
  - opts (KeywordList): [optional] Optional parameters
    - :send_email_options (SendEmailOptions): Options for the email
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec send_email(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def send_email(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"sendEmailOptions" => :body
    }
    %{}
    |> method(:post)
    |> url("/inboxes/#{inbox_id}")
    |> add_optional_params(optional_params, opts)
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
  Send email and return sent confirmation
  Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with link the the sent object created for it.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of the inbox you want to send the email from
  - opts (KeywordList): [optional] Optional parameters
    - :send_email_options (SendEmailOptions): Options for the email
  ## Returns

  {:ok, %MailSlurpAPI.Model.SentEmailDto{}} on success
  {:error, info} on failure
  """
  @spec send_email_and_confirm(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.SentEmailDto.t} | {:error, Tesla.Env.t}
  def send_email_and_confirm(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"sendEmailOptions" => :body
    }
    %{}
    |> method(:post)
    |> url("/inboxes/#{inbox_id}/confirm")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.SentEmailDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Set inbox favourited state
  Set and return new favourite state for an inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - set_inbox_favourited_options (SetInboxFavouritedOptions): setInboxFavouritedOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.Inbox{}} on success
  {:error, info} on failure
  """
  @spec set_inbox_favourited(Tesla.Env.client, String.t, MailSlurpAPI.Model.SetInboxFavouritedOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.Inbox.t} | {:error, Tesla.Env.t}
  def set_inbox_favourited(connection, inbox_id, set_inbox_favourited_options, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/inboxes/#{inbox_id}/favourite")
    |> add_param(:body, :body, set_inbox_favourited_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.Inbox{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Update Inbox
  Update editable fields on an inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - update_inbox_options (UpdateInboxOptions): updateInboxOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.Inbox{}} on success
  {:error, info} on failure
  """
  @spec update_inbox(Tesla.Env.client, String.t, MailSlurpAPI.Model.UpdateInboxOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.Inbox.t} | {:error, Tesla.Env.t}
  def update_inbox(connection, inbox_id, update_inbox_options, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/inboxes/#{inbox_id}")
    |> add_param(:body, :body, update_inbox_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.Inbox{}},
      { 204, false},
      { 401, false},
      { 403, false}
    ])
  end
end
