import datasets

xsum = datasets.load_dataset('xsum')

with open('data/xsum_train/xsum_train.txt', 'w') as outfile:
    for i in range(xsum['train'].num_rows):
      if i%1000 == 0:
        print(i)
      outfile.write("Document: \n")
      outfile.write(xsum['train']['document'][i])
      outfile.write("\n")
      outfile.write("Summary: \n")
      outfile.write(xsum['train']['summary'][i])
      outfile.write("\n")
      outfile.write("\n")
