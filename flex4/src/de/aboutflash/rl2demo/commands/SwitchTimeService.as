/**
 * Created by developer on 18.02.14.
 */
package de.aboutflash.rl2demo.commands {
import de.aboutflash.rl2demo.model.ApplicationModel;
import de.aboutflash.rl2demo.services.FiveSecondsClockService;
import de.aboutflash.rl2demo.services.IClockService;

import flash.events.Event;

import robotlegs.bender.bundles.mvcs.Command;
import robotlegs.bender.framework.api.IInjector;

public class SwitchTimeService extends Command {

    [Inject]
    public var applicationModel:ApplicationModel;

    [Inject]
    public var injector:IInjector;

    [Inject]
    public var event:Event;

    private var wasClockRunning:Boolean;

    override public function execute():void {
        wasClockRunning = applicationModel.isClockRunning;
        stopClock();
        switchService();
        restartClock();
    }

    private function switchService():void {
        injector.unmap(IClockService);
        injector.map(IClockService).toValue(injector.getOrCreateNewInstance(FiveSecondsClockService));
    }

    private function stopClock():void {
        if (!wasClockRunning) {
            return;
        }
        var stopCommand:StopTimeUpdate = new StopTimeUpdate();
        injector.injectInto(stopCommand);
        stopCommand.execute();
    }

    private function restartClock():void {
        if (!wasClockRunning) {
            return;
        }
        var startCommand:StartTimeUpdate = new StartTimeUpdate();
        injector.injectInto(startCommand);
        startCommand.execute();
    }
}
}
