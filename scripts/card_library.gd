extends Node

var data = "'elohiym&elohiym&אלוהים,mayim&mayim&מַיִם,siyrah&siyrah&סִירָה,esh&esh&אֵשׁ,etz&etz&עץ,etz&etz&עץ,eretz&eretz&הארץ,even&even&אבן,m'arah&marah&מערה,deshe&deshe&דשא,ruach&ruach&רוח,anan&anan&ענן,lavah&lavah&לבה,barak&barak&ברק,r'iydah&riydah&רעידת,chayah&chayah&חיה,'enoshiy&enoshiy&אנושי,dag&dag&דג,matekhet&matekhet&מתכת,s'arah&sarah&סערה,geshem&geshem&גשם,perach&perach&פרח,aviyr&aviyr&אויר,pach'man&pachman&פחמן,cheres&cheres&חרס,chol&chol&חול,z'khukhiyt&zkhukhiyt&זכוכית,beytzah&beytzah&ביצה,zera&zera&זרע,tzipor&tzipor&צפור,yonek&yonek&יונק,pecham&pecham&פחם,yeda&yeda&ידע,mada&mada&מדע,k'nesiyah&knesiyah&כנסיה,sif'riyah&sifriyah&ספריה,safah&safah&שפה,k'laf&klaf&קלף,mazon&mazon&מזון,kohal&kohal&כוהל\n&dios&Dios,&agua&agua,&barco&barco,&fuego&fuego,&madera&madera,&arbol&árbol,&tierra&tierra,&piedra&piedra,&cueva&cueva,&cesped&césped,&viento&viento,&nube&nube,&lava&lava,&relampago&relámpago,&terremoto&terremoto,&animal&animal,&ser humano&ser humano,&pez&pez,&metal&metal,&tormenta&tormenta,&lluvia&lluvia,&flor&flor,&aire&aire,&carbono&carbono,&arcilla&arcilla,&arena&arena,&vidrio&vidrio,&huevo&huevo,&semilla&semilla,&pajaro&pájaro,&mamifero&mamífero,&carbon&carbón,&conocimiento&conocimiento,&ciencia&ciencia,&iglesia&iglesia,&biblioteca&biblioteca,&idioma&idioma,&pergamino&pergamino,&comida&comida,&alcohol&alcohol\n&dieu&Dieu,&eau&eau,&bateau&bateau,&feu&feu,&bois&bois,&arbre&arbre,&terre&terre,&pierre&pierre,&grotte&grotte,&herbe&herbe,&vent&vent,&nuage&nuage,&lave&lave,&eclair&éclair,&seisme&séisme,&animal&animal,&humain&humain,&poisson&poisson,&metal&métal,&orage&orage,&pluie&pluie,&fleur&fleur,&air&air,&carbone&carbone,&argile&argile,&sable&sable,&verre&verre,&oeuf&œuf,&graine&graine,&oiseau&oiseau,&mammifere&mammifère,&charbon&charbon,&connaissance&connaissance,&science&science,&eglise&église,&bibliotheque&bibliothèque,&langue&langue,&parchemin&parchemin,&nourriture&nourriture,&alcool&alcool\n&dio&Dio,&acqua&acqua,&barca&barca,&fuoco&fuoco,&legno&legno,&albero&albero,&terreno&terreno,&sasso&sasso,&grotta&grotta,&erba&erba,&vento&vento,&nube&nube,&lava&lava,&fulmine&fulmine,&terremoto&terremoto,&animale&animale,&essere umano&essere umano,&pesce&pesce,&metallo&metallo,&tempesta&tempesta,&pioggia&pioggia,&fiore&fiore,&aria&aria,&carbonio&carbonio,&argilla&argilla,&sabbia&sabbia,&vetro&vetro,&uovo&uovo,&seme&seme,&uccello&uccello,&mammifero&mammifero,&carbone&carbone,&conoscenza&conoscenza,&scienza&scienza,&chiesa&chiesa,&biblioteca&biblioteca,&lingua&lingua,&pergamena&pergamena,&nutrimento&nutrimento,&alcoliche&alcoliche\n&god&God,&water&water,&boat&boat,&fire&fire,&wood&wood,&tree&tree,&earth&earth,&stone&stone,&cave&cave,&grass&grass,&wind&wind,&cloud&cloud,&lava&lava,&lightning&lightning,&earthquake&earthquake,&animal&animal,&human&human,&fish&fish,&metal&metal,&storm&storm,&rain&rain,&flower&flower,&air&air,&carbon&carbon,&clay&clay,&sand&sand,&glass&glass,&egg&egg,&seed&seed,&bird&bird,&mammal&mammal,&coal&coal,&knowledge&knowledge,&science&science,&church&church,&library&library,&language&language,&parchment&parchment,&food&food,&alcohol&alcohol\n&gott&Gott,&wasser&Wasser,&boot&Boot,&feuer&Feuer,&holz&Holz,&baum&Baum,&boden&Boden,&stein&Stein,&hohle&Höhle,&gras&Gras,&wind&Wind,&wolke&Wolke,&lava&Lava,&blitz&Blitz,&erdbeben&Erdbeben,&tier&Tier,&mensch&Mensch,&fisch&Fisch,&metall&Metall,&gewitter&Gewitter,&regen&Regen,&blute&Blüte,&luft&Luft,&kohlenstoff&Kohlenstoff,&lehm&Lehm,&sand&Sand,&glas&Glas,&ei&Ei,&samen&Samen,&vogel&Vogel,&saugetier&Säugetier,&kohle&Kohle,&kenntnis&Kenntnis,&wissenschaft&Wissenschaft,&kirche&Kirche,&bucherei&Bücherei,&sprache&Sprache,&pergament&Pergament,&essen&Essen,&alkohol&Alkohol\n&gud&Gud,&vatten&vatten,&bat&båt,&eld&eld,&tra&trä,&trad&träd,&jorden&jorden,&sten&sten,&grotta&grotta,&gras&gräs,&vind&vind,&moln&moln,&lava&lava,&blixt&blixt,&jordbavning&jordbävning,&djur&djur,&manniska&människa,&fisk&fisk,&metall&metall,&storm&storm,&regn&regn,&blomma&blomma,&luft&luft,&kol&kol,&lera&lera,&sand&sand,&glas&glas,&agg&ägg,&fro&frö,&fagel&fågel,&daggdjur&däggdjur,&stenkol&stenkol,&vetskap&vetskap,&vetenskap&vetenskap,&kyrka&kyrka,&bibliotek&bibliotek,&sprak&språk,&pergament&pergament,&mat&mat,&alkohol&alkohol\n&buh&Bůh,&voda&voda,&clun&člun,&ohen&oheň,&drevo&dřevo,&strom&strom,&zeme&země,&kamen&kámen,&jeskyne&jeskyně,&trava&tráva,&vitr&vítr,&mrak&mrak,&lava&láva,&blesk&blesk,&zemetreseni&zemětřesení,&zvire&zvíře,&clovek&člověk,&ryba&ryba,&kov&kov,&bourka&bouřka,&dest&déšť,&kvet&květ,&vzduch&vzduch,&uhlik&uhlík,&jil&jíl,&pisek&písek,&sklo&sklo,&vejce&vejce,&semeno&semeno,&ptak&pták,&savec&savec,&uhli&uhlí,&znalost&znalost,&veda&věda,&kostel&kostel,&knihovna&knihovna,&jazyk&jazyk,&pergamen&pergamen,&jidlo&jídlo,&alkohol&alkohol\n&bog&Bóg,&woda&woda,&lodz&łódź,&ogien&ogień,&drewno&drewno,&drzewo&drzewo,&gleba&gleba,&kamien&kamień,&jaskinia&jaskinia,&trawa&trawa,&wiatr&wiatr,&chmura&chmura,&lawa&lawa,&blyskawica&błyskawica,&trzesienie ziemi&trzęsienie ziemi,&zwierze&zwierzę,&czlowiek&człowiek,&ryba&ryba,&metal&metal,&sztorm&sztorm,&deszcz&deszcz,&kwiat&kwiat,&powietrze&powietrze,&wegiel&węgiel,&glina&glina,&piasek&piasek,&szklo&szkło,&jajo&jajo,&nasienie&nasienie,&ptak&ptak,&ssak&ssak,&wegiel&węgiel,&wiedza&wiedza,&nauka&nauka,&kosciol&kościół,&biblioteka&biblioteka,&jezyk&język,&pergamin&pergamin,&jedzenie&jedzenie,&alkohol&alkohol\nbog&bog&Бог,voda&voda&вода,lodka&lodka&лодка,ogon'&ogon&огонь,derevo&derevo&дерево,derevo&derevo&дерево,zemlya&zemlya&земля,kamen'&kamen&камень,peshchéra&peshchera&пеще́ра,trava&trava&трава,veter&veter&ветер,oblako&oblako&облако,láva&lava&ла́ва,mólniya&molniya&мо́лния,zemletryaséniye&zemletryaseniye&землетрясе́ние,zhivotnoye&zhivotnoye&животное,chelovek&chelovek&человек,ryba&ryba&рыба,metáll&metall&мета́лл,shtorm&shtorm&шторм,dozhd'&dozhd&дождь,tsvetok&tsvetok&цветок,vozdukh&vozdukh&воздух,ugleród&uglerod&углеро́д,glína&glina&гли́на,pesok&pesok&песок,steklo&steklo&стекло,yaytso&yaytso&яйцо,semya&semya&семя,ptitsa&ptitsa&птица,mlekopitáyushcheye&mlekopitayushcheye&млекопита́ющее,úgol'&ugol&у́голь,osvedomlonnost'&osvedomlonnost&осведомлённость,nauka&nauka&наука,tserkov'&tserkov&церковь,biblioteka&biblioteka&библиотека,yazyk&yazyk&язык,pergáment&pergament&перга́мент,yeda&yeda&еда,alkogól'&alkogol&алкого́ль\nshàng dì&shang di&上帝,shuǐ&shui&水,xiǎo chuán&xiao chuan&小船,huǒ&huo&火,mù tou&mu tou&木头,shù&shu&树,dì qiú&di qiu&地球,shí tou&shi tou&石头,shān dòng&shan dong&山洞,cǎo&cao&草,fēng&feng&风,yún&yun&云,huǒ shān yán jiāng&huo shan yan jiang&火山岩浆,shǎn diàn&shan dian&闪电,dì zhèn&di zhen&地震,dòng wù&dong wu&动物,rén&ren&人,yú&yu&鱼,jīn shǔ&jin shu&金属,bào fēng yǔ&bao feng yu&暴风雨,yǔ&yu&雨,huā duǒ&hua duo&花朵,kōng qì&kong qi&空气,tàn&tan&碳,ní tǔ&ni tu&泥土,shā&sha&沙,bō li&bo li&玻璃,jī dàn&ji dan&鸡蛋,zhǒng zi&zhong zi&种子,niǎo&niao&鸟,bǔ rǔ dòng wù&bu ru dong wu&哺乳动物,méi&mei&煤,zhī dào&zhi dao&知道,xué wèn&xue wen&学问,jiào táng&jiao tang&教堂,tú shū guǎn&tu shu guan&图书馆,yǔ yán&yu yan&语言,yáng pí zhǐ&yang pi zhi&羊皮纸,shí pǐn&shi pin&食品,hán jiǔ jīng de yǐn liào&han jiu jing de yin liao&含酒精的饮料\nkami&kami&神,mizu&mizu&水,bōto&boto&ボート,hi&hi&火,ki&ki&木,ki&ki&木,tochi&tochi&土地,ishi&ishi&石,horaana&horaana&洞穴,kusa&kusa&草,kaze&kaze&風,kumo&kumo&雲,yōgan&yogan&溶岩,inazuma&inazuma&稲妻,jishin&jishin&地震,dōbutsu&dobutsu&動物,hito&hito&人,sakana&sakana&魚,kinzoku&kinzoku&金属,arashi&arashi&嵐,ame&ame&雨,hana&hana&花,kūchū&kuchu&空中,tanso&tanso&炭素,nendo&nendo&粘土,suna&suna&砂,garasu&garasu&ガラス,tamago&tamago&卵,tane&tane&種,tori&tori&鳥,honyūrui&honyurui&哺乳類,sekitan&sekitan&石炭,chishiki&chishiki&知識,kagaku&kagaku&科学,kyōkai&kyokai&教会,toshokan&toshokan&図書館,go&go&語,pāchimento&pachimento&パーチメント,tabemono&tabemono&食べ物,sake&sake&酒\nsin&sin&신,mul&mul&물,bae&bae&배,bul&bul&불,namu mogjae&namu mogjae&나무 목재,namu&namu&나무,jigu&jigu&지구,dol&dol&돌,dong-gul&donggul&동굴,jandi&jandi&잔디,balam&balam&바람,guleum&guleum&구름,yong-am&yongam&용암,beongae&beongae&번개,jijin&jijin&지진,dongmul&dongmul&동물,ingan&ingan&인간,mulgogi&mulgogi&물고기,geumsog&geumsog&금속,pogpung-u&pogpungu&폭풍우,bi&bi&비,kkoch-ip&kkochip&꽃잎,heogong&heogong&허공,tanso&tanso&탄소,jinheulg&jinheulg&진흙,molae&molae&모래,yuli&yuli&유리,dalgyal&dalgyal&달걀,ssi&ssi&씨,sae&sae&새,poyulyu&poyulyu&포유류,seogtan&seogtan&석탄,naeyong&naeyong&내용,hagmun&hagmun&학문,gyohoe&gyohoe&교회,doseogwan&doseogwan&도서관,eon-eo&eoneo&언어,yangpiji&yangpiji&양피지,eumsig&eumsig&음식,sul&sul&술\n&deus&deus,&aqua&aqua,&cymba&cymba,&ignis&ignis,&lignum&lignum,&arbor&arbor,&terra&terra,&lapis&lapis,&antrum&antrum,&gramen&gramen,&ventus&ventus,&nubis&nubis,&lava&lava,&fulgur&fulgur,&terrae motus&terrae motus,&animal&animal,&humano&humano,&piscis&piscis,&metallicum&metallicum,&tempestas&tempestas,&pluvia&pluvia,&flos&flos,&air&air,&carbon&carbon,&argilla&argilla,&harenae&harenae,&vitrum&vitrum,&ovum&ovum,&granum&granum,&avis&avis,&mammal&mammal,&carbo&carbo,&cognitio&cognitio,&scientia&scientia,&ecclesia&ecclesia,&bibliotheca&bibliotheca,&lingua&lingua,&membrana&membrana,&cibus&cibus,&alcohol&alcohol\ntheós&theos&θεός,hýdōr&hydor&ύδωρ,ploîon&ploion&πλοίον,pŷr&pyr&πυρ,hýlē&hyle&ύλη,déndron&dendron&δένδρον,gaîa&gaia&γαία,pétros&petros&πέτρος,ántron&antron&άντρον,poía&poia&ποία,ánemos&anemos&άνεμος,néphos&nephos&νέφος,rhýax&rhyax&ρύαξ,astrapḗ&astrape&αστραπή,seismós&seismos&σεισμός,zō̂ion&zoion&ζώον,anthrṓpeios&anthropeios&ανθρώπειος,ichthýs&ichthys&ιχθύς,sídēros&sideros&σίδηρος,thýella&thyella&θύελλα,hyetós&hyetos&υετός,ánthos&anthos&άνθος,aḗr&aer&αήρ,ánthrax&anthrax&άνθραξ,pēlós&pelos&πηλός,ámmos&ammos&άμμος,hýalos&hyalos&ύαλος,ōión&oion&ωόν,sporá&spora&σπορά,órnis&ornis&όρνις,,ánthrax&anthrax&άνθραξ,máthēma&mathema&μάθημα,epistḗmē&episteme&επιστήμη,neṓs&neos&νεώς,bibliothḗkē&bibliotheke&βιβλιοθήκη,glō̂ssa&glossa&γλώσσα,diphthéra&diphthera&διφθέρα,sîtos&sitos&σίτος,oínos&oinos&οίνος\nbhagavan&bhagavan&भगवान,jalam&jalam&जलम्‌,nauka&nauka&नौका,agnih&agnih&अग्निः,kashth&kashth&काष्ठ,vrukshah&vrukshah&वृक्षः,pruthvi&pruthvi&पृथ्वी,prastaram&prastaram&प्रस्तरं,guhaa&guhaa&गुहा,trunam&trunam&तृणं,vayuh&vayuh&वायुः,megha&megha&मेघ,lavaa&lavaa&लावा,gaj&gaj&गाज,bhukamp&bhukamp&भूकंप,pashu&pashu&पशु,manav&manav&मानव,min&min&मीन,dhatu&dhatu&धातु:,chandavat&chandavat&चण्डवात,vrushti&vrushti&वृष्टि,puspam&puspam&पुष्पं,vayu&vayu&वायु,,pank&pank&पङ्क:,valuka&valuka&वालुका,kaanch&kaanch&कांच,and&and&अंड,bij&bij&बीज,pakshi&pakshi&पक्षी,standhari&standhari&स्तनधारी,angar&angar&अङ्गार,dnyanam&dnyanam&ज्ञानम्‌,vignyanam&vignyanam&विज्ञानम्‌,,pustakalaya&pustakalaya&पुस्तकालय,bhasha&bhasha&भाषा,charmapatram&charmapatram&चर्मपत्रम्,aaharah&aaharah&आहारः,madyam&madyam&मद्यम्"

