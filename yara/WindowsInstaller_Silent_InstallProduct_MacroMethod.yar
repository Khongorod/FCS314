rule WindowsInstaller_Silent_InstallProduct_MacroMethod

{

    meta:

        author = "Proofpoint Threat Research"

        date = "20210728"

        hash = "1561ece482c78a2d587b66c8eaf211e806ff438e506fcef8f14ae367db82d9b3; a8fd0a5de66fa39056c0ddf2ec74ccd38b2ede147afa602aba00a3f0b55a88e0"

        reference = "This signature has not been quality controlled in a production environment. Analysts believe that this method is utilized by multiple threat actors in the wild"

   

    strings:

        $doc_header = {D0 CF 11 E0 A1 B1 1A E1}

        $s1 = ".UILevel = 2"

        $s2 = "CreateObject(\"WindowsInstaller.Installer\")"

        $s3 = ".InstallProduct \"http"

   

condition:

        $doc_header at 0 and all of ($s*)

}
