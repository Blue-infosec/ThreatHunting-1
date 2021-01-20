/*
  Zloader detection - this file is free for commerical use and basis for product detection
*/

import "vt"

rule ZloaderXLS
{
  strings:
    $0 = {B9202CEDF8B56B55DFC369C04292461DFFC168F0C975DF1312A521A22CC51D7F8E857F73F7E38F6EA01D19E3047B609F8A1DD4F16329B39D4A4504308CC43596E114EE4D184F90844B1E55428E4EC06F422B5BD56AB3922092FA5E8A12707B77322101F646CAA5BFBB70DEA770994AA10602CA87CA35B62C34369CD61442CC459772EF18D18E0FF384EC64849F48DFA34848B8D1F1ABFACFAFECDEA8A09DC288CA0DB686DD40FF1576854138DDD273F2685C4E5AAF}
    $1 = {457863656C20342E30204D6163726F73}
  condition:
    vt.metadata.new_file and
    all of them
}

rule ZloaderXLSBehavior
{
  strings:
    $0 = {992416C9D8B2A755FBF74CD25442A820166C2CD933F79E3BE372BD1F07B5C3989CA74AAFF2422B24EB1B475DA5DF374FD9AD5689811A183C61A50F98F4BABEBC2837878049899A52A57BE670674CB23D8E90721F90A4D2FA3802CB35762680FD800ECD7551DC18EB899138E3C943D7E503B6B01D583DEEE5F99824E290B4BA3F364EAC4A430883B3C092D4ECA8F946C916422ECAB927F52EA42B89A1CD59C254F919B0E85E6535D135A8DE20F20B8C12C3B00C895FCF6720192DE6BF3B9E89ECDBD6596CBCDD8EB28E7C365ECC4EC1FF1460F53FE813}
    $1 = {457863656C20342E30204D6163726F73}
  condition:
    vt.metadata.new_file and
    all of them
}

rule ZloaderDLL
{
  strings:
    $0 = {C69CB5F9A703F54F601B4FDDA36E5AD1279DFE0EFD19444FE10498F2601BAD0C691BF4D04AC15E5060A4EE813B9DE29FAA1BF4D82E9FDA53D534AFED291CF4D85B82F52956F65F2263DCBE58C69CBB0380A4CB80705BD6254961F94F6021FA55669F8BEDFD271A2A3B9B75CEDFB0165D6CAB64B4C087F55364556D1B4AE9C41F27A389D1E019E04F4BB38BEBFE794CA9B847277394C0B9D1E51EAF4F5B8355B1C1DB4A99AE9E62D71FF412C6D6CFB9CAAEAE1DCCA9305AA9B7B03D75F1411B4B9DBD192B1EA3656853}
    $1 = {C14B43BBDDE31693D6DCAC579F200F546C2006EE1BB74204B9800B667C7F5EDD31E467DB1B6D17929A0D6B8376733682F28C448CA3010FE39146B3E3D9D42F639F81699C634C65E60A837C10F4C028DD5865D0962EF2D350BC3BB0887460887D7CB4C7C925A840B5E51678147CE0F0F0A7A4C82C46E91C99DC6B1CD31DCF894E5EE1E1D816D97020289615F90CFDF72369BB4EC5F5C28860958E8E}
  condition:
    vt.metadata.new_file and
    all of them
}

rule ZloaderDLLNew
{
  strings:
    $0 = {9CB5F9A703F54F601B4FDDA36E5AD1279DFE0EFD19444FE10498F2601BAD0C691BF4D04AC15E5060A4EE813B9DE29FAA1BF4D82E9FDA53D534AFED291CF4D85B82F52956F65F2263DCBE58C69CBB0380A4CB80705BD6254961F94F6021FA55669F8BEDFD271A2A3B9B75CEDFB0165D6CAB64B4C087F55364556D1B4AE9C41F27A389D1E019E04F4BB38BEBFE794CA9B847277394C0B9D1E51EAF4F5B8355B1C1DB4A99AE9E62D71FF412C6D6CFB9CAAEAE1DCCA9305AA9B7B03D75F1411B4B9DBD192B1EA365685336C7A984D634A3B3F05022B654EECD9876B103605B3BE7524FA0CECEF8F5BC3B9F76D46CE370378DDFE84454CD56F94528C3DB6CCF2234F546371A9C640A61094F3793A3D5F39B9B77F88D926E8D10E8DF0BC3AEA4CE5929DDD584462EEEB92E6A19B2428310C0BFBC}
  condition:
    vt.metadata.new_file and
    all of them
}

