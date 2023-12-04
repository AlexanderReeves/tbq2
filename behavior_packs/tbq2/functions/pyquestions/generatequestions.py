#This is a PYTHON based document which will automatically generate the question and answer
#mcfunction files for the Minecraft Quiz map

#It will read a questions.txt document with this structure repeating for each question
#questions.txt
#What creature are creepers afraid of?
#3
#Wolves
#Zombies
#Cats
#Magma Cubes

#Check the code is running
#print('hello world')

#Start by creating our function with one argument taking in a text doc
def createFunctionFiles (questionrawtext,askmcf,correctanswerfile,option1mcf,option2mcf,option3mcf,option4mcf):
	#ask.write('readme')
	#Read document , refered to as q
	
	#myline is identicle q, without the weird extra empty line after each line
	#myline= questionrawtext.read().splitlines()
	myline = questionrawtext
	#print(q.read())

	#for item in q:
	#	print(item)
	sixcount = 0
	#for each line in myline of quesrion strings...(where idx is the iterator)
	for idx, item in enumerate(myline):
		#count up from 1 to 6
		sixcount +=1
		#print to console
		print(item)
		print(idx)
		print("sixcount = " , sixcount)
		#if sixcount is equal to 1, our current line being read is a question
		if sixcount == 1:
			#save the question to our mcfunction question asking file, adding in the required syntax
			#{{ }} is the way to add braces tp the text file (When the text is opened with an f)
			#{} is the way to add variables into the middle of a quote based string
			askmcf.write(f"execute as @s[scores={{questionnumber={int(idx/6+1)}}}] run title @a title qwes{item}")

		#If sixcount = 2, our current line is a number corresponding with the correct answer of this prompt question
		if sixcount == 2:
			correctanswerfile.write(f"execute as @s[scores={{questionnumber={int(idx/6+1)}}}] run scoreboard players set @s correctanswer {item}")

		#IF sixcount = 3, we are reading a line in our doc that showse first option of four answers... Save that to the relevant mcfunction file to be read as a title
		if sixcount == 3:
			option1mcf.write(f"execute as @s[scores={{questionnumber={int(idx/6+1)}}}] run title @a title option1{item}")
		if sixcount == 4:
			option2mcf.write(f"execute as @s[scores={{questionnumber={int(idx/6+1)}}}] run title @a title option2{item}")
		if sixcount == 5:
			option3mcf.write(f"execute as @s[scores={{questionnumber={int(idx/6+1)}}}] run title @a title option3{item}")
		if sixcount == 6:
			option4mcf.write(f"execute as @s[scores={{questionnumber={int(idx/6+1)}}}] run title @a title option4{item}")

			
		#reset our counter back to 0 when required
		if sixcount > 5:
			sixcount = 0
		

#Open and write to document askmcf/ask.mcfunction, a mcfunction file
#with is a shortcut to skip using exceptions like 'try', 'w' means write of course
with open('ask.mcfunction', 'w') as askmcf:
	#Open the raw questions text doc as well
	questionfile = open("questions.txt", "r")
	#We also want a mcf file open/written to for setting which answer is the correct answer according to the current question via scoreboards
	correctanswerfile = open('correctanswer.mcfunction', 'w')
	#We also want 4 mcfunction files for displaying our answer options via title display
	option1mcf = open('titleopt1.mcfunction', 'w')
	option2mcf = open('titleopt2.mcfunction', 'w')
	option3mcf = open('titleopt3.mcfunction', 'w')
	option4mcf = open('titleopt4.mcfunction', 'w')
	#Call the function which will create all the data into our files
	createFunctionFiles(questionfile,askmcf,correctanswerfile,option1mcf,option2mcf,option3mcf,option4mcf)

#Close the files
askmcf.close()
questionfile.close()
correctanswerfile.close()
option1mcf.close()
option2mcf.close()
option3mcf.close()
option4mcf.close()
