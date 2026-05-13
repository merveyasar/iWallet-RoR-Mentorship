// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)


// Importmap sayesinde doğrudan isimle çağırabiliyoruz
import Notification from "@stimulus-components/notification"

// Manuel kayıt yapalım
application.register("notification", Notification)