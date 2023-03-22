# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.InboxForwarderDto do
  @moduledoc """
  Inbox forwarder. Describes how an inbox will forward matching emails to designated recipients.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"inboxId",
    :"name",
    :"field",
    :"match",
    :"forwardToRecipients",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"inboxId" => String.t,
    :"name" => String.t | nil,
    :"field" => String.t,
    :"match" => String.t,
    :"forwardToRecipients" => [String.t],
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.InboxForwarderDto do
  def decode(value, _options) do
    value
  end
end

