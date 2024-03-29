# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookResultDto do
  @moduledoc """
  Result of a webhook notification
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId",
    :"inboxId",
    :"webhookId",
    :"webhookUrl",
    :"messageId",
    :"redriveId",
    :"httpMethod",
    :"webhookEvent",
    :"responseStatus",
    :"responseTimeMillis",
    :"responseBodyExtract",
    :"resultType",
    :"createdAt",
    :"updatedAt",
    :"seen"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"userId" => String.t,
    :"inboxId" => String.t | nil,
    :"webhookId" => String.t,
    :"webhookUrl" => String.t,
    :"messageId" => String.t,
    :"redriveId" => String.t | nil,
    :"httpMethod" => String.t,
    :"webhookEvent" => String.t,
    :"responseStatus" => integer() | nil,
    :"responseTimeMillis" => integer(),
    :"responseBodyExtract" => String.t | nil,
    :"resultType" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"updatedAt" => DateTime.t,
    :"seen" => boolean()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookResultDto do
  def decode(value, _options) do
    value
  end
end

