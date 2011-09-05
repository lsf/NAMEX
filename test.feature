Feature: Event Management
As Application Administator 
I can add/edit/delete/view the event in the contral panel

 Scenario Outline: Create a New Event Successful
	 Given admin user enter the "home" Community page
	 And admin user enter the contral panel
	 When admin user click the "Event" menu
	 And admin user click the "Add Event" button in contral panel page
	 And admin user input the following contents for the event in the add event page
	    |Start Date		|End Date		|All Day Event		|Accept Performers		|Accept Participants		|Title		|Description		|Venue		|permissions		|tags		|
		|<Start Date>	|<End Date>		|<All Day Event>	|<Accept Performers>	|<Accept Participants>		|<Title	>	|<Description>		|<Venue>	|<permissions>		|<tags>		|
	 Then application displays the prompt message "Your request processed successfully." in the add event page
	 And application displays the following events was "added" in the event listing page
		|Date		|Time		|Title		|Actions button		|
		|<Date>		|<Time>		|<Title>	|<Actions button>	|
	Examples:
	|Start Date		|End Date		|All Day Event		|Accept Performers		|Accept Participants		|Title		|Description		|Venue		|permissions		|tags		|Date		|Time								|Actions button		|
	|today			|today+1h		|N					|Y						|Y							|test event	|event is an accident|  hefei city|anyone			|event		|today		|Start_Time-Start_Time+1h  			|Actions			|
	