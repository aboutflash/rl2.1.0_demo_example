/**
 * Created by developer on 18.02.14.
 */
package de.aboutflash.rl2demo.commands {
import de.aboutflash.rl2demo.services.IClockService;

import robotlegs.bender.bundles.mvcs.Command;

public class StopTimeUpdate extends Command {

    [Inject]
    public var clockService:IClockService;

    override public function execute():void {
        clockService.stopTimeUpdate();
    }
}
}
