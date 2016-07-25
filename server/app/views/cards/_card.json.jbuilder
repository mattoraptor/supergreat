json.extract! card, :id, :name, :character, :card_type, :effect, :created_at, :updated_at
json.url card_url(card, format: :json)