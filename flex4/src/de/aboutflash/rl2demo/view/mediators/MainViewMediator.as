/**
 * Created by developer on 18.02.14.
 */
package de.aboutflash.rl2demo.view.mediators {
import de.aboutflash.rl2demo.view.events.MainViewEvent;

import robotlegs.bender.bundles.mvcs.Mediator;

public class MainViewMediator extends Mediator {
    public function MainViewMediator() {
        super();
    }

    override public function initialize():void {
        addViewListener(MainViewEvent.START_TIMER, onStartTimer);
    }

    private function onStartTimer(event:MainViewEvent):void {
        dispatch(event);
    }

    private function onStopTimer(event:MainViewEvent):void {
        dispatch(event);
    }
}
}
