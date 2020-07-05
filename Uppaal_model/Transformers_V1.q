//This file was generated from (Academic) UPPAAL 4.1.24 (rev. 29A3ECA4E5FB0808), November 2019

/*
LeaderBot will always reach the Commands_given state only when timer1 is in the interval [0,2].
*/
A[] LeaderBot1.Commands_Given imply (LeaderBot1.timer1 >= 0 and LeaderBot1.timer1 <= 2)

/*
Eventually all bots return to Idle state
*/
E<> EarthBot1.Idle or FireBot1.Idle or WaterBot1.Idle

/*
For all the paths, the WaterBot and Earthbot will get activated
*/
A<> WaterBot1.Activated && EarthBot1.Activated

/*
Eventually all the bots or some of the bots are activated
*/
E<> WaterBot1.Activated && EarthBot1.Activated && EarthBot2.Activated && FireBot1.Activated
