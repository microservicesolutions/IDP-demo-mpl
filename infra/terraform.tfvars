project_id = "idp-poc-495014"
region     = "europe-west2"

project_services = {
  spec = [
    {
      name         = "cloud-run-required-apis"
      service_list = ["run.googleapis.com"]
    }
  ]
}

cloud_run = {
  spec = [
    {
      name = "frontend-ui"
      type = "SERVICE"
      containers = {
        app = {
          image = "europe-west2-docker.pkg.dev/idp-poc-495014/ui-frontend/ui-frontend@sha256:d51f38b5a97358cefc63b3f9414c34fcc21b337d1e32fef91d50b1868dfce2b6"
        }
      }
    }
  ]
}
