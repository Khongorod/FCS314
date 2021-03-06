rule CyclopsBlink_module_initialisation
{
 meta:
 author = "NCSC"
 description = "Detects the code bytes used to initialise the modules
built into Cyclops Blink"
 hash1 = "3adf9a59743bc5d8399f67cab5eb2daf28b9b863"
 hash2 = "c59bc17659daca1b1ce65b6af077f86a648ad8a8"
 strings:
 // Module initialisation code bytes, simply returning the module ID
 // to the caller
 $ = {94 21 FF F0 93 E1 00 08 7C 3F 0B 78 38 00 00 ?? 7C 03
 03 78 81 61 00 00 8E EB FF F8 7D 61 5B 78 4E 80 00 20}
 condition:
 (uint32(0) == 0x464c457f) and (any of them)
}
