#################################################
# Ruby script to gather all of the wwzc recording
# titles into a simple textfile database

# Author: David Gallant
# Date: February 9, 2012
#################################################
require 'rubygems'
require 'pathname'
require 'json'

PATH='GENERAL-TEISHO-LIBRARY'
DB_FILE='titles.txt'



#titles = File.new(DB_FILE, "w+") #new file, overwrite existing, read/write mode
@titles = [] #create array of hashes
@ht=-1

def rec_path(path, file)
	
	@ht+=1
	@titles[@ht]= {}
	
	#puts path
	@titles[@ht]['series_title'] = File.basename(path) #name of series
	@titles[@ht]['series_recordings'] = [] #an array of all recordings in series
	
	#titles.syswrite("\n" + File.basename(path) + ",")
	
	path.children.collect do |child|
		if file and child.file?
			#puts "\t#{child}"
		 	@titles[@ht]['series_recordings'] << File.basename(child)
		 	#titles.syswrite(File.basename(child) + ",")
		 	
		elsif child.directory?
			rec_path(child, file) # + [child]
		end
	
	end #.select { |x| x }.flatten(1)
end


# only directories
#rec_path(Pathname.new(dir), false)
# directories and normal files
rec_path(Pathname.new(PATH), true)

puts @titles.to_json



#titles.close #close file


