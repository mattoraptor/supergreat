json.extract! monster, :id, :name, :health, :attack, :defense, :effect, :created_at, :updated_at
json.url monster_url(monster, format: :json)