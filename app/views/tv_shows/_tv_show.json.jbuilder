json.extract! tv_show, :id, :name, :show_time, :channel_id, :created_at, :updated_at
json.url tv_show_url(tv_show, format: :json)
