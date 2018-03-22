# Instructions: replace the inside of string with the copied block of text.
# make sure that the first line starts with 2 periods! Also, escape double quotes!!
# make sure to replace the name below (in the File.open part)
# Also, this doesn't work for backbones in backbones (5 dots or more), but you can add this in manually after running
# to run : ruby copyParse.rb
# python ResourceBuilder.py STU3FILENAMEComments.txt ../STU3/FILENAME.js

inputS = ".. Substance			DomainResource	A homogeneous material with a definite composition
Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension
... identifier	Σ	0..*	Identifier	Unique identifier
... status	Σ	0..1	code	active | inactive | entered-in-error
FHIRSubstanceStatus (Required)
... category	Σ	0..*	CodeableConcept	What class/type of substance this is
Substance Category Codes (Extensible)
... code	Σ	1..1	CodeableConcept	What substance this is
Substance Code (Example)
... description	Σ	0..1	string	Textual description of the substance, comments
... instance	Σ	0..*	BackboneElement	If this describes a specific package/container of the substance
.... identifier	Σ	0..1	Identifier	Identifier of the package/container
.... expiry	Σ	0..1	dateTime	When no longer valid to use
.... quantity	Σ	0..1	SimpleQuantity	Amount of substance in the package
... ingredient	Σ	0..*	BackboneElement	Composition information about the substance
.... quantity	Σ	0..1	Ratio	Optional amount (concentration)
.... substance[x]	Σ	1..1		A component of the substance
Substance Code (Example)
..... substanceCodeableConcept			CodeableConcept
..... substanceReference			Reference(Substance)	"

is_back = false
is_b_f = false
num_back = 0
arr = [""]
start = true
totalString = ""

File.open("STU3SubstanceComments.txt", "w") { |f|
  totalString << "Main\n"
  inputS.each_line do |line|
    if (line =~ /^\.\.\s+(\w+).*$/) then
      totalString << $1
    elsif ((line.include? "BackboneElement") && is_back == false) then
      start = false
      is_back = true
      is_b_f = true
      line =~ /^\.\.\.\s+(\w+)/
      #  arr.push("Backbone")
      arr[num_back] = arr[num_back] + "Backbone\n" + $1
      line =~ /^\.\.\.\s+(.+)/
      totalString << "\n"
      totalString << $1
      totalString << "\n"
    elsif (line =~ /^\.\.\.\.\s+(.*)$/ && (is_back == true)) then
      start = false
      is_b_f = false
      arr[num_back] = arr[num_back] + "\n" + $1 + "\n"
    elsif (line =~ /^\.\.\.\.\s+(.*)$/ && (is_back == false)) then
      start = false
      totalString << "\n"
      totalString << $1
      totalString <<"\n"
    elsif ((line =~ /^([^\.]{1,3}.*)$/) && is_back == true && (is_b_f == true)) then
      start = false
      is_b_f = false
      totalString << $1 + "\n"
    elsif ((line =~ /^([^\.]{1,3}.*)$/) && is_back == true && (is_b_f == false)) then
      start = false
      arr[num_back] = arr[num_back]  + $1 + "\n"
    elsif ((line =~ /^([^\.]{1,3}.*)$/) && is_back == false && (start)) then
      totalString << ""
    elsif ((line =~ /^([^\.]{1,3}.*)$/) && is_back == false) then
      start = false
      totalString << $1 + "\n"
    #  f <<"\n"
    elsif ((line =~ /^\.\.\.\s+(.*)$/) && (is_back == true) && (line.include? "BackboneElement")) then
      start = false
      is_b_f = true
      arr[num_back] = arr[num_back] + "\n"
      arr.push "\n"
      num_back = num_back + 1;
      line =~ /^\.\.\.\s+(\w+)/
      arr[num_back] = arr[num_back] + "Backbone\n" + $1
      line =~ /^\.\.\.\s+(.+)/
      totalString << "\n"
      totalString << $1
      totalString << "\n"
    elsif ((line =~ /^\.\.\.\s+(.*)$/) && (is_back == true)) then
      start = false
      is_b_f = false
      arr[num_back] = arr[num_back] + "\n"
      arr.push "\n"
      num_back = num_back + 1;
      is_back = false;
      totalString << "\n"
      totalString << $1
      totalString << "\n"
    elsif ((line =~ /^\.\.\.\s+(.*)$/) && is_back == false) then
      start = false
      totalString << "\n"
      totalString << $1
      totalString <<"\n"
    end
  end

  totalString << "\n\n"
  #I think put an if statment around line below and use "blah".split(//).last(2) check for \n
  check = totalString.split(//).last(3)
  if check[0] != "\n" then
    totalString << "\n"
  end
  arr.each {|v|
  #  f << "\n"
    totalString << v
  }
  check = totalString.split(//).last(3)
  if ((check[0] != "\n") && (check[1] != "\n")) then
    totalString << "\n\n"
  elsif ((check[0] != "\n") && (check[1] == "\n")) then
    totalString << "\n"
  end
  f << totalString
  f << "eof\n"
}
