rule CyclopsBlink_core_command_check
{
 meta:
 author = "NCSC"
 description = "Detects the code bytes used to test the command ID
being sent to the core component of Cyclops Blink"
 hash1 = "3adf9a59743bc5d8399f67cab5eb2daf28b9b863"
 hash2 = "c59bc17659daca1b1ce65b6af077f86a648ad8a8"
 strings:
 // Check for command ID equals 0x7, 0xa, 0xb, 0xc or 0xd
 $cmd_check = {81 3F 00 18 88 09 00 05 54 00 06 3E 2F 80 00
 (07|0A|0B|0C|0D)}
 condition:
 (uint32(0) == 0x464c457f) and (#cmd_check == 5)
}
