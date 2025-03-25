//
//  BirthPlace.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 24/03/2025.
//

import MapKit

enum BirthPlace: String, Codable {
    case andorra = "ad"
    case unitedArabEmirates = "ae"
    case afghanistan = "af"
    case antiguaAndBarbuda = "ag"
    case anguilla = "ai"
    case albania = "al"
    case armenia = "am"
    case angola = "ao"
    case antarctica = "aq"
    case argentina = "ar"
    case americanSamoa = "as"
    case austria = "at"
    case aruba = "aw"
    case alandIslands = "ax"
    case azerbaijan = "az"
    case bosniaAndHerzegovina = "ba"
    case barbados = "bb"
    case bangladesh = "bd"
    case belgium = "be"
    case burkinaFaso = "bf"
    case bulgaria = "bg"
    case bahrain = "bh"
    case burundi = "bi"
    case benin = "bj"
    case saintBarthelemy = "bl"
    case bermuda = "bm"
    case bruneiDarussalam = "bn"
    case bolivia = "bo"
    case caribbeanNetherlands = "bq"
    case brazil = "br"
    case bahamas = "bs"
    case bhutan = "bt"
    case bouventIsland = "bv"
    case botswana = "bw"
    case belarus = "by"
    case belize = "bz"
    case canada = "ca"
    case cocosislands = "cc"
    case democraticRepublicOfTheCongo = "cd"
    case centralAfricanRepublic = "cf"
    case congo = "cg"
    case switzerland = "ch"
    case ivoryCoast = "ci"
    case cookIslands = "ck"
    case chile = "cl"
    case cameroon = "cm"
    case china = "cn"
    case columbia = "co"
    case costarica = "cr"
    case cuba = "cu"
    case capeVerde = "cv"
    case curaçao = "cw"
    case cyprus = "cy"
    case czechRepublic = "cz"
    case germany = "de"
    case djiibouti = "dj"
    case denmark = "dk"
    case dominica = "dm"
    case dominicanRepublic = "do"
    case algeria = "dz"
    case ecuador = "ec"
    case estonia = "ee"
    case egypt = "eg"
    case westernSahara = "eh"
    case eritrea = "er"
    case spain = "es"
    case ethiopia = "et"
    case finland = "fi"
    case fiji = "fj"
    case falklandIslands = "fk"
    case micronesia = "fm"
    case faroeIslands = "fo"
    case france = "fr"
    case gabon = "ga"
    case greatBritain = "gb"
    case grenada = "gd"
    case georgia = "ge"
    case frenchGuiana = "gf"
    case ghana = "gh"
    case gibraltar = "gi"
    case gambia = "gm"
    case guinea = "gn"
    case guadeloupe = "gp"
    case equitorialGuinea = "gq"
    case greece = "gr"
    case southGeorgiaAndTheSouthSandwichIslands = "gs"
    case guatemala = "gt"
    case guam = "gu"
    case guineaBissau = "gw"
    case guyana = "gy"
    case hongKong = "hk"
    case heardIslandAndMcDonaldIslands = "hm"
    case honduras = "hn"
    case croatia = "hr"
    case haiti = "ht"
    case hungary = "hu"
    case indonesia = "id"
    case ireland = "ie"
    case israel = "il"
    case isleOfMan = "im"
    case india = "in"
    case britishIndianOceanTerritory = "io"
    case iraq = "iq"
    case iran = "ir"
    case iceland = "is"
    case italy = "it"
    case jersey = "je"
    case jamaica = "jm"
    case jordan = "jo"
    case japan = "jp"
    case kenya = "ke"
    case kyrgyzstan = "kg"
    case cambodia = "kh"
    case kiriBati = "ki"
    case comoros = "km"
    case saintKittsAndNevis = "kn"
    case northKorea = "kp"
    case southKorea = "kr"
    case kuwait = "kw"
    case caymanIslands = "ky"
    case kazakhstan = "kz"
    case laos = "la"
    case lebanon = "lb"
    case saintLucia = "lc"
    case liechtenstein = "li"
    case srilanka = "lk"
    case liberia = "lr"
    case lesotho = "ls"
    case lithuania = "lt"
    case luxembourg = "lu"
    case latvia = "lv"
    case libya = "ly"
    case morocco = "ma"
    case monaco = "mc"
    case moldova = "md"
    case montenegro = "me"
    case saintmartin = "mf"
    case madagascar = "mg"
    case marshallIslands = "mh"
    case macedonia = "mk"
    case mali = "ml"
    case myanmar = "mm"
    case mongolia = "mn"
    case macau = "mo"
    case northernMarianaIslands = "mp"
    case martinique = "mq"
    case mauritania = "mr"
    case montserrat = "ms"
    case malta = "mt"
    case mauritius = "mu"
    case maldiives = "mv"
    case malawi = "mw"
    case mexico = "mx"
    case malaysia = "my"
    case mozambique = "mz"
    case namibia = "na"
    case newCaledonia = "nc"
    case niger = "ne"
    case norfolkIsland = "nf"
    case nigeria = "ng"
    case nicaragua = "ni"
    case netherlands = "nl"
    case norway = "no"
    case nepal = "np"
    case nauru = "nr"
    case niue = "nu"
    case newzealand = "nz"
    case oman = "om"
    case panama = "pa"
    case peru = "pe"
    case frenchPolynesia = "pf"
    case papuaNewGuinea = "pg"
    case philipines = "ph"
    case pitcairnIslands = "pn"
    case pakistan = "pk"
    case saintPierreMiquelon = "pm"
    case puertoRico = "pr"
    case palestine = "ps"
    case portugal = "pt"
    case palau = "pw"
    case paraguay = "py"
    case qatar = "qa"
    case reunion = "re"
    case romania = "ro"
    case serbia = "rs"
    case russia = "ru"
    case rwanda = "rw"
    case saudiArabia = "sa"
    case solomonIslands = "sb"
    case seychelles = "sc"
    case sudan = "sd"
    case sweden = "se"
    case singapore = "sg"
    case saintHelena = "sh"
    case slovenia = "si"
    case svalbardAndJanMayen = "sj"
    case slovakia = "sk"
    case sierraLeone = "sl"
    case sanMarino = "sm"
    case senegal = "sn"
    case somalia = "so"
    case suriname = "sr"
    case southSudan = "ss"
    case saoTomePrincipe = "st"
    case elsalvador = "sv"
    case sintMaarten = "sx"
    case swaziland = "sz"
    case turksCaicosIslands = "tc"
    case chad = "td"
    case frenchSouthernTerritories = "tf"
    case togo = "tg"
    case thailand = "th"
    case tajikistan = "tj"
    case tokelau = "tk"
    case timorLeste = "tl"
    case turkmenistan = "tm"
    case tunisia = "tn"
    case tonga = "to"
    case turkey = "tr"
    case trinidadTobago = "tt"
    case tuvalu = "tv"
    case taiwan = "tw"
    case tanzania = "tz"
    case ukraine = "ua"
    case uganda = "ug"
    case unitedStates = "us"
    case uruguay = "uy"
    case uzbekistan = "uz"
    case vaticanCity = "va"
    case venzuela = "ve"
    case britishVirginIslands = "vg"
    case usVirginIslands = "vi"
    case vietnam = "vn"
    case vanuatu = "vu"
    case wallisFutuna = "wf"
    case samoa = "ws"
    case kosovo = "xk"
    case yemen = "ye"
    case mayotte = "yt"
    case southAfrica = "za"
    case zambia = "zm"
    case zimbabwe = "zw"

