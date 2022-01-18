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
  Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
  Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :email_address (String.t): A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    - :tags ([String.t]): Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    - :name (String.t): Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
    - :description (String.t): Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
    - :use_domain_pool (boolean()): Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
    - :favourite (boolean()): Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
    - :expires_at (DateTime.t): Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
    - :expires_in (integer()): Number of milliseconds that inbox should exist for
    - :allow_team_access (boolean()): DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
    - :inbox_type (String.t): HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`.
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxDto{}} on success
  {:error, info} on failure
  """
  @spec create_inbox(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.InboxDto.t} | {:error, Tesla.Env.t}
  def create_inbox(connection, opts \\ []) do
    optional_params = %{
      :"emailAddress" => :query,
      :"tags" => :query,
      :"name" => :query,
      :"description" => :query,
      :"useDomainPool" => :query,
      :"favourite" => :query,
      :"expiresAt" => :query,
      :"expiresIn" => :query,
      :"allowTeamAccess" => :query,
      :"inboxType" => :query
    }
    %{}
    |> method(:post)
    |> url("/inboxes")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.InboxDto{}}
    ])
  end

  @doc """
  Create an inbox ruleset
  Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): inboxId
  - create_inbox_ruleset_options (CreateInboxRulesetOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxRulesetDto{}} on success
  {:error, info} on failure
  """
  @spec create_inbox_ruleset(Tesla.Env.client, String.t, MailSlurpAPI.Model.CreateInboxRulesetOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxRulesetDto.t} | {:error, Tesla.Env.t}
  def create_inbox_ruleset(connection, inbox_id, create_inbox_ruleset_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/inboxes/#{inbox_id}/rulesets")
    |> add_param(:body, :body, create_inbox_ruleset_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxRulesetDto{}}
    ])
  end

  @doc """
  Create an inbox with default options. Uses MailSlurp domain pool address and is private.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxDto{}} on success
  {:error, info} on failure
  """
  @spec create_inbox_with_defaults(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.InboxDto.t} | {:error, Tesla.Env.t}
  def create_inbox_with_defaults(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/inboxes/withDefaults")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.InboxDto{}}
    ])
  end

  @doc """
  Create an inbox with options. Extended options for inbox creation.
  Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - create_inbox_dto (CreateInboxDto): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxDto{}} on success
  {:error, info} on failure
  """
  @spec create_inbox_with_options(Tesla.Env.client, MailSlurpAPI.Model.CreateInboxDto.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxDto.t} | {:error, Tesla.Env.t}
  def create_inbox_with_options(connection, create_inbox_dto, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/inboxes/withOptions")
    |> add_param(:body, :body, create_inbox_dto)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.InboxDto{}}
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
      { 204, false}
    ])
  end

  @doc """
  Delete inbox
  Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): 
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
      { 204, false}
    ])
  end

  @doc """
  Does inbox exist
  Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_address (String.t): Email address
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxExistsDto{}} on success
  {:error, info} on failure
  """
  @spec does_inbox_exist(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxExistsDto.t} | {:error, Tesla.Env.t}
  def does_inbox_exist(connection, email_address, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/exists")
    |> add_param(:query, :"emailAddress", email_address)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxExistsDto{}}
    ])
  end

  @doc """
  Remove expired inboxes
  Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :before (DateTime.t): Optional expired at before flag to flush expired inboxes that have expired before the given time
  ## Returns

  {:ok, %MailSlurpAPI.Model.FlushExpiredInboxesResult{}} on success
  {:error, info} on failure
  """
  @spec flush_expired(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.FlushExpiredInboxesResult.t} | {:error, Tesla.Env.t}
  def flush_expired(connection, opts \\ []) do
    optional_params = %{
      :"before" => :query
    }
    %{}
    |> method(:delete)
    |> url("/inboxes/expired")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.FlushExpiredInboxesResult{}}
    ])
  end

  @doc """
  List All Inboxes Paginated
  List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in list pagination
    - :size (integer()): Optional page size in list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :favourite (boolean()): Optionally filter results for favourites only
    - :search (String.t): Optionally filter by search words partial matching ID, tags, name, and email address
    - :tag (String.t): Optionally filter by tags. Will return inboxes that include given tags
    - :team_access (boolean()): DEPRECATED. Optionally filter by team access.
    - :since (DateTime.t): Optional filter by created after given date time
    - :before (DateTime.t): Optional filter by created before given date time
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageInboxProjection{}} on success
  {:error, info} on failure
  """
  @spec get_all_inboxes(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageInboxProjection.t} | {:error, Tesla.Env.t}
  def get_all_inboxes(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"favourite" => :query,
      :"search" => :query,
      :"tag" => :query,
      :"teamAccess" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/paginated")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageInboxProjection{}}
    ])
  end

  @doc """
  Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
  List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): Id of inbox that emails belongs to
  - opts (KeywordList): [optional] Optional parameters
    - :size (integer()): Alias for limit. Assessed first before assessing any passed limit.
    - :limit (integer()): Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
    - :sort (String.t): Sort the results by received date and direction ASC or DESC
    - :retry_timeout (integer()): Maximum milliseconds to spend retrying inbox database until minCount emails are returned
    - :delay_timeout (integer()): 
    - :min_count (integer()): Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
    - :unread_only (boolean()): 
    - :before (DateTime.t): Exclude emails received after this ISO 8601 date time
    - :since (DateTime.t): Exclude emails received before this ISO 8601 date time
  ## Returns

  {:ok, [%EmailPreview{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_emails(Tesla.Env.client, String.t, keyword()) :: {:ok, list(MailSlurpAPI.Model.EmailPreview.t)} | {:error, Tesla.Env.t}
  def get_emails(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"size" => :query,
      :"limit" => :query,
      :"sort" => :query,
      :"retryTimeout" => :query,
      :"delayTimeout" => :query,
      :"minCount" => :query,
      :"unreadOnly" => :query,
      :"before" => :query,
      :"since" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/emails")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.EmailPreview{}]}
    ])
  end

  @doc """
  Get Inbox. Returns properties of an inbox.
  Returns an inbox's properties, including its email address and ID.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxDto{}} on success
  {:error, info} on failure
  """
  @spec get_inbox(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxDto.t} | {:error, Tesla.Env.t}
  def get_inbox(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxDto{}}
    ])
  end

  @doc """
  Search for an inbox with the provided email address
  Get a inbox result by email address

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - email_address (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxByEmailAddressResult{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_by_email_address(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxByEmailAddressResult.t} | {:error, Tesla.Env.t}
  def get_inbox_by_email_address(connection, email_address, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/byEmailAddress")
    |> add_param(:query, :"emailAddress", email_address)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxByEmailAddressResult{}}
    ])
  end

  @doc """
  Get total inbox count

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.CountDto{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_count(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.CountDto.t} | {:error, Tesla.Env.t}
  def get_inbox_count(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/count")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.CountDto{}}
    ])
  end

  @doc """
  Get email count in inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): Id of inbox that emails belongs to
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.CountDto{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_email_count(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.CountDto.t} | {:error, Tesla.Env.t}
  def get_inbox_email_count(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/emails/count")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.CountDto{}}
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
    - :since (DateTime.t): Optional filter by received after given date time
    - :before (DateTime.t): Optional filter by received before given date time
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageEmailPreview{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_emails_paginated(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageEmailPreview.t} | {:error, Tesla.Env.t}
  def get_inbox_emails_paginated(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/emails/paginated")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageEmailPreview{}}
    ])
  end

  @doc """
  Get all inbox IDs
  Get list of inbox IDs

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxIdsResult{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_ids(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.InboxIdsResult.t} | {:error, Tesla.Env.t}
  def get_inbox_ids(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inboxes/ids")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxIdsResult{}}
    ])
  end

  @doc """
  Get Inbox Sent Emails
  Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in inbox sent email list pagination
    - :size (integer()): Optional page size in inbox sent email list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :search_filter (String.t): Optional sent email search
    - :since (DateTime.t): Optional filter by sent after given date time
    - :before (DateTime.t): Optional filter by sent before given date time
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageSentEmailProjection{}} on success
  {:error, info} on failure
  """
  @spec get_inbox_sent_emails(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageSentEmailProjection.t} | {:error, Tesla.Env.t}
  def get_inbox_sent_emails(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/sent")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageSentEmailProjection{}}
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
      { 200, []}
    ])
  end

  @doc """
  List Inboxes and email addresses
  List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :size (integer()): Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :since (DateTime.t): Optional filter by created after given date time
    - :before (DateTime.t): Optional filter by created before given date time
  ## Returns

  {:ok, [%InboxDto{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_inboxes(Tesla.Env.client, keyword()) :: {:ok, list(MailSlurpAPI.Model.InboxDto.t)} | {:error, Tesla.Env.t}
  def get_inboxes(connection, opts \\ []) do
    optional_params = %{
      :"size" => :query,
      :"sort" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MailSlurpAPI.Model.InboxDto{}]}
    ])
  end

  @doc """
  List Organization Inboxes Paginated
  List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in list pagination
    - :size (integer()): Optional page size in list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Optional filter by created after given date time
    - :before (DateTime.t): Optional filter by created before given date time
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageOrganizationInboxProjection{}} on success
  {:error, info} on failure
  """
  @spec get_organization_inboxes(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageOrganizationInboxProjection.t} | {:error, Tesla.Env.t}
  def get_organization_inboxes(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/organization")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageOrganizationInboxProjection{}}
    ])
  end

  @doc """
  List inbox rulesets
  List all rulesets attached to an inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in inbox ruleset list pagination
    - :size (integer()): Optional page size in inbox ruleset list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Optional filter by created after given date time
    - :before (DateTime.t): Optional filter by created before given date time
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageInboxRulesetDto{}} on success
  {:error, info} on failure
  """
  @spec list_inbox_rulesets(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageInboxRulesetDto.t} | {:error, Tesla.Env.t}
  def list_inbox_rulesets(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/rulesets")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageInboxRulesetDto{}}
    ])
  end

  @doc """
  List inbox tracking pixels
  List all tracking pixels sent from an inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Optional page index in inbox tracking pixel list pagination
    - :size (integer()): Optional page size in inbox tracking pixel list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
    - :search_filter (String.t): Optional search filter
    - :since (DateTime.t): Optional filter by created after given date time
    - :before (DateTime.t): Optional filter by created before given date time
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageTrackingPixelProjection{}} on success
  {:error, info} on failure
  """
  @spec list_inbox_tracking_pixels(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.PageTrackingPixelProjection.t} | {:error, Tesla.Env.t}
  def list_inbox_tracking_pixels(connection, inbox_id, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query,
      :"searchFilter" => :query,
      :"since" => :query,
      :"before" => :query
    }
    %{}
    |> method(:get)
    |> url("/inboxes/#{inbox_id}/tracking-pixels")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageTrackingPixelProjection{}}
    ])
  end

  @doc """
  Send Email
  Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of the inbox you want to send the email from
  - send_email_options (SendEmailOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec send_email(Tesla.Env.client, String.t, MailSlurpAPI.Model.SendEmailOptions.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def send_email(connection, inbox_id, send_email_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/inboxes/#{inbox_id}")
    |> add_param(:body, :body, send_email_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, false}
    ])
  end

  @doc """
  Send email and return sent confirmation
  Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): ID of the inbox you want to send the email from
  - send_email_options (SendEmailOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.SentEmailDto{}} on success
  {:error, info} on failure
  """
  @spec send_email_and_confirm(Tesla.Env.client, String.t, MailSlurpAPI.Model.SendEmailOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.SentEmailDto.t} | {:error, Tesla.Env.t}
  def send_email_and_confirm(connection, inbox_id, send_email_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/inboxes/#{inbox_id}/confirm")
    |> add_param(:body, :body, send_email_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MailSlurpAPI.Model.SentEmailDto{}}
    ])
  end

  @doc """
  Send a test email to inbox
  Send an inbox a test email to test email receiving is working

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec send_test_email(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def send_test_email(connection, inbox_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/inboxes/#{inbox_id}/send-test-email")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false}
    ])
  end

  @doc """
  Set inbox favourited state
  Set and return new favourite state for an inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): 
  - set_inbox_favourited_options (SetInboxFavouritedOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxDto{}} on success
  {:error, info} on failure
  """
  @spec set_inbox_favourited(Tesla.Env.client, String.t, MailSlurpAPI.Model.SetInboxFavouritedOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxDto.t} | {:error, Tesla.Env.t}
  def set_inbox_favourited(connection, inbox_id, set_inbox_favourited_options, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/inboxes/#{inbox_id}/favourite")
    |> add_param(:body, :body, set_inbox_favourited_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxDto{}}
    ])
  end

  @doc """
  Update Inbox. Change name and description. Email address is not editable.
  Update editable fields on an inbox

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - inbox_id (String.t): 
  - update_inbox_options (UpdateInboxOptions): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.InboxDto{}} on success
  {:error, info} on failure
  """
  @spec update_inbox(Tesla.Env.client, String.t, MailSlurpAPI.Model.UpdateInboxOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.InboxDto.t} | {:error, Tesla.Env.t}
  def update_inbox(connection, inbox_id, update_inbox_options, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/inboxes/#{inbox_id}")
    |> add_param(:body, :body, update_inbox_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.InboxDto{}}
    ])
  end
end