var languages = ["Hebrew","Spanish","French","Italian","English","German","Swedish","Czech","Polish","Russian","Simplified Chinese","Japanese","Korean","Latin","Ancient Greek","Sanskrit"]

var concepts = ["God","water","boat","fire","wood","tree","earth","stone","cave","grass","wind","cloud","lava","lightning","earthquake","animal","human","fish","metal","storm","rain","flower","air","carbon","clay","sand","glass","egg","seed","bird","mammal","coal","knowledge","science","church","library","language","parchment","food","alcohol"]

var language_weights = [["4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4"],
						["4","4","3","2","3","2","2","2","2","1","1","1","1","3","1","1"],
						["4","3","4","2","3","3","2","2","2","1","1","1","1","3","1","1"],
						["4","2","2","4","2","2","2","2","2","2","1","1","1","3","2","1"],
						["4","3","3","2","4","3","2","1","1","2","2","2","1","2","2","1"],
						["4","2","3","2","3","4","2","3","3","2","1","1","1","1","1","1"],
						["4","2","2","2","2","2","4","2","3","3","1","1","1","1","1","1"],
						["4","2","2","2","1","3","2","4","3","2","1","1","1","1","1","1"],
						["4","2","2","2","1","3","3","3","4","3","1","1","1","1","1","1"],
						["4","1","1","2","2","2","3","2","3","4","3","2","2","1","1","1"],
						["4","1","1","1","2","1","1","1","1","3","4","3","3","1","1","1"],
						["4","1","1","1","2","1","1","1","1","2","3","4","3","1","1","1"],
						["4","1","1","1","1","1","1","1","1","2","3","3","4","1","1","1"],
						["4","3","3","3","2","1","1","1","1","1","1","1","1","4","3","2"],
						["4","1","1","2","2","1","1","1","1","1","1","1","1","3","4","2"],
						["4","1","1","1","1","1","1","1","1","1","1","1","1","2","2","4"]]

