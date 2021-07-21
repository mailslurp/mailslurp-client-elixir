# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.SendEmailOptions do
  @moduledoc """
  Options for sending an email message from an inbox. You must provide one of: &#x60;to&#x60;, &#x60;toGroup&#x60;, or &#x60;toContacts&#x60; to send an email. All other parameters are optional. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"addTrackingPixel",
    :"attachments",
    :"bcc",
    :"body",
    :"cc",
    :"charset",
    :"from",
    :"html",
    :"isHTML",
    :"replyTo",
    :"sendStrategy",
    :"subject",
    :"template",
    :"templateVariables",
    :"to",
    :"toContacts",
    :"toGroup",
    :"useInboxName"
  ]

  @type t :: %__MODULE__{
    :"addTrackingPixel" => boolean() | nil,
    :"attachments" => [String.t] | nil,
    :"bcc" => [String.t] | nil,
    :"body" => String.t | nil,
    :"cc" => [String.t] | nil,
    :"charset" => String.t | nil,
    :"from" => String.t | nil,
    :"html" => boolean() | nil,
    :"isHTML" => boolean() | nil,
    :"replyTo" => String.t | nil,
    :"sendStrategy" => String.t | nil,
    :"subject" => String.t | nil,
    :"template" => String.t | nil,
    :"templateVariables" => Map | nil,
    :"to" => [String.t] | nil,
    :"toContacts" => [String.t] | nil,
    :"toGroup" => String.t | nil,
    :"useInboxName" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.SendEmailOptions do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"templateVariables", :struct, MailSlurpAPI.Model.Map, options)
  end
end

