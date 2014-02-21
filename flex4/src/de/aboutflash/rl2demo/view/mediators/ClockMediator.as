/**
 * Created by developer on 17.02.14.
 */
package de.aboutflash.rl2demo.view.mediators {
import de.aboutflash.rl2demo.model.events.ClockEvent;
import de.aboutflash.rl2demo.view.widgets.IClockMediator;
import de.aboutflash.rl2demo.view.widgets.IClockWidget;

import robotlegs.bender.bundles.mvcs.Mediator;
import robotlegs.bender.framework.api.ILogger;

public class ClockMediator extends Mediator implements IClockMediator {
    [Inject]
    public var view:IClockWidget;

    [Inject]
    public var logger:ILogger;


    override public function initialize():void {
        addContextListener(ClockEvent.CLOCK_UPDATE, onClockUpdate);
    }

    private function onClockUpdate(event:ClockEvent):void {
        view.showDate(event.date);
        logger.debug("Mediator updates ClockWidget: " + event.date.toTimeString);
    }

}
}
