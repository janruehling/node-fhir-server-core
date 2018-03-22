# Instructions: replace the inside of string with the copied block of text.
# make sure that the first line starts with 2 periods! Also, escape double quotes!!
# make sure to replace the name below (in the File.open part)
# Also, this doesn't work for backbones in backbones (5 dots or more), but you can add this in manually after running
# to run : ruby copyParse.rb
# python ResourceBuilder.py STU3FILENAMEComments.txt ../STU3/FILENAME.js

inputS = ".. ExplanationOfBenefit			DomainResource	Explanation of Benefit resource
Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension
... identifier		0..*	Identifier	Business Identifier
... status	?!Σ	0..1	code	active | cancelled | draft | entered-in-error
ExplanationOfBenefitStatus (Required)
... type		0..1	CodeableConcept	Type or discipline
Example Claim Type Codes (Required)
... subType		0..*	CodeableConcept	Finer grained claim type information
Example Claim SubType Codes (Example)
... patient		0..1	Reference(Patient)	The subject of the Products and Services
... billablePeriod		0..1	Period	Period for charge submission
... created		0..1	dateTime	Creation date
... enterer		0..1	Reference(Practitioner)	Author
... insurer		0..1	Reference(Organization)	Insurer responsible for the EOB
... provider		0..1	Reference(Practitioner)	Responsible provider for the claim
... organization		0..1	Reference(Organization)	Responsible organization for the claim
... referral		0..1	Reference(ReferralRequest)	Treatment Referral
... facility		0..1	Reference(Location)	Servicing Facility
... claim		0..1	Reference(Claim)	Claim reference
... claimResponse		0..1	Reference(ClaimResponse)	Claim response reference
... outcome		0..1	CodeableConcept	complete | error | partial
Claim Processing Codes (Example)
... disposition		0..1	string	Disposition Message
... related		0..*	BackboneElement	Related Claims which may be revelant to processing this claim
.... claim		0..1	Reference(Claim)	Reference to the related claim
.... relationship		0..1	CodeableConcept	How the reference claim is related
Example Related Claim Relationship Codes (Example)
.... reference		0..1	Identifier	Related file or case reference
... prescription		0..1	Reference(MedicationRequest | VisionPrescription)	Prescription authorizing services or products
... originalPrescription		0..1	Reference(MedicationRequest)	Original prescription if superceded by fulfiller
... payee		0..1	BackboneElement	Party to be paid any benefits payable
.... type		0..1	CodeableConcept	Type of party: Subscriber, Provider, other
Claim Payee Type Codes (Example)
.... resourceType		0..1	CodeableConcept	organization | patient | practitioner | relatedperson
PayeeResourceType (Required)
.... party		0..1	Reference(Practitioner | Organization | Patient | RelatedPerson)	Party to receive the payable
... information		0..*	BackboneElement	Exceptions, special considerations, the condition, situation, prior or concurrent issues
.... sequence		1..1	positiveInt	Information instance identifier
.... category		1..1	CodeableConcept	General class of information
Claim Information Category Codes (Example)
.... code		0..1	CodeableConcept	Type of information
Exception Codes (Example)
.... timing[x]		0..1		When it occurred
..... timingDate			date
..... timingPeriod			Period
.... value[x]		0..1		Additional Data or supporting information
..... valueString			string
..... valueQuantity			Quantity
..... valueAttachment			Attachment
..... valueReference			Reference(Any)
.... reason		0..1	Coding	Reason associated with the information
Missing Tooth Reason Codes (Example)
... careTeam		0..*	BackboneElement	Care Team members
.... sequence		1..1	positiveInt	Number to covey order of careteam
.... provider		1..1	Reference(Practitioner | Organization)	Member of the Care Team
.... responsible		0..1	boolean	Billing practitioner
.... role		0..1	CodeableConcept	Role on the team
Claim Care Team Role Codes (Example)
.... qualification		0..1	CodeableConcept	Type, classification or Specialization
Example Provider Qualification Codes (Example)
... diagnosis		0..*	BackboneElement	List of Diagnosis
.... sequence		1..1	positiveInt	Number to covey order of diagnosis
.... diagnosis[x]		1..1		Patient's diagnosis
ICD-10 Codes (Example)
..... diagnosisCodeableConcept			CodeableConcept
..... diagnosisReference			Reference(Condition)
.... type		0..*	CodeableConcept	Timing or nature of the diagnosis
Example Diagnosis Type Codes (Example)
.... packageCode		0..1	CodeableConcept	Package billing code
Example Diagnosis Related Group Codes (Example)
... procedure		0..*	BackboneElement	Procedures performed
.... sequence		1..1	positiveInt	Procedure sequence for reference
.... date		0..1	dateTime	When the procedure was performed
.... procedure[x]		1..1		Patient's list of procedures performed
ICD-10 Procedure Codes (Example)
..... procedureCodeableConcept			CodeableConcept
..... procedureReference			Reference(Procedure)
... precedence		0..1	positiveInt	Precedence (primary, secondary, etc.)
... insurance		0..1	BackboneElement	Insurance or medical plan
.... coverage		0..1	Reference(Coverage)	Insurance information
.... preAuthRef		0..*	string	Pre-Authorization/Determination Reference
... accident		0..1	BackboneElement	Details of an accident
.... date		0..1	date	When the accident occurred
.... type		0..1	CodeableConcept	The nature of the accident
ActIncidentCode (Required)
.... location[x]		0..1		Accident Place
..... locationAddress			Address
..... locationReference			Reference(Location)
... employmentImpacted		0..1	Period	Period unable to work
... hospitalization		0..1	Period	Period in hospital
... item		0..*	BackboneElement	Goods and Services
.... sequence		1..1	positiveInt	Service instance
.... careTeamLinkId		0..*	positiveInt	Applicable careteam members
.... diagnosisLinkId		0..*	positiveInt	Applicable diagnoses
.... procedureLinkId		0..*	positiveInt	Applicable procedures
.... informationLinkId		0..*	positiveInt	Applicable exception and supporting information
.... revenue		0..1	CodeableConcept	Revenue or cost center code
Example Revenue Center Codes (Example)
.... category		0..1	CodeableConcept	Type of service or product
Benefit SubCategory Codes (Example)
.... service		0..1	CodeableConcept	Billing Code
USCLS Codes (Example)
.... modifier		0..*	CodeableConcept	Service/Product billing modifiers
Modifier type Codes (Example)
.... programCode		0..*	CodeableConcept	Program specific reason for item inclusion
Example Program Reason Codes (Example)
.... serviced[x]		0..1		Date or dates of Service
..... servicedDate			date
..... servicedPeriod			Period
.... location[x]		0..1		Place of service
Example Service Place Codes (Example)
..... locationCodeableConcept			CodeableConcept
..... locationAddress			Address
..... locationReference			Reference(Location)
.... quantity		0..1	SimpleQuantity	Count of Products or Services
.... unitPrice		0..1	Money	Fee, charge or cost per point
.... factor		0..1	decimal	Price scaling factor
.... net		0..1	Money	Total item cost
.... udi		0..*	Reference(Device)	Unique Device Identifier
.... bodySite		0..1	CodeableConcept	Service Location
Oral Site Codes (Example)
.... subSite		0..*	CodeableConcept	Service Sub-location
Surface Codes (Example)
.... encounter		0..*	Reference(Encounter)	Encounters related to this billed item
.... noteNumber		0..*	positiveInt	List of note numbers which apply
.... adjudication		0..*	BackboneElement	Adjudication details
..... category		1..1	CodeableConcept	Adjudication category such as co-pay, eligible, benefit, etc.
Adjudication Value Codes (Example)
..... reason		0..1	CodeableConcept	Explanation of Adjudication outcome
Adjudication Reason Codes (Example)
..... amount		0..1	Money	Monetary amount
..... value		0..1	decimal	Non-monitory value
.... detail		0..*	BackboneElement	Additional items
..... sequence		1..1	positiveInt	Service instance
..... type		1..1	CodeableConcept	Group or type of product or service
ActInvoiceGroupCode (Required)
..... revenue		0..1	CodeableConcept	Revenue or cost center code
Example Revenue Center Codes (Example)
..... category		0..1	CodeableConcept	Type of service or product
Benefit SubCategory Codes (Example)
..... service		0..1	CodeableConcept	Billing Code
USCLS Codes (Example)
..... modifier		0..*	CodeableConcept	Service/Product billing modifiers
Modifier type Codes (Example)
..... programCode		0..*	CodeableConcept	Program specific reason for item inclusion
Example Program Reason Codes (Example)
..... quantity		0..1	SimpleQuantity	Count of Products or Services
..... unitPrice		0..1	Money	Fee, charge or cost per point
..... factor		0..1	decimal	Price scaling factor
..... net		0..1	Money	Total additional item cost
..... udi		0..*	Reference(Device)	Unique Device Identifier
..... noteNumber		0..*	positiveInt	List of note numbers which apply
..... adjudication		0..*	see adjudication	Detail level adjudication details
..... subDetail		0..*	BackboneElement	Additional items
...... sequence		1..1	positiveInt	Service instance
...... type		1..1	CodeableConcept	Type of product or service
ActInvoiceGroupCode (Required)
...... revenue		0..1	CodeableConcept	Revenue or cost center code
Example Revenue Center Codes (Example)
...... category		0..1	CodeableConcept	Type of service or product
Benefit SubCategory Codes (Example)
...... service		0..1	CodeableConcept	Billing Code
USCLS Codes (Example)
...... modifier		0..*	CodeableConcept	Service/Product billing modifiers
Modifier type Codes (Example)
...... programCode		0..*	CodeableConcept	Program specific reason for item inclusion
Example Program Reason Codes (Example)
...... quantity		0..1	SimpleQuantity	Count of Products or Services
...... unitPrice		0..1	Money	Fee, charge or cost per point
...... factor		0..1	decimal	Price scaling factor
...... net		0..1	Money	Net additional item cost
...... udi		0..*	Reference(Device)	Unique Device Identifier
...... noteNumber		0..*	positiveInt	List of note numbers which apply
...... adjudication		0..*	see adjudication	Language if different from the resource
... addItem		0..*	BackboneElement	Insurer added line items
.... sequenceLinkId		0..*	positiveInt	Service instances
.... revenue		0..1	CodeableConcept	Revenue or cost center code
Example Revenue Center Codes (Example)
.... category		0..1	CodeableConcept	Type of service or product
Benefit SubCategory Codes (Example)
.... service		0..1	CodeableConcept	Billing Code
USCLS Codes (Example)
.... modifier		0..*	CodeableConcept	Service/Product billing modifiers
Modifier type Codes (Example)
.... fee		0..1	Money	Professional fee or Product charge
.... noteNumber		0..*	positiveInt	List of note numbers which apply
.... adjudication		0..*	see adjudication	Added items adjudication
.... detail		0..*	BackboneElement	Added items details
..... revenue		0..1	CodeableConcept	Revenue or cost center code
Example Revenue Center Codes (Example)
..... category		0..1	CodeableConcept	Type of service or product
Benefit SubCategory Codes (Example)
..... service		0..1	CodeableConcept	Billing Code
USCLS Codes (Example)
..... modifier		0..*	CodeableConcept	Service/Product billing modifiers
Modifier type Codes (Example)
..... fee		0..1	Money	Professional fee or Product charge
..... noteNumber		0..*	positiveInt	List of note numbers which apply
..... adjudication		0..*	see adjudication	Added items detail adjudication
... totalCost		0..1	Money	Total Cost of service from the Claim
... unallocDeductable		0..1	Money	Unallocated deductable
... totalBenefit		0..1	Money	Total benefit payable for the Claim
... payment		0..1	BackboneElement	Payment (if paid)
.... type		0..1	CodeableConcept	Partial or Complete
Example Payment Type Codes (Example)
.... adjustment		0..1	Money	Payment adjustment for non-Claim issues
.... adjustmentReason		0..1	CodeableConcept	Explanation for the non-claim adjustment
Payment Adjustment Reason Codes (Example)
.... date		0..1	date	Expected date of Payment
.... amount		0..1	Money	Payable amount after adjustment
.... identifier		0..1	Identifier	Identifier of the payment instrument
... form		0..1	CodeableConcept	Printed Form Identifier
Form Codes (Example)
... processNote		0..*	BackboneElement	Processing notes
.... number		0..1	positiveInt	Sequence number for this note
.... type		0..1	CodeableConcept	display | print | printoper
NoteType (Required)
.... text		0..1	string	Note explanitory text
.... language		0..1	CodeableConcept	Language if different from the resource
Common Languages (Extensible but limited to All Languages)
... benefitBalance		0..*	BackboneElement	Balance by Benefit Category
.... category		1..1	CodeableConcept	Type of services covered
Benefit Category Codes (Example)
.... subCategory		0..1	CodeableConcept	Detailed services covered within the type
Benefit SubCategory Codes (Example)
.... excluded		0..1	boolean	Excluded from the plan
.... name		0..1	string	Short name for the benefit
.... description		0..1	string	Description of the benefit or services covered
.... network		0..1	CodeableConcept	In or out of network
Network Type Codes (Example)
.... unit		0..1	CodeableConcept	Individual or family
Unit Type Codes (Example)
.... term		0..1	CodeableConcept	Annual or lifetime
Benefit Term Codes (Example)
.... financial		0..*	BackboneElement	Benefit Summary
..... type		1..1	CodeableConcept	Deductable, visits, benefit amount
Benefit Type Codes (Example)
..... allowed[x]		0..1		Benefits allowed
...... allowedUnsignedInt			unsignedInt
...... allowedString			string
...... allowedMoney			Money
..... used[x]		0..1		Benefits used
...... usedUnsignedInt			unsignedInt
...... usedMoney			Money"

is_back = false
is_b_f = false
num_back = 0
arr = [""]
start = true
totalString = ""

File.open("STU3ExplanationOfBenefitComments.txt", "w") { |f|
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