    init(from decoder: Decoder) throws {
        guard
            let value = try? decoder.singleValueContainer().decode(String.self)
        else {
            self = .greatBritain
            return
        }
        self = BirthPlace(rawValue: value) ?? .greatBritain
    }

    var name: String {
        switch self {
        case .andorra:
            return "Andorra"
        case .unitedArabEmirates:
            return "United Arab Emirates"
        case .afghanistan:
            return "Afghanistan"
        case .antiguaAndBarbuda:
            return "Antigua and Barbuda"
        case .anguilla:
            return "Anguilla"
        case .albania:
            return "Albania"
        case .armenia:
            return "Armenia"
        case .angola:
            return "Angola"
        case .antarctica:
            return "Antarctica"
        case .argentina:
            return "Argentina"
        case .americanSamoa:
            return "American Samoa"
        case .austria:
            return "Austria"
        case .aruba:
            return "Aruba"
        case .alandIslands:
            return "Åland Islands"
        case .azerbaijan:
            return "Azerbaijan"
        case .bosniaAndHerzegovina:
            return "Bosnia and Herzegovina"
        case .barbados:
            return "Barbados"
        case .bangladesh:
            return "Bangladesh"
        case .belgium:
            return "Belgium"
        case .burkinaFaso:
            return "Burkina Faso"
        case .bulgaria:
            return "Bulgaria"
        case .bahrain:
            return "Bahrain"
        case .burundi:
            return "Burundi"
        case .benin:
            return "Benin"
        case .saintBarthelemy:
            return "Saint Barthélemy"
        case .bermuda:
            return "Bermuda"
        case .bruneiDarussalam:
            return "Brunei Darussalam"
        case .bolivia:
            return "Bolivia"
        case .caribbeanNetherlands:
            return "Caribbean Netherlands"
        case .brazil:
            return "Brazil"
        case .bahamas:
            return "Bahamas"
        case .bhutan:
            return "Bhutan"
        case .bouventIsland:
            return "Bouvet Island"
        case .botswana:
            return "Botswana"
        case .belarus:
            return "Belarus"
        case .belize:
            return "Belize"
        case .canada:
            return "Canada"
        case .cocosislands:
            return "Cocos (Keeling) Islands"
        case .democraticRepublicOfTheCongo:
            return "Democratic Republic of the Congo"
        case .centralAfricanRepublic:
            return "Central African Republic"
        case .congo:
            return "Republic of the Congo"
        case .switzerland:
            return "Switzerland"
        case .ivoryCoast:
            return "Ivory Coast (Côte d'Ivoire)"
        case .cookIslands:
            return "Cook Islands"
        case .chile:
            return "Chile"
        case .cameroon:
            return "Cameroon"
        case .china:
            return "China"
        case .columbia:
            return "Colombia"
        case .costarica:
            return "Costa Rica"
        case .cuba:
            return "Cuba"
        case .capeVerde:
            return "Cape Verde"
        case .curaçao:
            return "Curaçao"
        case .cyprus:
            return "Cyprus"
        case .czechRepublic:
            return "Czech Republic"
        case .germany:
            return "Germany"
        case .djiibouti:
            return "Djibouti"
        case .denmark:
            return "Denmark"
        case .dominica:
            return "Dominica"
        case .dominicanRepublic:
            return "Dominican Republic"
        case .algeria:
            return "Algeria"
        case .ecuador:
            return "Ecuador"
        case .estonia:
            return "Estonia"
        case .egypt:
            return "Egypt"
        case .westernSahara:
            return "Western Sahara"
        case .eritrea:
            return "Eritrea"
        case .spain:
            return "Spain"
        case .ethiopia:
            return "Ethiopia"
        case .finland:
            return "Finland"
        case .fiji:
            return "Fiji"
        case .falklandIslands:
            return "Falkland Islands"
        case .micronesia:
            return "Micronesia"
        case .faroeIslands:
            return "Faroe Islands"
        case .france:
            return "France"
        case .gabon:
            return "Gabon"
        case .greatBritain:
            return "United Kingdom"
        case .grenada:
            return "Grenada"
        case .georgia:
            return "Georgia"
        case .frenchGuiana:
            return "French Guiana"
        case .ghana:
            return "Ghana"
        case .gibraltar:
            return "Gibraltar"
        case .gambia:
            return "Gambia"
        case .guinea:
            return "Guinea"
        case .guadeloupe:
            return "Guadeloupe"
        case .equitorialGuinea:
            return "Equatorial Guinea"
        case .greece:
            return "Greece"
        case .southGeorgiaAndTheSouthSandwichIslands:
            return "South Georgia and the South Sandwich Islands"
        case .guatemala:
            return "Guatemala"
        case .guam:
            return "Guam"
        case .guineaBissau:
            return "Guinea-Bissau"
        case .guyana:
            return "Guyana"
        case .hongKong:
            return "Hong Kong"
        case .heardIslandAndMcDonaldIslands:
            return "Heard Island and McDonald Islands"
        case .honduras:
            return "Honduras"
        case .croatia:
            return "Croatia"
        case .haiti:
            return "Haiti"
        case .hungary:
            return "Hungary"
        case .indonesia:
            return "Indonesia"
        case .ireland:
            return "Ireland"
        case .israel:
            return "Israel"
        case .isleOfMan:
            return "Isle of Man"
        case .india:
            return "India"
        case .britishIndianOceanTerritory:
            return "British Indian Ocean Territory"
        case .iraq:
            return "Iraq"
        case .iran:
            return "Iran"
        case .iceland:
            return "Iceland"
        case .italy:
            return "Italy"
        case .jersey:
            return "Jersey"
        case .jamaica:
            return "Jamaica"
        case .jordan:
            return "Jordan"
        case .japan:
            return "Japan"
        case .kenya:
            return "Kenya"
        case .kyrgyzstan:
            return "Kyrgyzstan"
        case .cambodia:
            return "Cambodia"
        case .kiriBati:
            return "Kiribati"
        case .comoros:
            return "Comoros"
        case .saintKittsAndNevis:
            return "Saint Kitts and Nevis"
        case .northKorea:
            return "North Korea"
        case .southKorea:
            return "South Korea"
        case .kuwait:
            return "Kuwait"
        case .caymanIslands:
            return "Cayman Islands"
        case .kazakhstan:
            return "Kazakhstan"
        case .laos:
            return "Laos"
        case .lebanon:
            return "Lebanon"
        case .saintLucia:
            return "Saint Lucia"
        case .liechtenstein:
            return "Liechtenstein"
        case .srilanka:
            return "Sri Lanka"
        case .liberia:
            return "Liberia"
        case .lesotho:
            return "Lesotho"
        case .lithuania:
            return "Lithuania"
        case .luxembourg:
            return "Luxembourg"
        case .latvia:
            return "Latvia"
        case .libya:
            return "Libya"
        case .morocco:
            return "Morocco"
        case .monaco:
            return "Monaco"
        case .moldova:
            return "Moldova"
        case .montenegro:
            return "Montenegro"
        case .saintmartin:
            return "Saint Martin"
        case .madagascar:
            return "Madagascar"
        case .marshallIslands:
            return "Marshall Islands"
        case .macedonia:
            return "North Macedonia"
        case .mali:
            return "Mali"
        case .myanmar:
            return "Myanmar"
        case .mongolia:
            return "Mongolia"
        case .macau:
            return "Macau"
        case .northernMarianaIslands:
            return "Northern Mariana Islands"
        case .martinique:
            return "Martinique"
        case .mauritania:
            return "Mauritania"
        case .montserrat:
            return "Montserrat"
        case .malta:
            return "Malta"
        case .mauritius:
            return "Mauritius"
        case .maldiives:
            return "Maldives"
        case .malawi:
            return "Malawi"
        case .mexico:
            return "Mexico"
        case .malaysia:
            return "Malaysia"
        case .mozambique:
            return "Mozambique"
        case .namibia:
            return "Namibia"
        case .newCaledonia:
            return "New Caledonia"
        case .niger:
            return "Niger"
        case .norfolkIsland:
            return "Norfolk Island"
        case .nigeria:
            return "Nigeria"
        case .nicaragua:
            return "Nicaragua"
        case .netherlands:
            return "Netherlands"
        case .norway:
            return "Norway"
        case .nepal:
            return "Nepal"
        case .nauru:
            return "Nauru"
        case .niue:
            return "Niue"
        case .newzealand:
            return "New Zealand"
        case .oman:
            return "Oman"
        case .panama:
            return "Panama"
        case .peru:
            return "Peru"
        case .frenchPolynesia:
            return "French Polynesia"
        case .papuaNewGuinea:
            return "Papua New Guinea"
        case .philipines:
            return "Philippines"
        case .pitcairnIslands:
            return "Pitcairn Islands"
        case .pakistan:
            return "Pakistan"
        case .saintPierreMiquelon:
            return "Saint Pierre and Miquelon"
        case .puertoRico:
            return "Puerto Rico"
        case .palestine:
            return "Palestine"
        case .portugal:
            return "Portugal"
        case .palau:
            return "Palau"
        case .paraguay:
            return "Paraguay"
        case .qatar:
            return "Qatar"
        case .reunion:
            return "Réunion"
        case .romania:
            return "Romania"
        case .serbia:
            return "Serbia"
        case .russia:
            return "Russia"
        case .rwanda:
            return "Rwanda"
        case .saudiArabia:
            return "Saudi Arabia"
        case .solomonIslands:
            return "Solomon Islands"
        case .seychelles:
            return "Seychelles"
        case .sudan:
            return "Sudan"
        case .sweden:
            return "Sweden"
        case .singapore:
            return "Singapore"
        case .saintHelena:
            return "Saint Helena"
        case .slovenia:
            return "Slovenia"
        case .svalbardAndJanMayen:
            return "Svalbard and Jan Mayen"
        case .slovakia:
            return "Slovakia"
        case .sierraLeone:
            return "Sierra Leone"
        case .sanMarino:
            return "San Marino"
        case .senegal:
            return "Senegal"
        case .somalia:
            return "Somalia"
        case .suriname:
            return "Suriname"
        case .southSudan:
            return "South Sudan"
        case .saoTomePrincipe:
            return "São Tomé and Príncipe"
        case .elsalvador:
            return "El Salvador"
        case .sintMaarten:
            return "Sint Maarten"
        case .swaziland:
            return "Eswatini"  // Swaziland is now officially Eswatini
        case .turksCaicosIslands:
            return "Turks and Caicos Islands"
        case .chad:
            return "Chad"
        case .frenchSouthernTerritories:
            return "French Southern Territories"
        case .togo:
            return "Togo"
        case .thailand:
            return "Thailand"
        case .tajikistan:
            return "Tajikistan"
        case .tokelau:
            return "Tokelau"
        case .timorLeste:
            return "Timor-Leste"
        case .turkmenistan:
            return "Turkmenistan"
        case .tunisia:
            return "Tunisia"
        case .tonga:
            return "Tonga"
        case .turkey:
            return "Turkey"
        case .trinidadTobago:
            return "Trinidad and Tobago"
        case .tuvalu:
            return "Tuvalu"
        case .taiwan:
            return "Taiwan"
        case .tanzania:
            return "Tanzania"
        case .ukraine:
            return "Ukraine"
        case .uganda:
            return "Uganda"
        case .unitedStates:
            return "United States"
        case .uruguay:
            return "Uruguay"
        case .uzbekistan:
            return "Uzbekistan"
        case .vaticanCity:
            return "Vatican City"
        case .venzuela:
            return "Venezuela"
        case .britishVirginIslands:
            return "British Virgin Islands"
        case .usVirginIslands:
            return "United States Virgin Islands"
        case .vietnam:
            return "Vietnam"
        case .vanuatu:
            return "Vanuatu"
        case .wallisFutuna:
            return "Wallis and Futuna"
        case .samoa:
            return "Samoa"
        case .kosovo:
            return "Kosovo"
        case .yemen:
            return "Yemen"
        case .mayotte:
            return "Mayotte"
        case .southAfrica:
            return "South Africa"
        case .zambia:
            return "Zambia"
        case .zimbabwe:
            return "Zimbabwe"
        }
    }

