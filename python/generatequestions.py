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

#Open and write to document f
#with is a shortcut to skip using exceptions like 'try', 'w' means write of course
with open('ask.mcfunction', 'w') as ask:
	#ask.write('readme')
	#Read document , refered to as q
	q = open("questions.txt", "r")
	#myline is identicle q, without the weird extra empty line after each line
	myline= q.read().splitlines()
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
			#{{ }} is the way tonadd braces tp the text file
			#{} is the way to add variables into the middle of a quote based string
			ask.write(f"execute as @e[tag=bob,scores={{questionnumber={idx/6+1}}}] run title @a title qwes{item}")
		#reset our counter back to 0 when required
		if sixcount > 5:
			sixcount = 0
		

#Close the files
ask.close()
q.close()