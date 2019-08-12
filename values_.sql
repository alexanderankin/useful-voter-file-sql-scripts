LOAD DATA LOCAL INFILE 'all-fve.txt' INTO TABLE pavf
FIELDS TERMINATED BY '\t' 
ENCLOSED BY '"' 
ESCAPED BY ''
LINES TERMINATED BY '\r\n'
(
    @col1,   @col2,   @col3,   @col4,   @col5,   @col6,   @col7,   @col8,   @col9,   @col10, 
    @col11,  @col12,  @col13,  @col14,  @col15,  @col16,  @col17,  @col18,  @col19,  @col20,
    @col21,  @col22,  @col23,  @col24,  @col25,  @col26,  @col27,  @col28,  @col29,  @col30,
    @col31,  @col32,  @col33,  @col34,  @col35,  @col36,  @col37,  @col38,  @col39,  @col40,
    @col41,  @col42,  @col43,  @col44,  @col45,  @col46,  @col47,  @col48,  @col49,  @col50,
    @col51,  @col52,  @col53,  @col54,  @col55,  @col56,  @col57,  @col58,  @col59,  @col60,
    @col61,  @col62,  @col63,  @col64,  @col65,  @col66,  @col67,  @col68,  @col69,  @col70,
    @col71,  @col72,  @col73,  @col74,  @col75,  @col76,  @col77,  @col78,  @col79,  @col80,
    @col81,  @col82,  @col83,  @col84,  @col85,  @col86,  @col87,  @col88,  @col89,  @col90,
    @col91,  @col92,  @col93,  @col94,  @col95,  @col96,  @col97,  @col98,  @col99,  @col100,
    @col101, @col102, @col103, @col104, @col105, @col106, @col107, @col108, @col109, @col110,
    @col111, @col112, @col113, @col114, @col115, @col116, @col117, @col118, @col119, @col120,
    @col121, @col122, @col123, @col124, @col125, @col126, @col127, @col128, @col129, @col130,
    @col131, @col132, @col133, @col134, @col135, @col136, @col137, @col138, @col139, @col140,
    @col141, @col142, @col143, @col144, @col145, @col146, @col147, @col148, @col149, @col150,
    @col151, @col152, @col153
)
set IDNumber = @col1,
    Title =            @col2, Last =             @col3, First =            @col4,
    Middle =           @col5, Suffix =           @col6, Gender =           @col7,
    DOB =              @col8, RegistrationDate = @col9, VoterStatus =      @col10,
    StatusChangeDate = @col11, Party =            @col12, HouseNumber =      @col13,
    HouseNumberSuffix =@col14, Street =           @col15, ApartmentNumber =  @col16,
    Address2 =         @col17, City =             @col18, State =            @col19,
    Zip =              @col20, MailAddress1 =     @col21, MailAddress2 =     @col22,
    MailCity =         @col23, MailState =        @col24, MailZip =          @col25,
    LastVoteDate =     @col26, PrecinctCode =     @col27, PrecinctSplit =    @col28,
    DateLastChanged =  @col29, CustomData1 =      @col30, Phone =            @col151,
    County =           @col152, MailCountry =      @col153;

LOAD DATA LOCAL INFILE 'all-fve.txt' INTO TABLE pavf_districts
FIELDS TERMINATED BY '\t' 
ENCLOSED BY '"' 
ESCAPED BY ''
LINES TERMINATED BY '\r\n'
(
    @col1,   @col2,   @col3,   @col4,   @col5,   @col6,   @col7,   @col8,   @col9,   @col10, 
    @col11,  @col12,  @col13,  @col14,  @col15,  @col16,  @col17,  @col18,  @col19,  @col20,
    @col21,  @col22,  @col23,  @col24,  @col25,  @col26,  @col27,  @col28,  @col29,  @col30,
    @col31,  @col32,  @col33,  @col34,  @col35,  @col36,  @col37,  @col38,  @col39,  @col40,
    @col41,  @col42,  @col43,  @col44,  @col45,  @col46,  @col47,  @col48,  @col49,  @col50,
    @col51,  @col52,  @col53,  @col54,  @col55,  @col56,  @col57,  @col58,  @col59,  @col60,
    @col61,  @col62,  @col63,  @col64,  @col65,  @col66,  @col67,  @col68,  @col69,  @col70,
    @col71,  @col72,  @col73,  @col74,  @col75,  @col76,  @col77,  @col78,  @col79,  @col80,
    @col81,  @col82,  @col83,  @col84,  @col85,  @col86,  @col87,  @col88,  @col89,  @col90,
    @col91,  @col92,  @col93,  @col94,  @col95,  @col96,  @col97,  @col98,  @col99,  @col100,
    @col101, @col102, @col103, @col104, @col105, @col106, @col107, @col108, @col109, @col110,
    @col111, @col112, @col113, @col114, @col115, @col116, @col117, @col118, @col119, @col120,
    @col121, @col122, @col123, @col124, @col125, @col126, @col127, @col128, @col129, @col130,
    @col131, @col132, @col133, @col134, @col135, @col136, @col137, @col138, @col139, @col140,
    @col141, @col142, @col143, @col144, @col145, @col146, @col147, @col148, @col149, @col150,
    @col151, @col152, @col153
)
set IDNumber =    @col1, District1 =  @col31, District2 =  @col32, District3 =  @col33,
    District4 =  @col34, District5 =  @col35, District6 =  @col36, District7 =  @col37,
    District8 =  @col38, District9 =  @col39, District10 = @col40, District11 = @col41,
    District12 = @col42, District13 = @col43, District14 = @col44, District15 = @col45,
    District16 = @col46, District17 = @col47, District18 = @col48, District19 = @col49,
    District20 = @col50, District21 = @col51, District22 = @col52, District23 = @col53,
    District24 = @col54, District25 = @col55, District26 = @col56, District27 = @col57,
    District28 = @col58, District29 = @col59, District30 = @col60, District31 = @col61,
    District32 = @col62, District33 = @col63, District34 = @col64, District35 = @col65,
    District36 = @col66, District37 = @col67, District38 = @col68, District39 = @col69,
    District40 = @col70;


