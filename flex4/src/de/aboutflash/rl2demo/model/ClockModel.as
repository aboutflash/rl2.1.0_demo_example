/**
 * Created by developer on 17.02.14.
 */
package de.aboutflash.rl2demo.model {
import de.aboutflash.rl2demo.model.events.ClockEvent;

import flash.events.IEventDispatcher;

public class ClockModel implements IClockModel {
    [Inject]
    public var eventDispatcher:IEventDispatcher;

    private var date:Date = new Date(0);

    public function update(date:Date):void {
        this.date = date;
        eventDispatcher.dispatchEvent(new ClockEvent(date, ClockEvent.CLOCK_UPDATE))
    }
}
}
