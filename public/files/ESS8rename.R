# Encoding: UTF-8.
# RENAME ESS round 8
# The program renames variable names from mnemomic to question numbers,
# for example NWSPOL to A1.
# Exceptions are country specific variables (party, education etc.)
# and variables from the household grid (F2, F3 and F4).
# -----
# Modify the path to the ESS8 file in line 89.
# Uncomment line 91 if you want <both> mnemonic and question numbers,
# for example rename NWSPOL to A1_NWSPOL
# Renaming can be reversed by running line 95.
# -----

oldvar <- c(
    "nwspol", "netusoft", "netustm", "ppltrst", "pplfair", "pplhlp", "polintr",
    "psppsgva", "actrolga", "psppipla", "cptppola", "trstprl", "trstlgl",
    "trstplc", "trstplt", "trstprt", "trstep", "trstun", "vote", "contplt",
    "wrkprty", "wrkorg", "badge", "sgnptit", "pbldmn", "bctprd", "pstplonl",
    "clsprty", "prtdgcl", "lrscale", "stflife", "stfeco", "stfgov", "stfdem",
    "stfedu", "stfhlth", "gincdif", "mnrgtjb", "freehms", "hmsfmlsh", "hmsacld",
    "euftf", "imsmetn", "imdfetn", "impcntr", "imbgeco", "imueclt", "imwbcnt",
    "happy", "sclmeet", "inprdsc", "sclact", "crmvct", "aesfdrk", "health",
    "hlthhmp", "atchctr", "atcherp", "rlgblg", "rlgdnm", "rlgblge", "rlgdnme",
    "rlgdgr", "rlgatnd", "pray", "dscrgrp", "dscrrce", "dscrntn", "dscrrlg",
    "dscrlng", "dscretn", "dscrage", "dscrgnd", "dscrsex", "dscrdsb", "dscroth",
    "dscrdk", "dscrref", "dscrnap", "dscrna", "ctzcntr", "ctzshipc", "brncntr",
    "cntbrthc", "livecnta", "lnghom1", "lnghom2", "blgetmg", "facntr",
    "fbrncntb", "mocntr", "mbrncntb", "gvrfgap", "rfgfrpc", "rfgbfml", "eneffap",
    "rdcenr", "cflsenr", "elgcoal", "elgngas", "elghydr", "elgnuc", "elgsun",
    "elgwind", "elgbio", "wrpwrct", "wrenexp", "wrdpimp", "wrdpfos", "wrntdis",
    "wrinspw", "wrtcfl", "wrtratc", "clmchng", "clmthgt1", "clmthgt2", "ccnthum",
    "ccrdprs", "wrclmch", "ccgdbd", "lkredcc", "lklmten", "gvsrdcc", "ownrdcc",
    "inctxff", "sbsrnen", "banhhap", "dfincac", "smdfslv", "uemplwk", "slvpens",
    "slvuemp", "gvslvol", "gvslvue", "gvcldcr", "sbstrec", "sbprvpv", "sbeqsoc",
    "sbbsntx", "sblazy", "sblwcoa", "imsclbn", "uentrjb", "lbenent", "bennent",
    "admub", "ubpay", "ubedu", "ubunp", "ub50pay", "ub50edu", "ub50unp",
    "ub20pay", "ub20edu", "ub20unp", "ubsppay", "ubspedu", "ubspunp", "bnlwinc",
    "eduunmp", "wrkprbf", "basinc", "eusclbf", "eudcnbf", "lkuemp", "lknemny",
    "vteurmmb", "vteubcmb", "hhmmb", "icpart1", "rshpsts", "lvgptnea",
    "dvrcdeva", "icpart2", "iccohbt", "marsts", "maritalb", "chldhm", "chldhhe",
    "domicil", "edulvlb", "eisced", "eduyrs", "pdwrk", "edctn", "uempla",
    "uempli", "dsbld", "rtrd", "cmsrv", "hswrk", "dngoth", "dngref", "dngdk",
    "dngna", "icomdng", "mainact", "mnactic", "icpdwrk", "crpdwk", "pdjobev",
    "pdjobyr", "emplrel", "emplno", "wrkctra", "estsz", "jbspv", "njbspv",
    "wkdcorga", "iorgact", "wkhct", "icwhct", "wkhtot", "nacer2", "tporgwk",
    "isco08", "wrkac6m", "uemp3m", "uemp12m", "uemp5yr", "mbtru", "hincsrca",
    "hinctnta", "hincfel", "icpart3", "edulvlpb", "eiscedp", "pdwrkp", "edctnp",
    "uemplap", "uemplip", "dsbldp", "rtrdp", "cmsrvp", "hswrkp", "dngothp",
    "dngdkp", "dngnapp", "dngrefp", "dngnap", "icomdnp", "mnactp", "icppdwk",
    "crpdwkp", "isco08p", "emprelp", "wkhtotp", "edulvlfb", "eiscedf", "emprf14",
    "occf14b", "edulvlmb", "eiscedm", "emprm14", "occm14b", "atncrse", "anctry1",
    "anctry2", "ipcrtiv", "imprich", "ipeqopt", "ipshabt", "impsafe", "impdiff",
    "ipfrule", "ipudrst", "ipmodst", "ipgdtim", "impfree", "iphlppl", "ipsuces",
    "ipstrgv", "ipadvnt", "ipbhprp", "iprspot", "iplylfr", "impenv", "imptrad",
    "impfun"
)

