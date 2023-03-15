import "@hotwired/turbo-rails"
import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

import ShepherdRails from "shepherd-rails"
application.register("shepherd-rails", ShepherdRails)
