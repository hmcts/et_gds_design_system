import RevealOnRadioButton from "./app/javascript/components/RevealOnRadioButton";
import { initAll } from "govuk-frontend";
import "./stylesheet.scss";
import Components from "./app/javascript/components";
import GdsPageController from "./app/javascript/controllers/gds_page_controller";
const EtGdsDesignSystem = {
  Components: Components,
};
EtGdsDesignSystem.initAll = (application) => {
  console.log("EdGdsDesignSystem.initAll was called");
  application.register("gds-page", GdsPageController);
};
export { EtGdsDesignSystem, Components };