    var flag: String {
        switch self {
        case .andorra:
            return Images.andorraFlag
        case .unitedArabEmirates:
            return Images.unitedArabEmiratesFlag
        case .afghanistan:
            return Images.afghanistanFlag
        case .antiguaAndBarbuda:
            return Images.antiguaAndBarbudaFlag
        case .anguilla:
            return Images.anguillaFlag
        case .albania:
            return Images.albaniaFlag
        case .armenia:
            return Images.armeniaFlag
        case .angola:
            return Images.angolaFlag
        case .antarctica:
            return Images.antarticaFlag
        case .argentina:
            return Images.argentinaFlag
        case .americanSamoa:
            return Images.americanSamoaFlag
        case .austria:
            return Images.austriaFlag
        case .aruba:
            return Images.arubaFlag
        case .alandIslands:
            return Images.alandIslandsFlag
        case .azerbaijan:
            return Images.azerbaijanFlag
        case .bosniaAndHerzegovina:
            return Images.bosniaAndHerzegovinaFlag
        case .barbados:
            return Images.barbadosFlag
        case .bangladesh:
            return Images.bangladeshFlag
        case .belgium:
            return Images.belgiumFlag
        case .burkinaFaso:
            return Images.burkinaFasoFlag
        case .bulgaria:
            return Images.bulgariaFlag
        case .bahrain:
            return Images.bahrainFlag
        case .burundi:
            return Images.burundiFlag
        case .benin:
            return Images.beninFlag
        case .saintBarthelemy:
            return Images.saintBarthelemyFlag
        case .bermuda:
            return Images.bermudaFlag
        case .bruneiDarussalam:
            return Images.bruneiDarussalamFlag
        case .bolivia:
            return Images.boliviaFlag
        case .caribbeanNetherlands:
            return Images.caribbeanNetherlandsFlag
        case .brazil:
            return Images.brazilFlag
        case .bahamas:
            return Images.bahamasFlag
        case .bhutan:
            return Images.bhutanFlag
        case .bouventIsland:
            return Images.bouvetIslandFlag
        case .botswana:
            return Images.botswanaFlag
        case .belarus:
            return Images.belarusFlag
        case .belize:
            return Images.belizeFlag
        case .canada:
            return Images.canadaFlag
        case .cocosislands:
            return Images.cocosIslandsFlag
        case .democraticRepublicOfTheCongo:
            return Images.democraticRepublicOfTheCongoFlag
        case .centralAfricanRepublic:
            return Images.centralAfricanRepublicFlag
        case .congo:
            return Images.congoFlag
        case .switzerland:
            return Images.switzerlandFlag
        case .ivoryCoast:
            return Images.ivoryCoastFlag
        case .cookIslands:
            return Images.cookIslandsFlag
        case .chile:
            return Images.chileFlag
        case .cameroon:
            return Images.cameroonFlag
        case .china:
            return Images.chinaFlag
        case .columbia:
            return Images.colombiaFlag
        case .costarica:
            return Images.costaRicaFlag
        case .cuba:
            return Images.cubaFlag
        case .capeVerde:
            return Images.capeVerdeFlag
        case .curaçao:
            return Images.curacaoFlag
        case .cyprus:
            return Images.cyprusFlag
        case .czechRepublic:
            return Images.czechRepublicFlag
        case .germany:
            return Images.germanyFlag
        case .djiibouti:
            return Images.djiboutiFlag
        case .denmark:
            return Images.denmarkFlag
        case .dominica:
            return Images.dominicaFlag
        case .dominicanRepublic:
            return Images.dominicanRepublicFlag
        case .algeria:
            return Images.algeriaFlag
        case .ecuador:
            return Images.ecuadorFlag
        case .estonia:
            return Images.estoniaFlag
        case .egypt:
            return Images.egyptFlag
        case .westernSahara:
            return Images.westernSaharaFlag
        case .eritrea:
            return Images.eritreaFlag
        case .spain:
            return Images.spainFlag
        case .ethiopia:
            return Images.ethiopiaFlag
        case .finland:
            return Images.finlandFlag
        case .fiji:
            return Images.fijiFlag
        case .falklandIslands:
            return Images.falklandIslandsFlag
        case .micronesia:
            return Images.micronesiaFlag
        case .faroeIslands:
            return Images.faroeIslandsFlag
        case .france:
            return Images.franceFlag
        case .gabon:
            return Images.gabonFlag
        case .greatBritain:
            return Images.unitedKingdomFlag
        case .grenada:
            return Images.grenadaFlag
        case .georgia:
            return Images.georgiaFlag
        case .frenchGuiana:
            return Images.frenchGuianaFlag
        case .ghana:
            return Images.ghanaFlag
        case .gibraltar:
            return Images.gibraltarFlag
        case .gambia:
            return Images.gambiaFlag
        case .guinea:
            return Images.guineaFlag
        case .guadeloupe:
            return Images.guadeloupeFlag
        case .equitorialGuinea:
            return Images.equatorialGuineaFlag
        case .greece:
            return Images.greeceFlag
        case .southGeorgiaAndTheSouthSandwichIslands:
            return Images.southGeorgiaAndTheSouthSandwichIslandsFlag
        case .guatemala:
            return Images.guatemalaFlag
        case .guam:
            return Images.guamFlag
        case .guineaBissau:
            return Images.guineaBissauFlag
        case .guyana:
            return Images.guyanaFlag
        case .hongKong:
            return Images.hongKongFlag
        case .heardIslandAndMcDonaldIslands:
            return Images.heardIslandAndMcdonaldIslandsFlag
        case .honduras:
            return Images.hondurasFlag
        case .croatia:
            return Images.croatiaFlag
        case .haiti:
            return Images.haitiFlag
        case .hungary:
            return Images.hungaryFlag
        case .indonesia:
            return Images.indonesiaFlag
        case .ireland:
            return Images.irelandFlag
        case .israel:
            return Images.israelFlag
        case .isleOfMan:
            return Images.isleOfManFlag
        case .india:
            return Images.indiaFlag
        case .britishIndianOceanTerritory:
            return Images.britishIndianOceanTerritoryFlag
        case .iraq:
            return Images.iraqFlag
        case .iran:
            return Images.iranFlag
        case .iceland:
            return Images.icelandFlag
        case .italy:
            return Images.italyFlag
        case .jersey:
            return Images.jerseyFlag
        case .jamaica:
            return Images.jamaicaFlag
        case .jordan:
            return Images.jordanFlag
        case .japan:
            return Images.japanFlag
        case .kenya:
            return Images.kenyaFlag
        case .kyrgyzstan:
            return Images.kyrgyzstanFlag
        case .cambodia:
            return Images.cambodiaFlag
        case .kiriBati:
            return Images.kiribatiFlag
        case .comoros:
            return Images.comorosFlag
        case .saintKittsAndNevis:
            return Images.saintKittsAndNevisFlag
        case .northKorea:
            return Images.northKoreaFlag
        case .southKorea:
            return Images.southKoreaFlag
        case .kuwait:
            return Images.kuwaitFlag
        case .caymanIslands:
            return Images.caymanIslandsFlag
        case .kazakhstan:
            return Images.kazakhstanFlag
        case .laos:
            return Images.laosFlag
        case .lebanon:
            return Images.lebanonFlag
        case .saintLucia:
            return Images.saintLuciaFlag
        case .liechtenstein:
            return Images.liechtensteinFlag
        case .srilanka:
            return Images.sriLankaFlag
        case .liberia:
            return Images.liberiaFlag
        case .lesotho:
            return Images.lesothoFlag
        case .lithuania:
            return Images.lithuaniaFlag
        case .luxembourg:
            return Images.luxembourgFlag
        case .latvia:
            return Images.latviaFlag
        case .libya:
            return Images.libyaFlag
        case .morocco:
            return Images.moroccoFlag
        case .monaco:
            return Images.monacoFlag
        case .moldova:
            return Images.moldovaFlag
        case .montenegro:
            return Images.montenegroFlag
        case .saintmartin:
            return Images.saintMartinFlag
        case .madagascar:
            return Images.madagascarFlag
        case .marshallIslands:
            return Images.marshallIslandsFlag
        case .macedonia:
            return Images.macedoniaFlag
        case .mali:
            return Images.maliFlag
        case .myanmar:
            return Images.myanmarFlag
        case .mongolia:
            return Images.mongoliaFlag
        case .macau:
            return Images.macauFlag
        case .northernMarianaIslands:
            return Images.northernMarianaIslandsFlag
        case .martinique:
            return Images.martiniqueFlag
        case .mauritania:
            return Images.mauritaniaFlag
        case .montserrat:
            return Images.montserratFlag
        case .malta:
            return Images.maltaFlag
        case .mauritius:
            return Images.mauritiusFlag
        case .maldiives:
            return Images.maldivesFlag
        case .malawi:
            return Images.malawiFlag
        case .mexico:
            return Images.mexicoFlag
        case .malaysia:
            return Images.malaysiaFlag
        case .mozambique:
            return Images.mozambiqueFlag
        case .namibia:
            return Images.namibiaFlag
        case .newCaledonia:
            return Images.newCaledoniaFlag
        case .niger:
            return Images.nigerFlag
        case .norfolkIsland:
            return Images.norfolkIslandFlag
        case .nigeria:
            return Images.nigeriaFlag
        case .nicaragua:
            return Images.nicaraguaFlag
        case .netherlands:
            return Images.netherlandsFlag
        case .norway:
            return Images.norwayFlag
        case .nepal:
            return Images.nepalFlag
        case .nauru:
            return Images.nauruFlag
        case .niue:
            return Images.niueFlag
        case .newzealand:
            return Images.newZealandFlag
        case .oman:
            return Images.omanFlag
        case .panama:
            return Images.panamaFlag
        case .peru:
            return Images.peruFlag
        case .frenchPolynesia:
            return Images.frenchPolynesiaFlag
        case .papuaNewGuinea:
            return Images.papuaNewGuineaFlag
        case .philipines:
            return Images.philippinesFlag
        case .pitcairnIslands:
            return Images.pitcairnIslandsFlag
        case .pakistan:
            return Images.pakistanFlag
        case .saintPierreMiquelon:
            return Images.saintPierreAndMiquelonFlag
        case .puertoRico:
            return Images.puertoRicoFlag
        case .palestine:
            return Images.palestinianTerritoriesFlag
        case .portugal:
            return Images.portugalFlag
        case .palau:
            return Images.palauFlag
        case .paraguay:
            return Images.paraguayFlag
        case .qatar:
            return Images.qatarFlag
        case .reunion:
            return Images.reunionFlag
        case .romania:
            return Images.romaniaFlag
        case .serbia:
            return Images.serbiaFlag
        case .russia:
            return Images.russiaFlag
        case .rwanda:
            return Images.rwandaFlag
        case .saudiArabia:
            return Images.saudiArabiaFlag
        case .solomonIslands:
            return Images.solomonIslandsFlag
        case .seychelles:
            return Images.seychellesFlag
        case .sudan:
            return Images.sudanFlag
        case .sweden:
            return Images.swedenFlag
        case .singapore:
            return Images.singaporeFlag
        case .saintHelena:
            return Images.saintHelenaFlag
        case .slovenia:
            return Images.sloveniaFlag
        case .svalbardAndJanMayen:
            return Images.svalbardAndJanMayenFlag
        case .slovakia:
            return Images.slovakiaFlag
        case .sierraLeone:
            return Images.sierraLeoneFlag
        case .sanMarino:
            return Images.sanMarinoFlag
        case .senegal:
            return Images.senegalFlag
        case .somalia:
            return Images.somaliaFlag
        case .suriname:
            return Images.surinameFlag
        case .southSudan:
            return Images.southSudanFlag
        case .saoTomePrincipe:
            return Images.saoTomeAndPrincipeFlag
        case .elsalvador:
            return Images.elSalvadorFlag
        case .sintMaarten:
            return Images.sintMaartenFlag
        case .swaziland:
            return Images.swazilandFlag
        case .turksCaicosIslands:
            return Images.turksAndCaicosIslandsFlag
        case .chad:
            return Images.chadFlag
        case .frenchSouthernTerritories:
            return Images.frenchSouthernTerritoriesFlag
        case .togo:
            return Images.togoFlag
        case .thailand:
            return Images.thailandFlag
        case .tajikistan:
            return Images.tajikistanFlag
        case .tokelau:
            return Images.tokelauFlag
        case .timorLeste:
            return Images.timorLesteFlag
        case .turkmenistan:
            return Images.turkmenistanFlag
        case .tunisia:
            return Images.tunisiaFlag
        case .tonga:
            return Images.tongaFlag
        case .turkey:
            return Images.turkeyFlag
        case .trinidadTobago:
            return Images.trinidadAndTobagoFlag
        case .tuvalu:
            return Images.tuvaluFlag
        case .taiwan:
            return Images.taiwanFlag
        case .tanzania:
            return Images.tanzaniaFlag
        case .ukraine:
            return Images.ukraineFlag
        case .uganda:
            return Images.ugandaFlag
        case .unitedStates:
            return Images.unitedStatesFlag
        case .uruguay:
            return Images.uruguayFlag
        case .uzbekistan:
            return Images.uzbekistanFlag
        case .vaticanCity:
            return Images.vaticanCityFlag
        case .venzuela:
            return Images.venezuelaFlag
        case .britishVirginIslands:
            return Images.britishVirginIslandsFlag
        case .usVirginIslands:
            return Images.unitedStatesVirginIslandsFlag
        case .vietnam:
            return Images.vietnamFlag
        case .vanuatu:
            return Images.vanuatuFlag
        case .wallisFutuna:
            return Images.wallisAndFutunaFlag
        case .samoa:
            return Images.samoaFlag
        case .kosovo:
            return Images.kosovoFlag
        case .yemen:
            return Images.yemenFlag
        case .mayotte:
            return Images.mayotteFlag
        case .southAfrica:
            return Images.southAfricaFlag
        case .zambia:
            return Images.zambiaFlag
        case .zimbabwe:
            return Images.zimbabweFlag
        }
    }

