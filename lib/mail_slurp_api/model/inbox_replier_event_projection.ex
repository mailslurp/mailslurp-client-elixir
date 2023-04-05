# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.InboxReplierEventProjection do
  @moduledoc """
  Inbox replier event
  """

  @derive [Poison.Encoder]
  defstruct [
    :"message",
    :"id",
    :"status",
    :"userId",
    :"recipients",
    :"emailId",
    :"inboxId",
    :"createdAt",
    :"sentId",
    :"replierId"
  ]

  @type t :: %__MODULE__{
    :"message" => String.t | nil,
    :"id" => String.t | nil,
    :"status" => String.t | nil,
    :"userId" => String.t | nil,
    :"recipients" => [String.t] | nil,
    :"emailId" => String.t | nil,
    :"inboxId" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"sentId" => String.t | nil,
    :"replierId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.InboxReplierEventProjection do
  def decode(value, _options) do
    value
  end
end

