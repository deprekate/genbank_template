from genbank.file import File
from genbank_template.locus import Locus

class File(File):
	def construct_locus(self):
		return Locus()