rule ZloaderXLSInvoice
{
  strings:
    $0 = {FFCCFF06000E0005FF0000B2B2B2FF010007000E0005FF0000B2B2B2FF010008000E0005FF0000B2B2B2FF010009000E0005FF0000B2B2B2FF010093020B0039000600004F75747075749208770092080000}
    $1 = {0206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF01009302100036000B00004C696E6B65642043656C6C92084B00920800}
    $2 = {010312FF0900480065006100640069006E006700200033000000030005000C000703000044546AFF250005000207000E00070432338EA9DBFF020093020E00340009000048656164696E67203492083900920800000000000000}
    $3 = {010311FF0900480065006100640069006E006700200032000000030005000C000703000044546AFF250005000207000E000704FF3FA2B8E1FF050093020E00330009000048656164696E67203392084700920800000000}
    $4 = {0004AD20E00014000F000000F5FF200000941111970B970B00049620E000140011000000F5FF200000946666BF1FBF1F0004B720E000140005002B00F5FF200000F8}
    $5 = {000004AB20E000140005000000F5FF2000009C1111160B160B00049A20E00014000E000000F5FF200000941111BF1FBF1F00049620E000140005000900F5FF20}
    $6 = {00FF250005000206000E00070400004472C4FF010007000E00070400004472C4FF0600930211003D000C00005761726E696E67205465787492083F0092080000}
    $7 = {003F3F3FFF010007000E0005FF00003F3F3FFF010008000E0005FF00003F3F3FFF010009000E0005FF00003F3F3FFF0100930204003A8005FF92082400920800}
    $8 = {41646D696E6973747261746F722020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020}
  condition:
    all of them
}


