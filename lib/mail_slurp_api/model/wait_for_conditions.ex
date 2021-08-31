# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WaitForConditions do
  @moduledoc """
  Conditions that a &#x60;waitForXEmails&#x60; endpoint operates on. The methods wait until given conditions are met or a timeout is reached. If the conditions are met without needing to wait the results will be returned immediately. Can include &#x60;unreadOnly&#x60; to ignore already read emails that were returned in an API call or viewing in the dashboard. Can also include matches for emails containing &#x60;from&#x60;, &#x60;subject&#x60;, &#x60;hasAttachments&#x60; etc.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"count",
    :"countType",
    :"inboxId",
    :"matches",
    :"since",
    :"sortDirection",
    :"timeout",
    :"unreadOnly"
  ]

  @type t :: %__MODULE__{
    :"count" => integer(),
    :"countType" => String.t | nil,
    :"inboxId" => String.t,
    :"matches" => [MatchOption] | nil,
    :"since" => DateTime.t | nil,
    :"sortDirection" => String.t | nil,
    :"timeout" => integer(),
    :"unreadOnly" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WaitForConditions do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"matches", :list, MailSlurpAPI.Model.MatchOption, options)
  end
end

