import pandas as pd
def outcome(k,test,train,labels):
	summ=0
	arr =[]
	for j in range(len(train)):
		for i in range(len(test)):
			summ = summ+ (train[j][i]-test[i])**2
		summ = summ**(0.5)
		v=[]
		v.append(summ)
		v.append(train[j][-1])
		arr.append(v)

	arr =sorted(arr,key=lambda x:x[0]) #distance based sorting


	cz=0
	co=0
	for i in range(k):  # Set the value of k in knn
		if(arr[i][1]==0):
			cz=cz+1
		else:
			co=co+1
	if(co>cz):
		labels.append(1)
	else:
		labels.append(0)


df = pd.read_csv('SPECT.csv')
df = df.sample(frac=1)
df=df.values.tolist()
accuracy =0
recall=0
preci=0
count=0

n_fold = 10

for j in range(0,len(df)//n_fold):


	test=df[j*n_fold:(j+1)*n_fold]
	train=df[0:j*n_fold]+df[(j+1)*n_fold:len(df)]


	k_value = 5


	labels=[]
	for i in range(len(test)):
		outcome(k_value,test[i],train,labels)
	c=0
	for i in range(len(test)):
		if(labels[i]==test[i][-1]):
			c=c+1
	accuracy=accuracy+ c/n_fold*100
	print(len(test))

	tn=0
	fn=0
	tp=0
	fp=0
	for i in range(len(test)):
		if(labels[i]==0 and test[i][-1]==0):
			tn=tn+1
		elif(labels[i]==1 and test[i][-1]==1):
			tp=tp+1
		elif(labels[i]==1 and test[i][-1]==0):
			fp=fp+1
		else:
			fn=fn+1
	if(tp+fn !=0):
		rec= tp/(tp+fn)
		recall=recall+rec
	if(tp+fp !=0):
		prec = tp/(tp+fp)
		preci=preci+prec
	count=count+1

print("Accuracy is ", accuracy/count)
print("Precision is",preci/count)
print("Recall is",recall/count)


	