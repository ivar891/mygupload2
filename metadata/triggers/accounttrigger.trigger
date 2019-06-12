trigger accounttrigger on Account (after update, after insert, after delete, after undelete) {
    // -------------------------------------------------
    // https://GRAX.io/
    // Support Contact - Support At HardingPoint.com
    // -------------------------------------------------
    try {
        // Please change the 3rd parameter to "false" if you want to execute this process asynchronously (Queueable job)
        grax.GRAXApi.jsonContentCallout(Trigger.new, Trigger.old, true);
    } catch(exception ex) {
        // Handle all exceptions from environment.
        // Handle it for a change now at 1.32pm
        System.debug('[GRAX Trigger Account] ' + ex.getMessage());
    }
}