var concept_weights =  [["5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5"],
						["5","5","4","1","2","3","3","2","2","3","3","5","1","2","1","3","3","4","1","3","5","3","2","1","3","2","2","1","3","3","3","1","1","2","1","1","1","1","4","4"],
						["5","4","5","3","5","5","2","2","1","1","1","1","1","1","2","3","4","4","3","3","4","1","2","1","1","2","1","1","1","1","3","1","3","2","1","1","1","1","3","2"],
						["5","1","3","5","4","4","2","2","3","3","3","1","5","5","2","3","3","3","3","1","1","1","3","4","3","3","3","3","1","3","3","4","4","2","1","1","3","2","4","4"],
						["5","2","5","4","5","5","4","3","1","2","2","1","1","1","1","1","3","1","3","1","3","1","1","4","2","1","3","1","1","3","3","2","2","3","4","4","1","5","3","1"],
						["5","3","5","4","5","5","5","2","1","4","4","3","1","2","2","3","3","1","1","2","3","4","3","3","1","1","1","3","5","4","3","1","3","3","2","1","1","5","1","1"],
						["5","3","2","2","4","5","5","5","4","3","3","1","4","1","5","3","3","2","5","2","1","3","1","2","4","5","2","1","3","1","2","3","4","3","4","3","2","2","1","1"],
						["5","2","2","2","3","2","5","5","5","2","2","1","4","1","3","2","3","2","5","1","2","2","1","3","3","4","2","1","1","2","3","3","1","1","4","1","1","2","1","1"],
						["5","2","1","3","1","1","4","5","5","2","2","1","3","2","3","3","3","1","4","2","2","1","3","2","1","1","1","1","1","1","3","2","4","2","1","2","1","1","2","2"],
						["5","3","1","3","2","4","3","2","2","5","5","1","1","2","2","4","2","1","1","1","3","5","3","1","1","1","1","1","3","1","3","1","1","1","1","1","1","1","2","3"],
						["5","1","3","1","1","3","1","1","2","3","5","4","1","2","2","1","1","1","1","4","3","2","5","1","1","2","2","1","3","3","1","1","2","2","1","1","3","3","1","1"],
						["5","5","1","1","1","3","1","1","1","1","4","5","1","5","1","2","3","1","1","4","5","1","4","1","1","1","1","1","1","2","1","1","3","4","4","2","1","1","1","1"],
						["5","1","1","5","1","1","4","4","3","1","1","1","5","1","3","1","1","1","5","1","1","1","2","4","1","2","3","1","1","1","1","4","2","3","1","1","1","1","2","1"],
						["5","2","1","5","1","2","1","1","2","2","2","5","1","5","2","1","1","1","4","5","4","1","3","2","1","1","2","1","1","1","1","2","3","3","3","1","1","1","1","1"],
						["5","1","2","2","1","2","5","3","3","2","2","1","3","2","5","1","1","1","2","1","1","1","1","1","1","3","1","1","1","2","1","2","1","2","1","1","1","1","1","1"],
						["5","3","3","3","1","3","3","2","3","4","1","2","1","1","1","5","5","5","1","1","1","2","3","4","1","1","1","4","2","5","5","1","4","4","3","3","3","1","4","1"],
						["5","3","4","3","3","3","3","3","3","2","1","3","1","1","1","5","5","2","1","1","1","2","3","4","3","3","3","2","2","1","5","2","5","4","5","4","4","3","2","3"],
						["5","4","4","3","1","1","2","2","1","1","1","1","1","1","1","5","2","5","1","2","2","1","1","3","2","2","1","4","1","2","1","1","2","2","3","1","1","1","4","1"],
						["5","1","3","3","3","1","5","5","4","1","1","1","5","4","2","1","1","1","5","1","1","1","1","2","2","4","3","1","1","1","1","2","3","3","1","4","1","2","2","1"],
						["5","3","3","1","1","2","2","1","2","1","4","4","1","5","1","1","1","2","1","5","5","2","4","1","2","3","1","1","1","1","1","1","1","2","3","1","1","1","1","3"],
						["5","5","4","1","3","3","1","2","2","3","3","5","1","4","1","1","1","2","1","5","5","4","2","1","3","1","2","1","3","1","2","1","1","1","1","1","1","1","1","2"],
						["5","3","1","1","1","4","3","2","1","5","2","1","1","1","1","2","2","1","1","2","4","5","3","2","1","1","1","1","4","3","3","1","2","1","2","2","1","1","1","1"],
						["5","2","2","3","1","3","1","1","3","3","5","4","2","3","1","3","3","1","1","4","2","3","5","1","1","1","3","1","2","4","3","1","1","1","1","1","4","1","1","1"],
						["5","1","1","4","4","3","2","3","2","1","1","1","4","2","1","4","4","3","2","1","1","2","1","5","2","3","2","1","2","2","2","5","1","3","1","4","1","4","3","2"],
						["5","3","1","3","2","1","4","3","1","1","1","1","1","1","1","1","3","2","2","2","3","1","1","2","5","4","3","1","1","1","2","1","2","1","3","1","1","1","3","2"],
						["5","2","2","3","1","1","5","4","1","1","2","1","2","1","3","1","3","2","4","3","1","1","1","3","4","5","5","1","2","1","1","3","1","1","1","1","1","1","1","1"],
						["5","2","1","3","3","1","2","2","1","1","2","1","3","2","1","1","3","1","3","1","2","1","3","2","3","5","5","2","1","1","1","1","3","2","4","4","1","2","1","3"],
						["5","1","1","3","1","3","1","1","1","1","1","1","1","1","1","4","2","4","1","1","1","1","1","1","1","1","2","5","1","5","3","1","1","2","3","1","1","1","5","1"],
						["5","3","1","1","1","5","3","1","1","3","3","1","1","1","1","2","2","1","1","1","3","4","2","2","1","2","1","1","5","3","3","1","2","1","1","2","1","1","3","1"],
						["5","3","1","3","3","4","1","2","1","1","3","2","1","1","2","5","1","2","1","1","1","3","4","2","1","1","1","5","3","5","2","1","2","2","3","2","3","1","4","1"],
						["5","3","3","3","3","3","2","3","3","3","1","1","1","1","1","5","5","1","1","1","2","3","3","2","2","1","1","3","3","2","5","1","4","4","3","4","3","2","4","2"],
						["5","1","1","4","2","1","3","3","2","1","1","1","4","2","2","1","2","1","2","1","1","1","1","5","1","3","1","1","1","1","1","5","1","3","1","3","1","3","3","3"],
						["5","1","3","4","2","3","4","1","4","1","2","3","2","3","1","4","5","2","3","1","1","2","1","1","2","1","3","1","2","2","4","1","5","5","5","5","5","4","3","1"],
						["5","2","2","2","3","3","3","1","2","1","2","4","3","3","2","4","4","2","3","2","1","1","1","3","1","1","2","2","1","2","4","3","5","5","4","5","5","4","3","3"],
						["5","1","1","1","4","2","4","4","1","1","1","4","1","3","1","3","5","3","1","3","1","2","1","1","3","1","4","3","1","3","3","1","5","4","5","4","4","4","2","3"],
						["5","1","1","1","4","1","3","1","2","1","1","2","1","1","1","3","4","1","4","1","1","2","1","4","1","1","4","1","2","2","4","3","5","5","4","5","5","5","1","1"],
						["5","1","1","3","1","1","2","1","1","1","3","1","1","1","1","3","4","1","1","1","1","1","4","1","1","1","1","1","1","3","3","1","5","5","4","5","5","5","4","4"],
						["5","1","1","2","5","5","2","2","1","1","3","1","1","1","1","1","3","1","2","1","1","1","1","4","1","1","2","1","1","1","2","3","4","4","4","5","5","5","1","2"],
						["5","4","3","4","3","1","1","1","2","2","1","1","2","1","1","4","2","4","2","1","1","1","1","3","3","1","1","5","3","4","4","3","3","3","2","1","4","1","5","4"],
						["5","4","2","4","1","1","1","1","2","3","1","1","1","1","1","1","3","1","1","3","2","1","1","2","2","1","3","1","1","1","2","3","1","3","3","1","4","2","4","5"]]

