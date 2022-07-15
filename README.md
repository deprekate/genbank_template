# genbank_template
A boilerplate template that uses the genbank pypi package to work with genbank files


Then you can add new methods to the various [genbank](https://github.com/deprekate/genbank) objects, which
will allow you to add more functionality to your own code.


An example is adding a foo method to the Locus object:
```
from genbank.locus import Locus
from genbank_template.feature import Feature
class Locus(Locus, feature=Feature):
	def foo(self):
		'''this adds a custom definition to the Locus class'''
		return 'bar'
```

or adding a foo method to the Feature object:
```
from genbank.feature import Feature
class Feature(Feature):
	def foo(self):
		'''this adds a custom definition to the Feature class'''
		return 'bar'
```

Then to use these custom methods in your main script:
```
from genbank_template.file import File
fp = File('infile')
for name,locus in fp.items():
	print(name, locus.foo())
	for feature in locus:
		print(feature, feature.foo())
```


To copy genbank_template to a new git repo:
```
git push git@github.com:deprekate/new-repo.git +main:main
```

