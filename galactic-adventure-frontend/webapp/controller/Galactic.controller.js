sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("galacticadventurefrontend.controller.Galactic", {
        onInit() {
            const oModel = this.getOwnerComponent().getModel()
            let oBinding = oModel.bindList("/Spacefarers")

            oBinding.requestContexts().then((aContexts)=>{
                let aData = aContexts.map((oContext)=>{
                    const oObject = oContext.getObject();
                    return oObject
                })
                console.log(aData)

            })
        }
    });
});