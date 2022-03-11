from genbank.locus import Locus
from genbank_template.feature import Feature

class Locus(Locus):
	def construct_feature(self):
		'''this method allows for a Feature class to be modified through inheritance in other code '''
		return Feature

	def foo(self):
		'''this adds a custom definition to the Locus class'''
		return 'bar'