newvar <- c(
    "a1", "a2", "a3", "a4", "a5", "a6", "b1", "b2", "b3", "b4", "b5", "b6", "b7",
    "b8", "b9", "b10", "b11", "b12", "b13", "b15", "b16", "b17", "b18", "b19",
    "b20", "b21", "b22", "b23", "b25", "b26", "b27", "b28", "b29", "b30", "b31",
    "b32", "b33", "b33a", "b34", "b35", "b36", "b37", "b38", "b39", "b40", "b41",
    "b42", "b43", "c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "c9", "c10",
    "c11", "c12", "c13", "c14", "c15", "c16", "c17", "c18", "c19a", "c19b",
    "c19c", "c19d", "c19e", "c19f", "c19g", "c19h", "c19i", "c19j", "c19k",
    "c19l", "c19m", "c19n", "c20", "c21", "c22", "c23", "c24", "c25a", "c25b",
    "c26", "c27", "c28", "c29", "c30", "c42", "c43", "c44", "d1", "d2", "d3",
    "d4", "d5", "d6", "d7", "d8", "d9", "d10", "d11", "d12", "d13", "d14", "d15",
    "d16", "d17", "d18", "d19", "d20", "d21", "d22", "d23", "d24", "d25", "d26",
    "d27", "d28", "d29", "d30", "d31", "d32", "e1", "e2", "e3", "e4", "e5", "e6",
    "e7", "e8", "e9", "e10", "e11", "e12", "e13", "e14", "e15", "e16", "e17",
    "e18", "e20", "e21", "e22", "e23", "e24", "e25", "e26", "e27", "e28", "e29",
    "e30", "e31", "e32", "e33", "e34", "e35", "e36", "e37", "e38", "e39", "e40",
    "e41", "e42", "f1", "f5", "f6", "f7", "f8", "f9", "f10", "f11", "f11b",
    "f12", "f13", "f14", "f15a", "f15b", "f16", "f17aa", "f17ab", "f17ac",
    "f17ad", "f17ae", "f17af", "f17ag", "f17ah", "f17ai", "f17aj", "f17ak",
    "f17al", "f17b", "f17ca", "f17cb", "f17d", "f18", "f19", "f20", "f21", "f22",
    "f23", "f24", "f25", "f26", "f27", "f28", "f29", "f29a", "f30", "f31",
    "f32", "f33", "f35", "f36", "f37", "f38", "f39", "f40", "f41", "f42", "f43",
    "f44a", "f44b", "f45aa", "f45ab", "f45ac", "f45ad", "f45ae", "f45af",
    "f45ag", "f45ah", "f45ai", "f45aj", "f45ak", "f45al", "f45am", "f45b",
    "f45c", "f45d", "f46", "f47", "f50", "f51", "f52a", "f52b", "f53", "f55",
    "f56a", "f56b", "f57", "f59", "f60", "f61a", "f61b", "ha", "hb", "hc", "hd",
    "he", "hf", "hg", "hh", "hi", "hj", "hk", "hl", "hm", "hn", "ho", "hp", "hq",
    "hr", "hs", "ht", "hu"
)

library(DDIwR)
ess8 <- convert("path/to/ESS8file.sav")

# newvar <- paste(newvar, oldvar, sep = "_")
names(ess8)[match(oldvar, tolower(names(ess8)))] <- newvar

# reverse rename
names(ess8)[match(newvar, tolower(names(ess8)))] <- oldvar
