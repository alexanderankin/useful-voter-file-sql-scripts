alter table pavf add column id integer primary key auto_increment first;
alter table pavf add unique(IDNumber);
alter table pavf_districts add unique(IDNumber);
alter table pavf_elections add unique(IDNumber);

update pavf set IDNumber = null where IDNumber = '';
update pavf set Title = null where Title = '';
update pavf set Last = null where Last = '';
update pavf set First = null where First = '';
update pavf set Middle = null where Middle = '';
update pavf set Suffix = null where Suffix = '';
update pavf set Gender = null where Gender = '';
update pavf set DOB = null where DOB = '';
update pavf set RegistrationDate = null where RegistrationDate = '';
update pavf set VoterStatus = null where VoterStatus = '';
update pavf set StatusChangeDate = null where StatusChangeDate = '';
update pavf set Party = null where Party = '';
update pavf set HouseNumber = null where HouseNumber = '';
update pavf set HouseNumberSuffix = null where HouseNumberSuffix = '';
update pavf set Street = null where Street = '';
update pavf set ApartmentNumber = null where ApartmentNumber = '';
update pavf set Address2 = null where Address2 = '';
update pavf set City = null where City = '';
update pavf set State = null where State = '';
update pavf set Zip = null where Zip = '';
update pavf set MailAddress1 = null where MailAddress1 = '';
update pavf set MailAddress2 = null where MailAddress2 = '';
update pavf set MailCity = null where MailCity = '';
update pavf set MailState = null where MailState = '';
update pavf set MailZip = null where MailZip = '';
update pavf set LastVoteDate = null where LastVoteDate = '';
update pavf set PrecinctCode = null where PrecinctCode = '';
update pavf set PrecinctSplit = null where PrecinctSplit = '';
update pavf set DateLastChanged = null where DateLastChanged = '';
update pavf set CustomData1 = null where CustomData1 = '';
update pavf set Phone = null where Phone = '';
update pavf set County = null where County = '';
update pavf set MailCountry = null where MailCountry = '';

alter table pavf add key(First);
alter table pavf add key(middle);
alter table pavf add key(last);
alter table pavf add key(HouseNumber);
alter table pavf add key(street);
alter table pavf add key(city, state, zip);
alter table pavf add column prec int after LastVoteDate;
alter table pavf add column ward int after LastVoteDate;
alter table pavf add column muni int after LastVoteDate;
update pavf set
    muni = cast(substring(PrecinctCode, 1, 3) as unsigned),
    ward = cast(substring(PrecinctCode, 6, 2) as unsigned),
    prec = cast(substring(PrecinctCode, 4, 2) as unsigned)
    where PrecinctCode REGEXP '^[0-9]{7}$';
