import { Controller } from "@hotwired/stimulus";
import { initAll } from "govuk-frontend";
import Components from "../components";

export default class extends Controller {
  connect() {
    if (document.body.dataset.gdsPageInitialised === "true") return;

    document.body.dataset.gdsPageInitialised = "true";
    document.body.classList.add("js-enabled");
    document.body.classList.add("gds-enabled");
    document.body.classList.add("govuk-frontend-supported");
    initAll();
    Components.RevealOnRadioButton.init();
  }
}
