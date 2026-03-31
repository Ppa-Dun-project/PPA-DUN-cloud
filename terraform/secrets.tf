resource "google_project_service" "secret_manager" {
  service            = "secretmanager.googleapis.com"
  disable_on_destroy = false
}

# ── Secret definitions ──────────────────────────────────────────────

resource "google_secret_manager_secret" "mysql_root_password" {
  secret_id = "mysql-root-password"
  replication {
    auto {}
  }
  depends_on = [google_project_service.secret_manager]
}

resource "google_secret_manager_secret" "mysql_database" {
  secret_id = "mysql-database"
  replication {
    auto {}
  }
  depends_on = [google_project_service.secret_manager]
}

resource "google_secret_manager_secret" "google_client_id" {
  secret_id = "google-client-id"
  replication {
    auto {}
  }
  depends_on = [google_project_service.secret_manager]
}

resource "google_secret_manager_secret" "external_api_key" {
  secret_id = "external-api-key"
  replication {
    auto {}
  }
  depends_on = [google_project_service.secret_manager]
}

resource "google_secret_manager_secret" "external_api_base_url" {
  secret_id = "external-api-base-url"
  replication {
    auto {}
  }
  depends_on = [google_project_service.secret_manager]
}

# ── Secret values (from variables, not hardcoded) ───────────────────

resource "google_secret_manager_secret_version" "mysql_root_password" {
  secret      = google_secret_manager_secret.mysql_root_password.id
  secret_data = var.mysql_root_password
}

resource "google_secret_manager_secret_version" "mysql_database" {
  secret      = google_secret_manager_secret.mysql_database.id
  secret_data = var.mysql_database
}

resource "google_secret_manager_secret_version" "google_client_id" {
  secret      = google_secret_manager_secret.google_client_id.id
  secret_data = var.google_client_id
}

resource "google_secret_manager_secret_version" "external_api_key" {
  secret      = google_secret_manager_secret.external_api_key.id
  secret_data = var.external_api_key
}

resource "google_secret_manager_secret_version" "external_api_base_url" {
  secret      = google_secret_manager_secret.external_api_base_url.id
  secret_data = var.external_api_base_url
}
