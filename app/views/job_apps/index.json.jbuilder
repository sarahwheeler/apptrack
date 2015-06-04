json.array!(@job_apps) do |job_app|
  json.extract! job_app, :id, :link, :date_saved, :date_applied
  json.url job_app_url(job_app, format: :json)
end
