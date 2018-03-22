# Instructions: replace the inside of string with the copied block of text.
# make sure that the first line starts with 2 periods! Also, escape double quotes!!
# make sure to replace the name below (in the File.open part)
# Also, this doesn't work for backbones in backbones (5 dots or more), but you can add this in manually after running
# to run : ruby copyParse.rb
# python ResourceBuilder.py STU3FILENAMEComments.txt ../STU3/FILENAME.js

inputS = ".. Request			Logical	Request Pattern
... identifier	Σ	0..*	Identifier	Business Identifier for request/order
... definition	Σ	0..*	Reference(Definition)	Instantiates protocol or definition
... basedOn	Σ	0..*	Reference(Request)	Fulfills plan, proposal or order
... replaces	Σ	0..*	Reference(Request)	Request(s) replaced by this request
... groupIdentifier	Σ	0..1	Identifier	Composite request this is part of
... status	?!Σ	1..1	code	draft | active | suspended | cancelled | completed | entered-in-error | unknown
RequestStatus (Required)
... intent	?!Σ	1..1	code	proposal | plan | order
RequestIntent (Required)
... priority	Σ	0..1	code	routine | urgent | asap | stat
RequestPriority (Required)
... code	Σ	0..1	CodeableConcept	What's being requested/ordered
... subject	Σ	1..1	Reference(Patient | Group)	Individual the service is ordered for
... context	Σ	0..1	Reference(Encounter | EpisodeOfCare)	Encounter / Episode associated with request
... occurrence[x]	Σ	0..1		When service should occur
.... occurrenceDateTime			dateTime
.... occurrencePeriod			Period
.... occurrenceTiming			Timing
... authoredOn	Σ	0..1	dateTime	When request transitioned to being actionable
... requester	ΣI	0..1	BackboneElement	Who/what is requesting service
+ onBehalfOf can only be specified if agent is practitioner or device
.... agent	Σ	1..1	Reference(Practitioner | Organization | Patient | RelatedPerson | Device)	Individual making the request
.... onBehalfOf	ΣI	0..1	Reference(Organization)	Organization agent is acting for
... performerType	Σ	0..1	CodeableConcept	Desired kind of service performer
... performer	Σ	0..1	Reference(Practitioner | Organization | Patient | Device | RelatedPerson)	Specific desired performer
... reasonCode	Σ	0..*	CodeableConcept	Why is service needed?
... reasonReference	Σ	0..*	Reference(Condition | Observation)	Why is service needed?
... supportingInfo		0..*	Reference(Any)	Extra information to use in performing request
... note		0..*	Annotation	Comments made about service request
... relevantHistory		0..*	Reference(Provenance)	Key events in history of request"

is_back = false
is_b_f = false
num_back = 0
arr = [""]
start = true
totalString = ""

File.open("STU3RequestComments.txt", "w") { |f|
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
      #is_b_f = false
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