rule ZloaderDLLFancy
{
  strings:
    $0 = {3C3F786D6C2076657273696F6E3D27312E302720656E636F64696E673D275554462D3827207374616E64616C6F6E653D27796573273F3E0D0A3C617373656D626C7920786D6C6E733D2775726E3A736368656D61732D6D6963726F736F66742D636F6D3A61736D2E763127206D616E696665737456657273696F6E3D27312E30273E0D0A20203C7472757374496E666F20786D6C6E733D2275726E3A736368656D61732D6D6963726F736F66742D636F6D3A61736D2E7633223E0D0A202020203C73656375726974793E0D0A2020202020203C72657175657374656450726976696C656765733E0D0A20202020202020203C726571756573746564457865637574696F6E4C6576656C206C6576656C3D276173496E766F6B6572272075694163636573733D2766616C736527202F3E0D0A2020202020203C2F72657175657374656450726976696C656765733E0D0A202020203C2F73656375726974793E0D0A20203C2F7472757374496E666F3E0D0A3C2F617373656D626C793E0D0A}
    $1 = {00720061006D006500740065007200560061006C00750065003E000D000A000900090009003C006400650076003A0074007900700065003E000D000A0009000900090009003C006D0061006D006C003A006E0061006D0065003E0073007400720069006E0067005B005D003C002F006D0061006D006C003A006E0061006D0065003E000D000A0009000900090009003C006D0061006D006C003A0075007200690020002F003E000D000A000900090009003C002F006400650076003A0074007900700065003E000D000A000900090009003C006400650076003A00640065006600610075006C007400560061006C00750065003E003C002F006400650076003A00640065006600610075006C007400560061006C00750065003E000D000A00090009003C002F0063006F006D006D0061}
    $2 = {8B45E00BF78D3C023BF872043BFA73188D460133D23BC6720583F801730333D24285D28BF07401418B45C88D14303BD68955BC72043BD0730141034DCCC1EA1F03C90BCA8D343F8975E08B75BC894DE8C1E91803F680C1308BC7C1E81F0BF0880B}
    $3 = {0064003D002200660061006C0073006500220020007600610072006900610062006C0065004C0065006E006700740068003D00220074007200750065002200200067006C006F006200620069006E0067003D002200660061006C00730065002200200070006900700065006C0069006E00650049006E007000750074003D002200660061006C00730065002200200070006F0073006900740069006F006E003D0022006E0061006D006500640022003E000D000A000900090009003C006D0061006D006C003A006E0061006D0065003E}
    $4 = {002F006D0061006D006C003A006E0061006D0065003E000D000A0009000900090009003C006D0061006D006C003A0075007200690020002F003E000D000A0009000900090009003C006D0061006D006C003A006400650073006300720069007000740069006F006E0020002F003E000D000A000900090009003C002F006400650076003A0074007900700065003E}
    $5 = {6685FF7D438BCFF7D90FB7F103FEF645D4017403FF45B08B4DDC8B5DD88B55D8D16DDCC1E11FD1EB0BD98B4DD4C1E21FD1E90BCA4E895DD8894DD475D1837DB000740566834DD40166817DD4008077118B4DD481E1FFFF0100}
    $6 = {000D000A000900090009003C006D0061006D006C003A006400650073006300720069007000740069006F006E003E000D000A0009000900090009003C006D0061006D006C003A0070006100720061003E000D000A00090009000900090009003C0021002D002D0020006400650073006300720069007000740069006F006E00200020002D002D003E000D}
    $7 = {F6FF751B8365F60066817DFAFFFF750966C745FA008040EB0E66FF45FAEB08FF45F6EB03FF45F2663DFF7F731C668B55F2668955E08B55F48955E28B55F80BC18955E6668945EAEB1C66F7D91BC98365E40081E1}
    $8 = {55A48B75C003D285F68975B07E588D5415E08955A88B559C83C2088955AC8B55A88B75AC0FB7360FB7128B7FFC0FAFD6836590008D34173BF772043BF27307C74590010000}
    $9 = {00008B55AC8B75C003D285F68975B07E528D75D88D5415E08975A48955B88B55A48B75B80FB7360FB7128365BC000FAFD68B70FC8D1C163BDE72043BDA7307C745BC01}
    $10 = {E0F64518018B55A08B4DB466890A74320FBFC9014D143945147F276683220066817D940080C64203010F95C0FEC8240D0420884202C6420430C6420500E9AFF9FFFF}
    $11 = {F80148088365EC008D0C3F8BD7C1EA1F8D3C1B0BFA8B50088BF3C1EE1F8D1C128B55080BDE89088978048958080FBE128D34113BF18955F072043BF27307C745EC01}
    $12 = {0023C881E2FF7F00006685C9895DA0C645D0CCC645D1CCC645D2CCC645D3CCC645D4CCC645D5CCC645D6CCC645D7CCC645D8CCC645D9CCC645DAFBC645DB3FC7}
    $13 = {8B4D988B55A803C985D289559C7E558D4C0DC483C308894DA4895DA08B4DA08B55A40FB7120FB709836588000FAFCA8B56FC8D1C0A3BDA72043BD97307C74588}
    $14 = {55F88B7DF48B75F4D16DF8C1E21FD1EF0BFA8B55F0C1E61FD1EA0BD6FF4DBC897DF48955F075CF837DB800740566834DF00166817DF0008077118B55F081E2FF}
    $15 = {83C10484D274523A51FC754D8A50FD84D2743C3A51FD75378A50FE84D274263A51FE75218A50FF84D274103A51FF750B8345FC04397DFC72C2EB3F0FB640FF0F}
    $16 = {00894D947406C643022DEB04C64302206685D28B75F48B7DF0752E85F6752A85FF752666213B663BC80F95C0FEC8240D0420884302C6430301C6430430C64305}
    $17 = {FFFF4B8A034B3C357D0E8B4DC0EB44803B397509C603304B3B5DC073F23B5DC08B45A073044366FF00FE032AD880EB030FBECB885803C6440104008B458C8B4D}
    $18 = {4741497350726F636573736F724665617475726550726573656E74}
    $19 = {446C6C52656769737465725365727665724030}
    $20 = {496E7465726C6F636B656444656372656D656E74}
    $21 = {496E7465726C6F636B6564496E6372656D656E74}
  condition:
    all of them
}
