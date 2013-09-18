secrets_file = "#{Rails.root}/config/secrets.yml"

SECRETS = if File.exists?(secrets_file)
  raw_config = File.read(secrets_file)
  YAML.load(raw_config)[Rails.env].symbolize_keys
else
  Hash.new
end
