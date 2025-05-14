sap.ui.define([
    "sap/ui/core/mvc/ControllerExtension",
    "sap/ui/core/UIComponent"
  ], function (Controller, UIComponent) {
    "use strict";
    return Controller.extend("galacticadventurefrontend.ext.controller.ObjectPageExtension", {
        override: {
            onInit: function() {
                if (this.base.onInit) {
                    this.base.onInit.apply(this, arguments);
                }
                console.log("Object Page Extension onInit called");
            }
        },
      onBackPress() {
        console.log("testing")
        const oRouter = UIComponent.getRouterFor(this);
        oRouter.navTo("SpacefarersList", {}, { 
          replace: true 
        });
      }
    });
  });
  