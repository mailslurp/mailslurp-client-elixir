# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.PageEmailProjection do
  @moduledoc """
  Paginated email projection results. EmailProjections and EmailPreviews are essentially the same but have legacy naming issues. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full email entity use the projection ID with individual method calls. For emails there are several methods for fetching message bodies and attachments.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content",
    :"pageable",
    :"total",
    :"last",
    :"totalElements",
    :"totalPages",
    :"size",
    :"number",
    :"sort",
    :"first",
    :"numberOfElements",
    :"empty"
  ]

  @type t :: %__MODULE__{
    :"content" => [EmailProjection] | nil,
    :"pageable" => PageableObject | nil,
    :"total" => integer() | nil,
    :"last" => boolean() | nil,
    :"totalElements" => integer() | nil,
    :"totalPages" => integer() | nil,
    :"size" => integer() | nil,
    :"number" => integer() | nil,
    :"sort" => Sort | nil,
    :"first" => boolean() | nil,
    :"numberOfElements" => integer() | nil,
    :"empty" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.PageEmailProjection do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"content", :list, MailSlurpAPI.Model.EmailProjection, options)
    |> deserialize(:"pageable", :struct, MailSlurpAPI.Model.PageableObject, options)
    |> deserialize(:"sort", :struct, MailSlurpAPI.Model.Sort, options)
  end
end

