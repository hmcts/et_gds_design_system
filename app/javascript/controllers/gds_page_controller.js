import { Controller } from "@hotwired/stimulus";
import { initAll } from "govuk-frontend";
import Components from "../components";

export default class extends Controller {
  connect() {
    document.body.classList.add("js-enabled");
    document.body.classList.add("gds-enabled");
    initAll();
    Components.RevealOnRadioButton.init();
  }
}
