/**
 * Created by developer on 17.02.14.
 */
package de.aboutflash.rl2demo.commands {
import de.aboutflash.rl2demo.model.ApplicationModel;
import de.aboutflash.rl2demo.services.IClockService;

import robotlegs.bender.bundles.mvcs.Command;
import robotlegs.bender.framework.api.ILogger;

public class StartTimeUpdate extends Command {

    [Inject]
    public var applicationModel:ApplicationModel;

    [Inject]
    public var clockService:IClockService;

    [Inject]
    public var logger:ILogger;

    override public function execute():void {
        applicationModel.setClockRunning();
        clockService.startTimeUpdate();
        logger.debug('start timer')
    }

}
}
