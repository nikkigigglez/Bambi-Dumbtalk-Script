﻿;------------------------------------------------------------------------------
; Random sentences insertion
;------------------------------------------------------------------------------
#Hotstring B0 Z
; randomly add bambi outburts after some specifics words
::to::
::should::
:?*:, ::
:?*{...}:... ::
  Random, Var, 1, 2 ; will trigger one of the next two outcomes
    if (var = 1) {
      Random, Var, 1, 1 ; 1 chance out of 1 to trigger this
      if (var = 1) {
        AutoTrim, off
        RandomStuff =
        ( LTrim
        like... |like, |like, |hmm... |like... |uhhh... |ummm... |um |er |uh |
        )
        randomString(RandomStuff, 10) 
      } else {          
      }
    } else {
      Random, Var, 1, 15 ; 1 chance out of 15 to trigger this
      if (var = 1) {
        AutoTrim, off
        RandomStuff =
        ( LTrim
        ... *god bambi is horny*... |... *bambi needs to be fucked*... |... *bambi wants to suck cock soooooo bad*... |... *gosh, bambi is like, so ditzy*... |... *Why is bambi so wet?*... |
        )
        randomString(RandomStuff, 5) 
      } else {
      }
    }
return

/* ; randomly add Bambi's thoughts between words (2% chance)
 *  #InputLevel 10
 *  #Hotstring B0 Z
 *  :?*: ::
 *    Random, Var, 1, 75
 *    if (var = 1) {
 *        AutoTrim, off
 *        RandomStuff =
 *          ( LTrim
 *          ... *god bambi is horny*... |... *bambi needs to be fucked*... |... *bambi wants to suck cock soooooo bad*... |hmmm... |uhhh... |ummm... |um |er |uh |
 *          )
 *        randomString(RandomStuff, 9) 
 *      } else {
 *     }
 *  return
 */

; randomly add stuff at end of 10% of messages (only when pressing Enter)
; /!\ When enabled, the Enter key doesn't triggers other hotkeys anymore
/* #InputLevel 10
 * Enter::
 *   send, %A_Space%
 *   Random, Var, 1, 1
 *     AutoTrim, off
 *     if (var = 1) {       
 *     RandomStuff =
 *     ( LTrim
 *     ` *giggles*| <3| ~|
 *     )
 *     randomString(RandomStuff, 3)
 *     sendPlay, {enter}
 *     } else {
 *     sendPlay, {enter}
 *     }
 * return
 */

