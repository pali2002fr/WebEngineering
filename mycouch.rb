require 'couchDB'

begin
	server = CouchDB::Server.new "67.23.79.113", 5984
	database = CouchDB::Database.new server, "pali2002fr"
	database.delete_if_exists!
	database.create_if_missing!

	document_one = CouchDB::Document.new database, "_id" => "test_document_1", "category" => "one"
	document_one.save
rescue
	puts "whoops"
ensure
	puts "finished"
end
