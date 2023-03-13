import Shepherd from "shepherd.js";
import { post } from '@rails/request.js'
import { Controller } from "@hotwired/stimulus";

class ShepherdRails extends Controller {
  static values={
    config: Object
  };
  initialize() {
    this.tour = new Shepherd.Tour(this.configValue.tour);
  }
  connect() {
    console.log("Shepherd joined the chat");
    let {steps: steps} = this.configValue;
    if (steps.length > 0) {
      steps = steps.map((step => {
        let {buttons: buttons, ...rest} = step;
        if (buttons) {
          buttons = buttons.map((button => {
            switch (button.action) {
             case "next":
              button.action = this.tour.next;
              break;

             case "back":
              button.action = this.tour.back;
              break;

             default:
              button.action = this.tour.complete;
            }
            return button;
          }));
        }
        return {
          buttons: buttons,
          ...rest
        };
      }));
    }
    console.log(steps);
    this.tour.addSteps(steps);
    this.tour.start();
  }
}

export { ShepherdRails, ShepherdRails as default };
