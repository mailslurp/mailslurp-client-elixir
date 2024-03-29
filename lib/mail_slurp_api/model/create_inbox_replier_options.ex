# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.CreateInboxReplierOptions do
  @moduledoc """
  Options for creating an inbox replier. Repliers can be attached to inboxes and send automated responses when an inbound email matches given criteria.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"inboxId",
    :"name",
    :"field",
    :"match",
    :"replyTo",
    :"subject",
    :"from",
    :"charset",
    :"ignoreReplyTo",
    :"isHTML",
    :"body",
    :"templateId",
    :"templateVariables"
  ]

  @type t :: %__MODULE__{
    :"inboxId" => String.t,
    :"name" => String.t | nil,
    :"field" => String.t,
    :"match" => String.t,
    :"replyTo" => String.t | nil,
    :"subject" => String.t | nil,
    :"from" => String.t | nil,
    :"charset" => String.t | nil,
    :"ignoreReplyTo" => boolean() | nil,
    :"isHTML" => boolean() | nil,
    :"body" => String.t | nil,
    :"templateId" => String.t | nil,
    :"templateVariables" => %{optional(String.t) => Map} | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.CreateInboxReplierOptions do
  def decode(value, _options) do
    value
  end
end

