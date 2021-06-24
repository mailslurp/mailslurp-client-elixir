# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.InboxRulesetProjection do
  @moduledoc """
  Representation of an inbox ruleset
  """

  @derive [Poison.Encoder]
  defstruct [
    :"action",
    :"handler",
    :"id",
    :"inboxId",
    :"scope",
    :"target"
  ]

  @type t :: %__MODULE__{
    :"action" => String.t,
    :"handler" => String.t,
    :"id" => String.t,
    :"inboxId" => String.t,
    :"scope" => String.t,
    :"target" => String.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.InboxRulesetProjection do
  def decode(value, _options) do
    value
  end
end

