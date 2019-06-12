trigger casetrigger on Case (after update, after insert, after delete, after undelete) {
    // -------------------------------------------------
    // https://GRAX.io/
    // Support Contact - Support At HardingPoint.com
    // -------------------------------------------------
    try {
        // Please change the 3rd parameter to "false" if you want to execute this process asynchronously (Queueable job)
        // another comment that is changed to test update at 1.32pm
        // also this one
        grax.GRAXApi.jsonContentCallout(Trigger.new, Trigger.old, true);
    } catch(exception ex) {
        // Handle all exceptions from environment.
        System.debug('[GRAX Trigger Case] ' + ex.getMessage());
    }
}