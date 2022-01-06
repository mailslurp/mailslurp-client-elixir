# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.EmailPreview do
  @moduledoc """
  Preview of an email message. For full message (including body and attachments) call the &#x60;getEmail&#x60; or other email endpoints with the provided email ID.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"subject",
    :"to",
    :"from",
    :"bcc",
    :"cc",
    :"createdAt",
    :"read",
    :"attachments"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"subject" => String.t | nil,
    :"to" => [String.t],
    :"from" => String.t | nil,
    :"bcc" => [String.t] | nil,
    :"cc" => [String.t] | nil,
    :"createdAt" => DateTime.t,
    :"read" => boolean() | nil,
    :"attachments" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.EmailPreview do
  def decode(value, _options) do
    value
  end
end

