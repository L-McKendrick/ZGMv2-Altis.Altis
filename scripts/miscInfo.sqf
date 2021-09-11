waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary",["KAT Advanced Medical Q&A","<font color='#c96379'>Q: What is the difference between obstruction and occlusion, and how do they happen?</font>
<br />A: Obstruction happens due to a loss of airway reflexes. A real world example is the tongue falling back and blocking the airway. Occlusion is a foreign body (such as emesis, blood, a crayon etc.).
In this mod, obstruction can happen only when unit goes unconscious. However occlusion can happen when unit is unconscious and chance for that is calculated every 60 seconds. They both decrease SpO2 value. In order to remove obstruction, you either need to use Guedel tube/KingLT/Acuvacc or if you don't have such tools, you can resort to hyper-extending head of the patient which will mitigate the effect of obstruction, but you need to stay close to the patient until he awakes(Awakening will result to removing the obstruction). Occlusion can be removed by using KingLT/Acuvacc or you can try head turning and according to the chance set in addon options, it will successfully remove occlusion or it won't. Chances for both obstruction and occlusion can be changed in addon settings.

<br /><br /><font color='#c96379'>Q: What is the difference between Guedel Tube and KingLT?</font>
<br />A: Guedel tube after insertion will only prevent obstructions from happening. Patient with Guedel tube still can get occlusions. KingLT will prevent both obstructions and occlusions from happening thus 'permanently' securing the airway.

<br /><br /><br /><font color='#c96379'>Q: How do I use painkillers?</font>
<br />A: Because of the ArmA limitations, painkillers that you should use are located in magazines category. From there, you can grab them and use them both via ace interaction on your head, or medical menu. You can use each package 10x.

<br /><br /><font color='#c96379'>Q: What are the differences between pneumothorax, tension pneumothorax and hemothorax, and how do they happen and treat them?</font>
<br />A: Pneumothorax can happen from extended damage to the character. Once damage threshold is crossed, chance for pneumothorax is calculated(You can adjust the chance and threshold in addon settings). Currently if unit has pneumothorax and is unconscious, his SpO2 value will drop pretty fast. When unit is conscious, it will do nothing apart from not being able to apply Personal Aid Kit to such unit - in the future, this will be revamped. Tension pneumothorax and hemothorax can happen after you suffer from pneumothorax. Currently they are just fancy new injuries, but their dangers to the patient will be expanded in the future. Hemothorax is the state in which chest cavity is filled with fluid(mostly blood and so on). Tension pneumothorax is like hemothorax, but chest cavity is filled with gas, rather than fluid. In order to treat pneumothorax, you only have to apply Chest seal to the torso. In order to treat hemothorax, you will need to apply Chest seal first and then use AAT Kit and then using that will drain fluids. To treat tension pneumothorax, you only need AAT Kit to perform needle decompression.

<br /><br /><font color='#c96379'>Q: Pulse-oximeter, AED and AED-X - what are the differences and how do they work?</font>
<br />A: Pulse oximeter is very simple device that you can put on patient arms(IRL fingers) and it can monitor HR(Hearth Rate) and SpO2. That is all what it does. AED (Automated External Defibrillator) can be used on patients torso and give him a 'shock' in order to give him HR. We know that this is not realistic approach, but rather 'gameplay mechanics' so stay calm and enjoy the game. Other than giving a 'shock', AED cannot do anything else. AED-X is better version of AED and it does what AED does + it can monitor HR, SpO2 and BP(Blood pressure). You can connect it to the patient and it will make beeping sound(which you can turn off via ace interaction). It will be connected to that patient, so if he moves away too far from the medic, it will get disconnected. For both AED and AED-X, there are success chances which can be set in addon settings.

<br /><br /><font color='#c96379'>Q: Why I cannot use item XYZ(Defibrillator - AED or AED-X and other KAT items)</font>
<br />A: Make sure your character has proper medical level expertise. You can view the current settings for medical items in 'Configure Addons > KAT Advanced Medical'. 

<br /><br /><font color='#c96379'>Q: How do I use stretcher?</font>
<br />A: You can find backpack containing stretcher in arsenal. After that, you can deploy it and then use it via ace interactions and context menu. You can spawn stretcher both in editor or Zeus - both will work.

