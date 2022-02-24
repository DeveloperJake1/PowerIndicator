# PowerIndicator (1.0)
### Power Indicator allows you to make anything happen when you plug your Mac into the wall and unplug it from the wall.
Support me on Youtube: https://www.youtube.com/developerjake

<hr>




#### To change the function that happens when plugged in:
   1) Navigate to `/ChargeDetection.bash` and go to `line 55`. 
   2) You can add any shell function there or call a different script. 
   3) Feel free to remove lines `57-63`.


#### To change the function that happens when unplugged:
   1) Navigate to `/ChargeDetection.bash` and go to `line 74`. 
   2) You can add any shell function there or call a different script. 
   3) Feel free to remove line `76-81`.



#### To Run the Power Indicator in the Mac Terminal:
```shell
$ cd Downloads
$ cd "PowerIndicator (1.0)"
$ cd PI
$ bash ChargeDetection.bash
```


#### To Stop the Power Indicator: 
   - **Close the terminal tab by pressing `⌘cmd + w` in the tab that it's running in**, or just quit the terminal.

<hr>
<br><br>

# FAQ

## How Does the Power Indicator Work?
> The Power Indicator uses AppleScript to check if your mac is currently plugged in using `ioreg -w0 -l | grep ExternalChargeCapable` 
> and returns the result to CheckDetection.bash. 

## How Can I Make it Constantly running in the background?
> Don't. It's an expensive way to achieve very little, and by “expensive”, I am referring to the potential strain on computer resources, and could 
> make your CPU way louder than it is right now.
> 
> But if you really want to, first locate the `PI/ChargeDetection.bash` and remove the while loop and everything that comes before it.
> Then, you'll need to add the script to a `.plist` (Property List) file, and load it into the Launch Daemons using `launchd`. This will make it constantly
> load even when you are logged out. Again, I'm not suggesting that you should do this at all, but if you want to, that's the solution.
> 
> **More Info: https://www.launchd.info/**

## Will the Power Indicator Make my CPU Loud?
> It most likely will turn your CPU on, however it shouldn't make it too loud if your CPU is atleast 19.0 to 12.0 dBA. 

## What does it mean "[y|n]"?
> When you first run the Power Indicator in shell, it will look something like this:
```shell
>>> Launch the Power Indicator? (This will lock this tab of your terminal.)
[y|n]
```
> It is asking you for confirmation about whether or not you are sure that you want to lock this tab of the terminal. To say yes, just press `y` and hit return,
> and to cancel, press `n` then hit return. 

## Why will it lock me out of my Terminal Tab?
> The Power Indicator needs to constantly run a `while true; do` loop, because I can't have the script add itself to the LaunchDaemons which will constantly
> run in the background. You would have to do it manually which is explained in a question above.
> 
> **To make a new Terminal Tab** that you can work in, simultaneously hit `⌘cmd + T` in the shell.

<hr>

