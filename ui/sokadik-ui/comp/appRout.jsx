import React from 'react';
import { BrowserRouter, Switch, Route } from 'react-router-dom';
import kerdesPage from '../pages/kerdesek';
import { endGame } from '../pages/endGame';

function AppRouter() {
    return (
        <BrowserRouter>
            <Switch>
                <Route path="/" exact component={kerdesPage} />
                <Route path="/end" component={endGame} />
            </Switch>
        </BrowserRouter>
    );
}

export default AppRouter;
