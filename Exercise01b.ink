/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/


->Cave_Mouth

== Cave_Mouth ==
You are at the enterance to a cave. {not Torch_Pickup: There is a torch on the floor.} The cave extends to the east, west and south.
+ [Take the south tunnel] -> South_Tunnel
+ [Take the east tunnel] -> East_Tunnel
+ [Take the west tunnel] -> West_Tunnel
* [ Pick up the Torch ] -> Torch_Pickup

== East_Tunnel ==
You are now in the East Tunnel. It is very dark and you can't see anything.

* { Torch_Pickup } [ Light the Torch ] -> East_Tunnel_Lit
+ [Go back] -> Cave_Mouth
->END

== West_Tunnel ==
You are now in the West Tunnel. It is very dark and you can't see anything. 
* { Torch_Pickup } [ Light the Torch ] -> West_Tunnel_Lit
+ [ Go back ] -> Cave_Mouth
 ->END 

=== South_Tunnel ===
You are now in the South Tunnel. It is very dark and you cant't see anything.

* { Torch_Pickup } [ Light the Torch ] -> South_Tunnel_Lit
+ [Go back] -> Cave_Mouth
    -> END


=== Torch_Pickup ===
You now have a Torch! May it light the way.
+ [ Continue On! ] -> Cave_Mouth
-> END

=== East_Tunnel_Lit ===
The light from your torch glints off of the thousands of coins in the room.
* [End]  
    -> end

=== West_Tunnel_Lit ===
You wave your way though what appears to be an empty room, suddenly you lose your footing and fall to the cave floor. Your torch still in hand.
+ [ Stand up and look around ] -> Stand_Up
-> END

=== South_Tunnel_Lit ===
Your eyes slowly adjust to the room. You blink and squint your eyes then take a step back in awe. The room before you glitters and glistens. The walls are lined with giant crystals!
-> end

=== Stand_Up ===
You turn back to look at what you stumbled over. Only to find what remained of another weary travler. A sword through his chest. Nothing but bones now. 
  
+ [Pick up the sword]  
    -> pick_up_sword

+ [Leave the sword]  
    -> leave_sword
-> END

=== pick_up_sword ===
You kneel down and grasp the sword, feeling its cold metal against your palm. It feels well-balanced, and the blade gleams with a strange, otherworldly light.

You rise to your feet, sword in hand, and continue deeper into the cave. The sound of clinking metal echoes in the distance, and you soon spot a suit of armor, seemingly animated by some unseen force, guarding a chest.

+ [Fight the possessed suit of armor]  
    -> fight_with_sword

+ [Run away]  
    -> run_away

=== leave_sword ===
You decide not to pick up the sword, turning your back on it. You move deeper into the cave without it. Soon, you encounter a suit of armor, its eyes glowing faintly, guarding a chest.

+ [Fight the possessed suit of armor]  
    -> fight_without_sword

+ [Run away]  
    -> run_away

=== run_away ===
You turn and flee from the armored guardian, your heart pounding in your chest. The cave's narrow passageways offer you no resistance, and you find the entrance again, stumbling out into the daylight, safe but empty-handed.

+ [End]  
    -> end

=== fight_with_sword ===
With the sword in your hand, you charge toward the possessed suit of armor. The battle is fierce, but you manage to land a decisive blow, breaking the enchantment that controlled the armor. The armor clatters to the ground in a heap of useless metal.

With the chest now unguarded, you open it, hoping to and find a treasure of gold and jewels. Your victory is sweet,but not as you expected.

Left in the old chest is simply a gathering of scrolls with a singular letter, closed with a wax seal.

+ [Gather your Findings]  
    -> Letter_and_Scrolls

=== fight_without_sword ===
You draw a deep breath and prepare to face the armored guardian, even though you’re unarmed. The battle is hopeless from the start. You dodge his first heavy swing, your hopes higher than ever. 
You turn your budy to face the enemy at hand and, the armor swings a heavy rock, smashing it against your skull with a sickening crack.

You fall to the ground, your vision fading as your vision goes dark. The flickering of your nearby torch crackles as you fade to black.

May this all have been just a bad dream.
    -> END

=== Letter_and_Scrolls === 
You gather what you can, and with heavy limbs find your way back to the mouth of the cave. 

Now in daylight you peel back the waxy seal to read what lies within. 

With fancy script and lettering, you read back. 

"Your journey is far from over my fellow adventurer. The gatherings of this chest is all of my findings from my lifetime. Of maps and names from my days. You have won your battle today, rest now and travel on tomorrow."

+ [End]  
    -> end

=== end ===
The adventure is over. The choices you made shaped your fate. Whether you emerged victorious or empty-handed only the cave will know your story.

+ [ Return to Cave Opening? ] -> Cave_Mouth

