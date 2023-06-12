# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.UpdateInboxReplierOptions do
  @moduledoc """
  Options for updating an inbox replier
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
    :"isHTML",
    :"ignoreReplyTo",
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
    :"isHTML" => boolean() | nil,
    :"ignoreReplyTo" => boolean() | nil,
    :"body" => String.t | nil,
    :"templateId" => String.t | nil,
    :"templateVariables" => %{optional(String.t) => Map} | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.UpdateInboxReplierOptions do
  def decode(value, _options) do
    value
  end
end