<br /><br /><font color='#c96379'>Q: What do SpO2 change values mean?</font>
<br />A: There are two SpO2 change values - Small and Big. SpO2 value can decrease from multiple reasons (0 HR, Obstruction/Occlusion, XYZthoraxes and their combinations). There is also time included, so before 100 seconds, SpO2 change will be 'Small' unless you combine multiple complications(2 and more) - that will become 'Big'. If nothing combines, after some time, it will change to 'Big' Current default values are 30 for 'small 'value and 66 for 'big' value - it can be changed in addon settings.
	

<br /><br /><font color='#c96379'>Q: How blood groups work in KAT and how do I use IV stand?</font>
<br />A: Each unit can choose its own blood group in addon settings if it is not forced from mission or server. If it is not forced by mission or server setting and player did not chose his blood group, blood groups will be assigned randomly. You can check the blood group by checking the dog-tag. In KAT, there are no Rh factors for blood groups, but apart from that, it will work fairly the same as in real life. There is also blood group cheat-sheet if you are unsure which blood group is compatible. If you give someone wrong blood group, you can kill him. In order to counter it, you will have to use painkillers(Tylenol). Currently blood cannot be hanged to IV stands - only the saline bags can."]];


player createDiaryRecord ["Diary",["ACRE Full Functional Crew Station (FFCS)","This interface can be opened using the ACE Interaction menu or through a shortcut (default ⇧ Shift+Ctrl+Tab ⇥). The opened intercom will be displayed in green in the HUD.

<br /><br />Volume Knob
<br />Sets the overall volume of the intercom and monitored/active radios. Red frange boosts the volume for noisy environments.

<br /><br />Monitor Knob
<br />Monitors the selected radio or all radios. Radios in this configuration are set to receive only.

<br /><br />Work Knob
<br />The selected radio is capable of receiving and transmitting.

<br /><br />Intercom Knob
<br />It has 4 positions. When at PTT, the intercom will behave as PTT activation mode, LIVE and VOX is the equivalent of Voice activation and O/R allows the FFCS to transmit a priority message by temporarily disabling all other FFCS stations.
"]];
player createDiaryRecord ["Diary",["ACRE General Information","<font color='#7FFF00' size='12' face='TahomaB'>Squad Net</font>
<br /><font color='#c96379'>PRC 343</font>
<br />Range: <500m
<br />Used by everyone.
<br />For communicaiton within squads/teams.

<br /><br /><font color='#7FFF00' size='12' face='TahomaB'>Platoon Net</font>
<br /><font color='#c96379'>PRC 152</font>
<br />(Same functionality as PRC 148)
<br />Range: 3-7km
<br />Used by FTLs/SQLs/PltCo
<br />For communication between squads.

<br /><br /><font color='#c96379'>PRC 177F</font>
<br />(Same functionality as PRC 77)
<br />Range: Whole Map
<br />Used by PltCo/RTO/FO/JTAC
<br />For communicaiton between command, platoons, and supports.

<br /><br /><font color='#c96379'>Vehicle Racks</font>
<br />Avalible in military vehicles.
<br />Additional racks can connect to handheld radios.
<br />Connect via ACE Interact

<br /><br /><font color='#7FFF00' size='12' face='TahomaB'>Vehicle Intercoms</font>
<br /><font color='#c96379'>Crew Intercom</font>
<br />Enables communication between vehicle crew members.
<br />Can connect to radio racks using FFCS.
<br />Connect via ACE Interact

<br /><br /><font color='#c96379'>Pax Intercom</font>
<br />Enables communicaton between vehicle passengers.
<br />Can connect to radio racks using FFCS.
<br />Connect via ACE Interact

<br /><br />Telephone
<br />Infantry also has the possibility, in vehicles like tanks or IFVs, to communicate with the crew and/or passengers without entering the vehicle. To do so, face the vehicle, interact with it and take the infantry telephone by selecting the appropriate network if it is not in use already. You can either put it back, give it to another player or switch networks."]];
player createDiaryRecord ["Diary",["Standard Operating Procedure","Welcome to Soldiers in Arms. This guide will outline our standard operating procedure (SOP) for our ArmA 3 missions. The purpose of this guide is not to explain how to play the game, but to clarify the specific roles and duties of each member of our operations.
<br />This guide references Dslyecxi's TTP3. You can read it for more info: https://ttp3.dslyecxi.com/

<br /><br /><font color='#7FFF00' size='12' face='TahomaB'>Rifleman</font>
<br />Core combatant. Includes AT, ammo bearer, grenadier, etc. Carries a PRC-343 radio.
<br />While capable on their own, their effectiveness is maximized when working as part of a fireteam. This includes:
<br /> -  Listen and follow the team leader, at all times.
<br /> -  Maintain effective distance. Avoid bunching up or getting separated.
<br /> - Scan for and call out contacts. Whether moving or idle, watch for hostiles and report as so: 'Contact - front - patrol - 50 meters!'
<br />- Use brevity on comms. Avoid clogging the radio, especially during combat.
<br />- Designated driver/gunner.

<br /><br /><font color='#7FFF00' size='12' face='TahomaB'>Fireteam Leader</font>
<br />Directs their fireteam.  Usually equipped with underbarrel grenade launcher. Also carries an extra PRC-152 radio. The Fireteam Leader's mantra is 'Follow me and do as I do'. Leading by example, the fireteam leader directs their team members into a single, cohesive element. This includes:
<br /> - Follows orders from the squad leader. Ensures he and his team carry out any orders given.
<br /> - Maintains momentum and awareness. Keeps his team alert, on task, and moving.
<br /> - Provides accountability for team members. Makes sure his team members are not missing, wounded, or dead. All fireteam leaders should assign and use buddy teams.

<br /><br /><font color='#7FFF00' size='12' face='TahomaB'>Squad Leader</font>
<br />Leads their fireteams. Carries a PRC-152 radio.
The squad leader acts similar to the fireteam leader, except he directs entire fireteams in order to complete objectives from command. This includes:
<br /> - Ensures that team leaders and squad members know what the mission is. Whether their own plan or the platoon leader's, they make sure everyone understands the end goal and their role.
<br /> - Dictates squad formations, rules of engagement, and general combat posture. Adapts to the situation at hand and makes adjustments as necessary.
<br /> - Directs and leads squad movement. Whenever moving from point A to B, the squad leader ensures their teams and squad members are on track.

<br /><br /><font color='#7FFF00' size='12' face='TahomaB'>Squad Medic</font>
<br />Maintains combat effectiveness of the squad. May carry a PRC-152 radio.
The squad medic not only tends the wounded, but acts as the other half of the squad leader. This includes:
<br /> - Looks out for their squad and squad leader. When not actively acting as medic, they provide rear and flank security. They also should ensure none of their squadmates are missing, wounded, or dead.
<br /> - Stays alive. The squad medic should avoid direct contact whenever possible by staying to the rear of the formation and away from the front lines.

<br /><br /><br /><font color='#7FFF00' size='12' face='TahomaB'>Platoon Leader</font>
<br />Commands squads and coordinates with support. Carries a PRC-152 and/or PRC-117F. The role of platoon commander can differ depending on the mission, but generally they command and coordinate their squads. This includes:
<br /> - Briefs the squad leaders and element leaders about the mission and their plan to complete it. Includes assigning objectives, areas of responsibility, sectors, etc.
<br /> - Supervises the execution of the plan in order to complete the mission.
<br /> - Coordinates with support. This includes air, armor, artillery, logistics, etc. to ensure they are working with the infantry."]];
player createDiaryRecord ["Diary",["ArmA Guidelines","1. Zero tolerance for intentional team-killing, trolling, renegading, lone-wolfing, cheating, or anything else that would ruin the game for others. Accidents are fine, be sure to apologize. 
<br /><br />
2. Work as a team. Listen to and follow whoever's in charge, and play your role. Ignoring, arguing with, or heckling your leads is not tolerated. We allow anyone to give their best shot at leading. If you believe your lead is doing a bad job, feel free to take a leadership role next time.
<br /><br />
3. Fill roles squad by squad. Snipers require a Spotter buddy in ZGMs"]];
player createDiaryRecord ["Diary",["General Guidelines","1. Follow the Discord community guidelines, and use basic etiquette. Use the appropriate channels. No advertisements, NSFW content, or unwanted political discussion please.
<br /><br />
2. Respect others. No unwanted insulting, slurs, spamming, heckling, provoking, cursing, or harassing of others. Keep all arguments civil and comments constructive. 
<br /><br />
3. Staff Word is final, staff have the final word and decision when it comes to SIA related situations"]];