LOAD DATA LOCAL INFILE 'all-fve.txt' INTO TABLE pavf_elections
FIELDS TERMINATED BY '\t' 
ENCLOSED BY '"' 
ESCAPED BY ''
LINES TERMINATED BY '\r\n'
(
    @col1,   @col2,   @col3,   @col4,   @col5,   @col6,   @col7,   @col8,   @col9,   @col10, 
    @col11,  @col12,  @col13,  @col14,  @col15,  @col16,  @col17,  @col18,  @col19,  @col20,
    @col21,  @col22,  @col23,  @col24,  @col25,  @col26,  @col27,  @col28,  @col29,  @col30,
    @col31,  @col32,  @col33,  @col34,  @col35,  @col36,  @col37,  @col38,  @col39,  @col40,
    @col41,  @col42,  @col43,  @col44,  @col45,  @col46,  @col47,  @col48,  @col49,  @col50,
    @col51,  @col52,  @col53,  @col54,  @col55,  @col56,  @col57,  @col58,  @col59,  @col60,
    @col61,  @col62,  @col63,  @col64,  @col65,  @col66,  @col67,  @col68,  @col69,  @col70,
    @col71,  @col72,  @col73,  @col74,  @col75,  @col76,  @col77,  @col78,  @col79,  @col80,
    @col81,  @col82,  @col83,  @col84,  @col85,  @col86,  @col87,  @col88,  @col89,  @col90,
    @col91,  @col92,  @col93,  @col94,  @col95,  @col96,  @col97,  @col98,  @col99,  @col100,
    @col101, @col102, @col103, @col104, @col105, @col106, @col107, @col108, @col109, @col110,
    @col111, @col112, @col113, @col114, @col115, @col116, @col117, @col118, @col119, @col120,
    @col121, @col122, @col123, @col124, @col125, @col126, @col127, @col128, @col129, @col130,
    @col131, @col132, @col133, @col134, @col135, @col136, @col137, @col138, @col139, @col140,
    @col141, @col142, @col143, @col144, @col145, @col146, @col147, @col148, @col149, @col150,
    @col151, @col152, @col153
)

set IDNumber=@col1,
    Election1VoteMethod=@col71, Election1Party=@col72, Election2VoteMethod=@col73, Election2Party=@col74,
    Election3VoteMethod=@col75, Election3Party=@col76, Election4VoteMethod=@col77, Election4Party=@col78,
    Election5VoteMethod=@col79, Election5Party=@col80, Election6VoteMethod=@col81, Election6Party=@col82,
    Election7VoteMethod=@col83, Election7Party=@col84, Election8VoteMethod=@col85, Election8Party=@col86,
    Election9VoteMethod=@col87, Election9Party=@col88, Election10VoteMethod=@col89, Election10Party=@col90,
    Election11VoteMethod=@col91, Election11Party=@col92, Election12VoteMethod=@col93, Election12Party=@col94,
    Election13VoteMethod=@col95, Election13Party=@col96, Election14VoteMethod=@col97, Election14Party=@col98,
    Election15VoteMethod=@col99, Election15Party=@col100, Election16VoteMethod=@col101, Election16Party=@col102,
    Election17VoteMethod=@col103, Election17Party=@col104, Election18VoteMethod=@col105, Election18Party=@col106,
    Election19VoteMethod=@col107, Election19Party=@col108, Election20VoteMethod=@col109, Election20Party=@col110,
    Election21VoteMethod=@col111, Election21Party=@col112, Election22VoteMethod=@col113, Election22Party=@col114,
    Election23VoteMethod=@col115, Election23Party=@col116, Election24VoteMethod=@col117, Election24Party=@col118,
    Election25VoteMethod=@col119, Election25Party=@col120, Election26VoteMethod=@col121, Election26Party=@col122,
    Election27VoteMethod=@col123, Election27Party=@col124, Election28VoteMethod=@col125, Election28Party=@col126,
    Election29VoteMethod=@col127, Election29Party=@col128, Election30VoteMethod=@col129, Election30Party=@col130,
    Election31VoteMethod=@col131, Election31Party=@col132, Election32VoteMethod=@col133, Election32Party=@col134,
    Election33VoteMethod=@col135, Election33Party=@col136, Election34VoteMethod=@col137, Election34Party=@col138,
    Election35VoteMethod=@col139, Election35Party=@col140, Election36VoteMethod=@col141, Election36Party=@col142,
    Election37VoteMethod=@col143, Election37Party=@col144, Election38VoteMethod=@col145, Election38Party=@col146,
    Election39VoteMethod=@col147, Election39Party=@col148, Election40VoteMethod=@col149, Election40Party=@col150;