var card_library
var card_library_initialized = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	initialize_cards()

func initialize_cards() -> void:
	card_library = create_card_library(do_split(data))

func do_split(to_split):
	var language_split = to_split.split("\n")
	var word_split = []
	for i in range(language_split.size()):
		word_split.append(language_split[i].split(","))
	return word_split
	
func create_card_library(card_data):
	var card_objects = []
	for i in range(card_data.size()):
		var row = []
		for j in range(card_data[i].size()):
			var info = card_data[i][j].split("&")
			if info.size() == 3:
				row.append(card_info.new(info[2], info[0], info[1], i, j))
			else:
				row.append(null)
		card_objects.append(row)
	card_library_initialized = true
	return card_objects
	
func get_language_value(i) -> String:
	return languages[i] if i in range(languages.size()) else null

func get_concept_value(i) -> String:
	return concepts[i] if i in range(concepts.size()) else null

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(card_library[randi_range(0,languages.size()-1)][randi_range(0,concepts.size()-1)])
	pass
	
	
class card_info:
	var word : String
	var romanization : String
	var anglishization : String
	
	var language : int
	var concept : int
	
	func _init(w, r, a, l, c):
		word = w
		romanization = r
		anglishization = a
		language = l
		concept = c
		
	func _to_string() -> String:
		return "(" + str(language) + "," + str(concept) + "): " + word + " (" + romanization + ")" + " [" + anglishization + "], meaning " + CardLibrary.get_concept_value(concept) + " in " + CardLibrary.get_language_value(language) + "."
