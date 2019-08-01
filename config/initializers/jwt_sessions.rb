JWTSessions.algorithm = "HS256"

JWTSessions.encryption_key = Rails.application.credentials.dig(:jwt)