    var regionCoordinates: MKCoordinateRegion {
        switch self {
        case .andorra:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 42.5078, longitude: 1.5211), // Approximate center of Andorra
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1) // A span that covers Andorra
            )
        case .unitedArabEmirates:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 23.4241, longitude: 53.8478), // Approximate center of UAE
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .afghanistan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 33.9391, longitude: 67.7100), // Approximate center of Afghanistan
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .antiguaAndBarbuda:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 17.0608, longitude: -61.7964), // Approximate center of Antigua and Barbuda
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .anguilla:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 18.2206, longitude: -63.0686), // Approximate center of Anguilla
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .albania:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 41.1533, longitude: 20.1683), // Approximate center of Albania
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .armenia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 40.0691, longitude: 45.0382), // Approximate center of Armenia
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .angola:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -11.2027, longitude: 17.8739), // Approximate center of Angola
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .antarctica:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -82.8628, longitude: 135.0000), // Approximate center of Antarctica
                span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
            )
        case .argentina:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -38.4161, longitude: -63.6167), // Approximate center of Argentina
                span: MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
            )
        case .americanSamoa:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -14.2710, longitude: -170.1322), // Approximate center of American Samoa
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        case .austria:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 47.5162, longitude: 14.5501), // Approximate center of Austria
                span: MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta: 0.8)
            )
        case .aruba:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 12.5211, longitude: -69.9683), // Approximate center of Aruba
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        case .alandIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 60.1785, longitude: 19.9156), // Approximate center of Åland Islands
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .azerbaijan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 40.1431, longitude: 47.5769), // Approximate center of Azerbaijan
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .bosniaAndHerzegovina:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 43.9159, longitude: 17.6791), // Approximate center of Bosnia and Herzegovina
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .barbados:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 13.1939, longitude: -59.5432), // Approximate center of Barbados
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .bangladesh:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 23.6850, longitude: 90.3563), // Approximate center of Bangladesh
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .belgium:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 50.8503, longitude: 4.3517), // Approximate center of Belgium
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .burkinaFaso:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 12.2383, longitude: -1.5616), // Approximate center of Burkina Faso
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .bulgaria:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 42.7339, longitude: 25.4858), // Approximate center of Bulgaria
                span: MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta: 0.8)
            )
        case .bahrain:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 25.276987, longitude: 50.6403), // Approximate center of Bahrain
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        case .burundi:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -3.3731, longitude: 29.9189), // Approximate center of Burundi
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .benin:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 9.3075, longitude: 2.3158), // Approximate center of Benin
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .saintBarthelemy:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 17.9000, longitude: -62.8333), // Approximate center of Saint Barthélemy
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .bermuda:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 32.3078, longitude: -64.7505), // Approximate center of Bermuda
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .bruneiDarussalam:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 4.5353, longitude: 114.7277), // Approximate center of Brunei
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .bolivia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -16.2902, longitude: -63.5887), // Approximate center of Bolivia
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .caribbeanNetherlands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 12.1784, longitude: -68.2325), // Approximate center of Caribbean Netherlands
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .brazil:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253), // Approximate center of Brazil
                span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
            )
        case .bahamas:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 25.0343, longitude: -77.3963), // Approximate center of Bahamas
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .bhutan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 27.5142, longitude: 90.4336), // Approximate center of Bhutan
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .bouventIsland:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 10.5566, longitude: -67.0197), // Approximate center of Bouvent Island
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .botswana:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -22.3285, longitude: 24.6849), // Approximate center of Botswana
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .belarus:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 53.7098, longitude: 27.9534), // Approximate center of Belarus
                span: MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta: 0.8)
            )
        case .belize:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 17.1899, longitude: -88.4976), // Approximate center of Belize
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .canada:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 56.1304, longitude: -106.3468), // Approximate center of Canada
                span: MKCoordinateSpan(latitudeDelta: 10.0, longitudeDelta: 10.0)
            )
        case .cocosislands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -12.1652, longitude: 96.8333), // Approximate center of Cocos Islands
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .democraticRepublicOfTheCongo:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -4.0383, longitude: 21.7587), // Approximate center of Democratic Republic of the Congo
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .centralAfricanRepublic:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 6.6111, longitude: 20.9394), // Approximate center of Central African Republic
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .congo:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -0.2280, longitude: 15.8270), // Approximate center of Congo
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .switzerland:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 46.8182, longitude: 8.2275), // Approximate center of Switzerland
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .ivoryCoast:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 7.5390, longitude: -5.5471), // Approximate center of Ivory Coast
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .cookIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -21.2367, longitude: -159.7777), // Approximate center of Cook Islands
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .chile:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -35.6751, longitude: -71.5430), // Approximate center of Chile
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .cameroon:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 3.8480, longitude: 11.5021), // Approximate center of Cameroon
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .china:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 35.8617, longitude: 104.1954), // Approximate center of China
                span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
            )
        case .columbia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 4.5709, longitude: -74.2973), // Approximate center of Columbia
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .costarica:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 9.7489, longitude: -83.7534), // Approximate center of Costa Rica
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .cuba:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 21.5218, longitude: -77.7812), // Approximate center of Cuba
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .capeVerde:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 16.5388, longitude: -23.0418), // Approximate center of Cape Verde
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .curaçao:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 12.1696, longitude: -68.9900), // Approximate center of Curaçao
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .cyprus:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 35.1264, longitude: 33.4299), // Approximate center of Cyprus
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .czechRepublic:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 49.8175, longitude: 15.4730), // Approximate center of Czech Republic
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .germany:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 51.1657, longitude: 10.4515), // Approximate center of Germany
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .djiibouti:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 11.8251, longitude: 42.5903), // Approximate center of Djibouti
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .denmark:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 56.2639, longitude: 9.5018), // Approximate center of Denmark
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .dominica:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 15.4150, longitude: -61.3710), // Approximate center of Dominica
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .dominicanRepublic:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 18.7357, longitude: -70.1627), // Approximate center of Dominican Republic
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .algeria:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 28.0339, longitude: 1.6596), // Approximate center of Algeria
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .ecuador:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -1.8312, longitude: -78.1834), // Approximate center of Ecuador
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .estonia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 58.5953, longitude: 25.0136), // Approximate center of Estonia
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .egypt:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 26.8206, longitude: 30.8025), // Approximate center of Egypt
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .westernSahara:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 24.2155, longitude: -12.8850), // Approximate center of Western Sahara
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .eritrea:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 15.1794, longitude: 39.7823), // Approximate center of Eritrea
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .spain:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 40.4637, longitude: -3.7492), // Approximate center of Spain
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .ethiopia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 9.145, longitude: 40.4897), // Approximate center of Ethiopia
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .finland:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 61.9241, longitude: 25.7482), // Approximate center of Finland
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .fiji:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -17.7134, longitude: 178.0650), // Approximate center of Fiji
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .falklandIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -51.7963, longitude: -59.5236), // Approximate center of Falkland Islands
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .micronesia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 6.9426, longitude: 158.2501), // Approximate center of Micronesia
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .faroeIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 61.8926, longitude: -6.9118), // Approximate center of Faroe Islands
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .france:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 46.6034, longitude: 1.8883), // Approximate center of France
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .gabon:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -0.8037, longitude: 11.6094), // Approximate center of Gabon
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .greatBritain:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 54.0, longitude: -2.0),
                span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
            )
        case .grenada:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 12.2628, longitude: -61.6042), // Approximate center of Grenada
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .georgia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 42.3154, longitude: 43.3569), // Approximate center of Georgia
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .frenchGuiana:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 3.9339, longitude: -53.1258), // Approximate center of French Guiana
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .ghana:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 7.9465, longitude: -1.0232), // Approximate center of Ghana
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .gibraltar:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 36.1408, longitude: -5.3536), // Approximate center of Gibraltar
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .gambia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 13.4432, longitude: -15.3101), // Approximate center of Gambia
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .guinea:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 9.9456, longitude: -9.6966), // Approximate center of Guinea
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .guadeloupe:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 16.9956, longitude: -62.0675), // Approximate center of Guadeloupe
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .equitorialGuinea:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 1.6508, longitude: 10.2679), // Approximate center of Equatorial Guinea
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .greece:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 39.0742, longitude: 21.8243), // Approximate center of Greece
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .southGeorgiaAndTheSouthSandwichIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -54.4296, longitude: -36.5875), // Approximate center of South Georgia and the South Sandwich Islands
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .guatemala:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 15.7835, longitude: -90.2308), // Approximate center of Guatemala
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .guam:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 13.4443, longitude: 144.7937), // Approximate center of Guam
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .guineaBissau:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 11.8037, longitude: -15.1804), // Approximate center of Guinea-Bissau
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .guyana:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 4.8604, longitude: -58.9302), // Approximate center of Guyana
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .hongKong:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 22.3193, longitude: 114.1694), // Approximate center of Hong Kong
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .heardIslandAndMcDonaldIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -53.0818, longitude: 73.5041), // Approximate center of Heard Island and McDonald Islands
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .honduras:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 13.5091, longitude: -83.1810), // Approximate center of Honduras
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .croatia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 45.1, longitude: 15.2), // Approximate center of Croatia
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .haiti:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 18.9712, longitude: -72.2852), // Approximate center of Haiti
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .hungary:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 47.1625, longitude: 19.5033), // Approximate center of Hungary
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .indonesia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -0.7893, longitude: 113.9213), // Approximate center of Indonesia
                span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
            )
        case .ireland:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 53.1424, longitude: -7.6921), // Approximate center of Ireland
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .israel:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 31.0461, longitude: 34.8516), // Approximate center of Israel
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .isleOfMan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 54.2361, longitude: -4.5481), // Approximate center of Isle of Man
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .india:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 20.5937, longitude: 78.9629), // Approximate center of India
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .britishIndianOceanTerritory:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -6.3432, longitude: 71.8765), // Approximate center of British Indian Ocean Territory
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .iraq:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 33.2232, longitude: 43.6793), // Approximate center of Iraq
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .iran:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 32.4279, longitude: 53.6880), // Approximate center of Iran
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .iceland:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 64.9631, longitude: -19.0208), // Approximate center of Iceland
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .italy:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 41.8719, longitude: 12.5674), // Approximate center of Italy
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .jersey:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 49.2144, longitude: -2.1312), // Approximate center of Jersey
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .jamaica:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 18.1096, longitude: -77.2975), // Approximate center of Jamaica
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .jordan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 30.5852, longitude: 36.2384), // Approximate center of Jordan
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .japan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 36.2048, longitude: 138.2529), // Approximate center of Japan
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .kenya:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -1.2921, longitude: 36.8219), // Approximate center of Kenya
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .kyrgyzstan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 41.2044, longitude: 74.7661), // Approximate center of Kyrgyzstan
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .cambodia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 12.5657, longitude: 104.9910), // Approximate center of Cambodia
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .kiriBati:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 1.8710, longitude: 157.3637), // Approximate center of Kiribati
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .comoros:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -11.8750, longitude: 43.8722), // Approximate center of Comoros
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .saintKittsAndNevis:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 17.3578, longitude: -62.7820), // Approximate center of Saint Kitts and Nevis
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .northKorea:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 40.3399, longitude: 127.5101), // Approximate center of North Korea
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .southKorea:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 35.9078, longitude: 127.7669), // Approximate center of South Korea
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .kuwait:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 29.3759, longitude: 47.9774), // Approximate center of Kuwait
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .caymanIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 19.3131, longitude: -81.2546), // Approximate center of Cayman Islands
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .kazakhstan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 48.0196, longitude: 66.9237), // Approximate center of Kazakhstan
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .laos:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 19.8563, longitude: 102.4955), // Approximate center of Laos
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .lebanon:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 33.8547, longitude: 35.8623), // Approximate center of Lebanon
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .saintLucia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 13.9094, longitude: -60.9789), // Approximate center of Saint Lucia
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        case .liechtenstein:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 47.1415, longitude: 9.5215), // Approximate center of Liechtenstein
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .srilanka:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 7.8731, longitude: 80.7718), // Approximate center of Sri Lanka
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .liberia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 9.4295, longitude: -9.4295), // Approximate center of Liberia
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .lesotho:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -29.6099, longitude: 28.2336), // Approximate center of Lesotho
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .lithuania:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 55.1694, longitude: 23.8813), // Approximate center of Lithuania
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .luxembourg:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 49.6117, longitude: 6.13), // Approximate center of Luxembourg
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        case .latvia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 56.8796, longitude: 24.6032), // Approximate center of Latvia
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .libya:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 26.3351, longitude: 17.2283), // Approximate center of Libya
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .morocco:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 31.7917, longitude: -7.0926), // Approximate center of Morocco
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .monaco:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 43.7333, longitude: 7.4167), // Approximate center of Monaco
                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            )
        case .moldova:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 47.0105, longitude: 28.8575), // Approximate center of Moldova
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .montenegro:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 42.4411, longitude: 19.2636), // Approximate center of Montenegro
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .saintmartin:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 18.0708, longitude: -63.0501), // Approximate center of Saint Martin
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .madagascar:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -18.7669, longitude: 46.8691), // Approximate center of Madagascar
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .marshallIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 7.1315, longitude: 171.1845), // Approximate center of Marshall Islands
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .macedonia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 41.6086, longitude: 21.7453), // Approximate center of Macedonia
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .mali:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 17.5707, longitude: -3.9962), // Approximate center of Mali
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .myanmar:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 21.9139, longitude: 95.9560), // Approximate center of Myanmar
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .mongolia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 46.8625, longitude: 103.8467), // Approximate center of Mongolia
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .macau:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 22.1987, longitude: 113.5439), // Approximate center of Macau
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .northernMarianaIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 15.0979, longitude: 145.6739), // Approximate center of Northern Mariana Islands
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .martinique:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 14.6415, longitude: -61.0242), // Approximate center of Martinique
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        case .mauritania:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 21.0079, longitude: -10.9400), // Approximate center of Mauritania
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .montserrat:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 16.7425, longitude: -62.1870), // Approximate center of Montserrat
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        case .malta:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 35.9375, longitude: 14.3754), // Approximate center of Malta
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .mauritius:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -20.3484, longitude: 57.5522), // Approximate center of Mauritius
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .maldiives:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 3.2028, longitude: 73.2207), // Approximate center of Maldives
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .malawi:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -13.2543, longitude: 34.3015), // Approximate center of Malawi
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .mexico:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 23.6345, longitude: -102.5528), // Approximate center of Mexico
                span: MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
            )
        case .malaysia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 4.2105, longitude: 101.9758), // Approximate center of Malaysia
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .mozambique:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -18.6657, longitude: 35.5296), // Approximate center of Mozambique
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .namibia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -22.9576, longitude: 18.4904), // Approximate center of Namibia
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .newCaledonia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -20.9043, longitude: 165.6180), // Approximate center of New Caledonia
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .niger:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 17.6078, longitude: 8.0817), // Approximate center of Niger
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .norfolkIsland:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -29.0408, longitude: 167.9547), // Approximate center of Norfolk Island
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .nigeria:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 9.0820, longitude: 8.6753), // Approximate center of Nigeria
                span: MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
            )
        case .nicaragua:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 12.8654, longitude: -85.2072), // Approximate center of Nicaragua
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .netherlands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 52.3784, longitude: 4.9009), // Approximate center of Netherlands
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .norway:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 60.4720, longitude: 8.4689), // Approximate center of Norway
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .nepal:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 28.3949, longitude: 84.1240), // Approximate center of Nepal
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .nauru:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -0.5228, longitude: 166.9315), // Approximate center of Nauru
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .niue:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -19.0544, longitude: -169.8679), // Approximate center of Niue
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .newzealand:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -40.9006, longitude: 174.8860), // Approximate center of New Zealand
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .oman:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 21.4735, longitude: 55.9754), // Approximate center of Oman
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .panama:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 8.5375, longitude: -80.7821), // Approximate center of Panama
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .peru:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -9.1905, longitude: -75.0152), // Approximate center of Peru
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .frenchPolynesia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -17.6797, longitude: -149.4068), // Approximate center of French Polynesia
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .papuaNewGuinea:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -6.3149, longitude: 143.9555), // Approximate center of Papua New Guinea
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .philipines:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 12.8797, longitude: 121.7740), // Approximate center of Philippines
                span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
            )
        case .pitcairnIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -24.7036, longitude: -127.4391), // Approximate center of Pitcairn Islands
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .pakistan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 30.3753, longitude: 69.3451), // Approximate center of Pakistan
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .saintPierreMiquelon:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 46.8852, longitude: -56.3159), // Approximate center of Saint Pierre and Miquelon
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .puertoRico:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 18.2208, longitude: -66.5901), // Approximate center of Puerto Rico
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .palestine:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 31.9522, longitude: 35.2332), // Approximate center of Palestine
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .portugal:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 39.3999, longitude: -8.2245), // Approximate center of Portugal
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .palau:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 7.5149, longitude: 134.5825), // Approximate center of Palau
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .paraguay:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -23.4425, longitude: -58.4438), // Approximate center of Paraguay
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .qatar:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 25.3548, longitude: 51.1839), // Approximate center of Qatar
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .reunion:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -21.1151, longitude: 55.5364), // Approximate center of Réunion
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .romania:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 45.9432, longitude: 24.9668), // Approximate center of Romania
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .serbia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 44.0165, longitude: 21.0059), // Approximate center of Serbia
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .russia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 55.7558, longitude: 37.6173), // Approximate center of Russia
                span: MKCoordinateSpan(latitudeDelta: 10.0, longitudeDelta: 10.0)
            )
        case .rwanda:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -1.9403, longitude: 29.8739), // Approximate center of Rwanda
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .saudiArabia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 23.8859, longitude: 45.0792), // Approximate center of Saudi Arabia
                span: MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
            )
        case .solomonIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -9.1855, longitude: 159.2200), // Approximate center of Solomon Islands
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .seychelles:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -4.6796, longitude: 55.4915), // Approximate center of Seychelles
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .sudan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 12.8628, longitude: 30.2176), // Approximate center of Sudan
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .sweden:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 60.1282, longitude: 18.6435), // Approximate center of Sweden
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .singapore:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 1.3521, longitude: 103.8198), // Approximate center of Singapore
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        case .saintHelena:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -15.9650, longitude: -5.7074), // Approximate center of Saint Helena
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .slovenia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 46.1511, longitude: 14.9955), // Approximate center of Slovenia
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .svalbardAndJanMayen:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 78.2232, longitude: 15.6469), // Approximate center of Svalbard and Jan Mayen
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .slovakia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 48.6690, longitude: 19.6990), // Approximate center of Slovakia
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .sierraLeone:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 8.4606, longitude: -11.7799),
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .sanMarino:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 43.9333, longitude: 12.4500),
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        case .senegal:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 14.4974, longitude: -14.4524),
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .somalia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 5.1521, longitude: 46.1996),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .suriname:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 3.9193, longitude: -56.0278),
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .southSudan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 6.8769, longitude: 31.3069),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .saoTomePrincipe:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 0.1864, longitude: 6.6131),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .elsalvador:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 13.7942, longitude: -88.8965),
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .sintMaarten:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 18.0425, longitude: -63.0548),
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        case .swaziland:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -26.5225, longitude: 31.4659),
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .turksCaicosIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 21.6940, longitude: -71.7979),
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .chad:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 15.4542, longitude: 18.7322),
                span: MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
            )
        case .frenchSouthernTerritories:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -49.2804, longitude: 69.3486),
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .togo:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 8.6195, longitude: 0.8248),
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .thailand:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 15.8700, longitude: 100.9925),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .tajikistan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 38.8610, longitude: 71.2761),
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .tokelau:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -9.2002, longitude: -171.8484),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .timorLeste:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -8.8742, longitude: 125.7275),
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .turkmenistan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 38.9697, longitude: 59.5563),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .tunisia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 33.8869, longitude: 9.5375),
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .tonga:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -21.1789, longitude: -175.1982),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .turkey:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 38.9637, longitude: 35.2433),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .trinidadTobago:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 10.6918, longitude: -61.2225),
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .tuvalu:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -7.1095, longitude: 177.6493),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .taiwan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 23.6978, longitude: 120.9605),
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .tanzania:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -6.3690, longitude: 34.8888),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .ukraine:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 48.3794, longitude: 31.1656),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .uganda:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 1.3733, longitude: 32.2903),
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .unitedStates:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 37.0902, longitude: -95.7129),
                span: MKCoordinateSpan(latitudeDelta: 20.0, longitudeDelta: 20.0)
            )
        case .uruguay:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -32.5228, longitude: -55.7658),
                span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            )
        case .uzbekistan:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 41.3775, longitude: 64.5853),
                span: MKCoordinateSpan(latitudeDelta: 2.5, longitudeDelta: 2.5)
            )
        case .vaticanCity:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 41.9029, longitude: 12.4534),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
        case .venzuela:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 6.4238, longitude: -66.5897),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .britishVirginIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 18.4207, longitude: -64.6399),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .usVirginIslands:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 18.3358, longitude: -64.8963),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .vietnam:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 14.0583, longitude: 108.2772),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .vanuatu:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -15.3767, longitude: 166.9592),
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .wallisFutuna:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -13.7688, longitude: -177.1561),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .samoa:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -13.7590, longitude: -172.1046),
                span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
            )
        case .kosovo:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 42.6026, longitude: 20.9029),
                span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)
            )
        case .yemen:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 15.5527, longitude: 48.5164),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .mayotte:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -12.8275, longitude: 45.1662),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        case .southAfrica:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -30.5595, longitude: 22.9375),
                span: MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
            )
        case .zambia:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -13.1339, longitude: 27.8493),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        case .zimbabwe:
            return MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -19.0154, longitude: 29.1549),
                span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
            )
        }
    }
}
