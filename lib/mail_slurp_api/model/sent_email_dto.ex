# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.SentEmailDto do
  @moduledoc """
  Sent email details
  """

  @derive [Poison.Encoder]
  defstruct [
    :"attachments",
    :"bcc",
    :"body",
    :"bodyMD5Hash",
    :"cc",
    :"charset",
    :"from",
    :"id",
    :"inboxId",
    :"isHTML",
    :"pixelIds",
    :"replyTo",
    :"sentAt",
    :"subject",
    :"to",
    :"userId"
  ]

  @type t :: %__MODULE__{
    :"attachments" => [String.t] | nil,
    :"bcc" => [String.t] | nil,
    :"body" => String.t | nil,
    :"bodyMD5Hash" => String.t | nil,
    :"cc" => [String.t] | nil,
    :"charset" => String.t | nil,
    :"from" => String.t | nil,
    :"id" => String.t | nil,
    :"inboxId" => String.t | nil,
    :"isHTML" => boolean() | nil,
    :"pixelIds" => [String.t] | nil,
    :"replyTo" => String.t | nil,
    :"sentAt" => DateTime.t,
    :"subject" => String.t | nil,
    :"to" => [String.t] | nil,
    :"userId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.SentEmailDto do
  def decode(value, _options) do
    value
  end
end

