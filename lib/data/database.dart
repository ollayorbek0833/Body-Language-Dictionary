import 'package:hive_flutter/hive_flutter.dart';

class DataBase{
  List toDoList = [];
  final _myBox = Hive.box("myBox");

  void createInitialData(){
    toDoList = [
      ["PLAYING WITH HAIR", "Playing with our hair (twirling, twisting, stroking) is a pacifying behaviour. It is most frequently utilized by women and might indicate either a good mood (while reading or relaxing) or stress (when waiting for an interview, for example, or experiencing a bumpy flight). Note that when the palm faces the head it is more likely to be a pacifier, as opposed to the palm-out orientation discussed below. Pacifying behaviours soothe us psychologically when we feel stress or anxiety; they also help us to pass the time.","SOCHLARNI BARMOQLAR BILAN AYLANTIRIB O'YNAMOQ", "(aylanish, burish, silash) tinchlantiruvchi xatti - harakatlardir. U ko'pincha ayollar tomonidan qo'llaniladi va yaxshi kayfiyatda (o'qish yoki dam olish paytida) yoki stress paytida (masalan, suhbatni kutishda yoki notinch parvozni boshdan kechirayotganda) ko'rinishi mumkin. E'tibor bering, agar qo'lning kafti boshga qaragan bo'lsa, u quyida muhokama qilingan kaftni tashqariga yo'naltirishdan farqli o'laroq, tinchlantiruvchi harakat bo'lishi mumkin. Tinchlantiruvchi xatti - harakatlar bizni stress yoki tashvish his qilganimizda psixologik jihatdan tinchlantiradi."],
      ["HAIR PULLING","The intentional and repetitive pulling out of hair is called trichotillomania. Hair pulling is more often seen in children and teenagers who are experiencing stress, but it is also occasionally seen in adults. Men tend to pluck hair from the corners of their eyebrows, while women are far more wide-ranging: plucking their eyelids, head hair, eyebrows, and arm hair. This is a stress response; even birds will pull out their feathers when stressed. The repetitive pulling out of the hair, like a nervous tic, pacifies by stimulating nerve endings; unfortunately, when it becomes severe, it requires medical intervention.", "SOCHINI  TORTMOQ","Sochni ataylab va takroriy tortib olish trikotillomaniya deb ataladi. Soch olish stressni boshdan kechirayotgan bolalar va o'smirlarda ko'proq uchraydi, lekin ba'zida kattalarda ham kuzatiladi. Erkaklar odatda qoshlarining burchaklaridagi sochlarni olishadi, ayollarda esa boshqacharoq: qovoqlari, bosh sochlari, qoshlari va qo'llarining sochlari. Bu stressga javob; hatto qushlar ham stressga duchor bo'lganda o'z patlarini sug'urib olishadi. Sochni takroriy tortib olish, asabiy tik kabi, asab tugunlarini rag'batlantirish orqali tinchlantiradi; afsuski, u og'irlashganda, tibbiy aralashuvni talab qiladi."],
      ["HEAD PATTING, BACK OF HEAD","When we are perplexed or mentally conflicted, we often find ourselves patting the back of our head with one hand, perhaps even stroking our hair downward as we struggle for an answer. This behaviour is soothing because of both the tactile sensation and the warmth that is generated. Like most hand-to-body touching, this is a pacifying behaviour that reduces stress or anxiety.", "BOSHNING ORQASINI SILAMOQ", "Biz hayron bo'lganimizda yoki ruhiy jihatdan qarama - qarshi bo'lganimizda, biz ko'pincha bir qo'limiz bilan boshimizning orqa qismini silaymiz, hatto javob topish uchun  qiynalayotganimizda sochlarimizni pastga qarab silaymiz. Bu xatti - harakatlar teginish hissi va hosil bo'lgan issiqlik tufayli tinchlantiradi. Ko'pincha qo'l - tanaga teginish kabi, bu stress yoki tashvishni kamaytiradigan tinchlantiruvchi xatti - harakatlardir."],
      ["HEAD SCRATCHING","Head scratching soothes us when we have doubts or feel frustrated, stressed, or concerned. You see it with people trying to remember information or when they are perplexed. This explains why it is often seen by teachers as students ponder a test question. Very rapid head scratching often signals high stress or concern. It can also signal the person is conflicted as to what to do next.", "BOSH QASHIMAQ", "Shubha tug'ilganda yoki umidsizlik, stress yoki tashvish hissi paydo bo'lganda, boshni yengil tirnash bizni tinchlantiradi. Siz buni ma'lumotni eslab qolishga urinayotgan odamlarda yoki ular hayron bo'lganlarida ko'rasiz. Bu ko'pincha o'qituvchilar tomonidan talabalar test savolini o'ylaganida ko'rinadi. Juda tez bosh qashish ko'pincha yuqori stress yoki tashvish haqida signal beradi. Bundan tashqari, bunda odam keying vazitatda nima qilishi kerakligi haqida ko'rsatishi mumkin."],
      ["HEAD NODDING","During conversations nodding serves to affirm, usually that the person is hearing and receptive to a message. Generally, it signals agreement.","BOSHINI  IRG'AB  QO'YMOQ","Suhbat chog'ida bosh chayqash, odatda, odam xabarni eshitishi va qabul qilishini tasdiqlash uchun xizmat qiladi."],
      ["HEAD STROKING","Beyond the function of keeping ones hair in place, people will stroke their hair with the palm to soothe themselves when stressed or confronted with a dilemma or while pondering how to answer a question.","BOSHNI SILAMOQ","Sochni joyida ushlab turish funktsiyasidan tashqari, odamlar stress yoki dilemmaga duch kelganda yoki savolga qanday javob berish haqida o'ylayotganda o'zlarini tinchlantirish uchun sochlarini kafti bilan silaydilar."],
      ["REACHING FOR HEAD (STUPEFIED)","People who are shocked, in disbelief, or stupefied might suddenly reach for their head with both hands so that the hands are near the ears but not touching them, with the elbows out toward the front. They might hold this position for several seconds as they try to make sense of what happened. This primitive, self-protective response might follow when someone has made a major faux pas, such as a driver crashing into his mailbox, or a player running toward the wrong goal line.", "BOSHGA QO'LNI YAQINLASHTIRISHMOQ  (HAYRATLANMOQ)","Hayratda qolgan, ishonmagan yoki ahmoq bo\u02bblgan kishilar to\u02bbsatdan ikki qo\u02bbli bilan boshlariga qo\u02bbl cho\u02bbzishlari mumkin, shunda qo\u02bbllari quloqlarga yaqin bo\u02bbladi, lekin ularga tegmaydi, tirsaklari old tomonga qaratiladi. Ular nima bo'lganini tushunishga harakat qilganda, bu pozitsiyani bir necha soniya ushlab turishlari mumkin. Bu ibtidoiy, o'zini himoya qiluvchi javob kimdir juda soxta harakat qilganda, masalan, haydovchi o'z pochta qutisiga urilib ketganda yoki o'yinchi noto'g'ri chiziq tomon yugurganida paydo bo'lishi mumkin."],
      ["INTERLACING FINGERS ON TOP OF HEAD","Usually performed with the palms down, this behaviour stands out because it is intended to cover the head and yet the elbows are usually out and wide. We see this when people are overwhelmed, at an impasse, or struggling, when there has been a calamity (after hurricanes or tornados by those who lost property), or when things are not going their way.", "BARMOQLARNI BOSH USTIGA QO'YMOQ","Odatda kaftlarni pastga tushirib bajariladi, bu harakat boshni yopish uchun mo'ljallanganligi bilan ajralib turadi, lekin tirsaklar odatda tashqarida va keng bo'ladi. Biz buni odamlar boshi berk ko'chaga tushganda, yoki kurashayotganda, falokat yuz berganda (mol - mulkini yo'qotganlar tomonidan bo'ron yoki tornadodan keyin) yoki ishlar o'z yo'lida bo'lmaganda ko'ramiz."],
      ["FOREHEAD TENSION","On some individuals, stress manifests as sudden tension of the forehead, a result of the stiffening and tensing of underlying muscles. One has to see people in a calm environment to get a baseline reading on their forehead, but when people are stressed, tension of the forehead is frequently very noticeable and is an excellent indicator that something is wrong.","PESHONA TARANHLASHUVI","Ba'zi odamlarda stress peshonaning to'satdan taranglashishi sifatida namoyon bo'ladi, bu esa pastki mushaklarning qotib qolishi va taranglashishi natijasida yuzaga keladi. Shubhasiz, odamlarning peshonasida asosiy ma'lumotni o'qish uchun tinch muhitda ko'rish kerak, lekin odamlar stressga duchor bo'lganda, peshonaning tarangligi ko'pincha sezilarli bo'ladi va nimadir noto'g'ri ekanligining ajoyib belgisidir."],
      ["FOREHEAD FURROWING","Furrowing of the forehead in response to a stimulus is usually a good indicator that something is amiss, there are issues, or a person is insecure. It is also seen when people are concentrating or trying to make sense of something. Furrowing of the forehead is usually associated with doubt, tension, anxiety, or concern.", "PESHONASI  BURISHMOQ","Biror bir turtkiga javoban peshonaning egilishi, odatda, biror narsa noto'g'ri ekanligini, muammolar borligini yoki odamning ishonchsizligini ko'rsatadi. Bu odamlar diqqatini jamlaganda yoki biror narsani tushunishga harakat qilganda ham ko'rinadi. Peshonaning burishishi odatda shubha, taranglik, yoki tashvish bilan bog'liq"],
      ["FOREHEAD SWEATING","If the degree of stress is high enough, some people begin to spontaneously sweat. Sweating is very individual. Some sweat profusely with their first sip of coffee, or climbing a flight of stairs, so make sure to get a baseline of this behaviour before jumping to any conclusion.",
        "PESHONASI  TERLAMOQ","Agar stress darajasi etarlicha yuqori bo'lsa, ba'zi odamlar o'z - o'zidan terlashni boshlaydilar. Terlash juda individualdir. Ba'zilar birinchi qultum qahva yoki zinapoyaga ko'tarilishda qattiq terlashadi, shuning uchun biron bir xulosaga kelishdan oldin bu xatti - harakatning asosini bilib oling."
      ],
      [
        "TEMPLE VEIN THROBBING","When a person is under stress, the superficial temporal veins (those nearest the skin on the sides of our heads and just behind the eyes) might pulse or throb visibly. It is a very accurate indicator of autonomic arousal due to anxiety, concern, fear, anger, or, occasionally, excitement. Autonomic arousal is the brain\u2019s way of automatically going into survival mode - compelling the heart and the lungs to work faster in anticipation of physical activity such as running or fighting",
        "TEMPORAL VENALARI BO'RTIB CHIQMOQ","Odam stress holatida bo'lganida, yuzaki temporal venalar (boshimizning yon tomonlaridagi teriga eng yaqin joylashgan va ko'z orqasidagi) ko'rinib turadigan tarzda puls qilishi yoki urishi mumkin. Bu tashvish, qo'rquv, g'azab yoki vaqti - vaqti bilan hayajon tufayli avtonom qo'zg'alishning juda aniq ko'rsatkichidir. Avtonom qo'zg'alish - bu miyaning avtomatik ravishda omon qolish rejimiga o'tish usuli - yugurish yoki jang qilish kabi jismoniy faoliyatni kutish uchun yurak va o'pkalarni tezroq ishlashga majbur qiladi."
      ],
      [
        "FOREHEAD MASSAGING","We tend to massage our foreheads when we have headaches (literally), when we are processing information, or when we have worries, concerns, doubts, or anxiety. It is a pacifying behaviour, which helps to soothe tension or apprehension.",
        "PESHONANI UQALAMOQ","Biz bosh og'rig'i (so'zma - so'z ma'noda), ma'lumotni qayta ishlayotganimizda yoki tashvish, xavotir, shubha yoki xavotirda bo'lganimizda peshonamizni massaj qilishga moyilmiz. Bu tinchlantiruvchi xatti - harakatlar bo'lib, u keskinlik yoki qo'rquvni tinchlantirishga yordam beradi."
      ],
      [
        "POINTING AT FOREHEAD","Pointing a finger at the forehead or making a screwing motion with the finger while pointing at the forehead is very insulting - it means that the observer is ill-informed, stupid, or crazy.",
        " PESHONAGA KO'RSATMOQ","Barmoqni peshonaga ko'rsatish yoki peshonaga ishora qilayotganda barmoq bilan burama harakat qilish juda haqoratli - bu kuzatuvchining ma\u2019lumoti yomon, ahmoq yoki aqldan ozganligini bildiradi."
      ],
      [
        "PRESSING HAND ON FOREHEAD","Pressing the hand flat against the forehead helps relieve tension caused by stress, doubt, or insecurity. This is different from slapping the hand on the forehead; it looks as though the person is trying to push his head backwards. As with so many other behaviours, this is intended to soothe the individual psychologically through tactile pressure on the skin.",
        " QO'LNI PESHONAGA BOSMOQ","Qo'lni peshonaga tekis bosish stress, shubha yoki ishonchsizlikdan kelib chiqqan taranglikni bartaraf etishga yordam beradi. Bu qo'lni peshonaga urishdan farq qiladi; odam boshini orqaga surish uchun harakat qilayotganga o'xshaydi. Boshqa ko'plab xatti - harakatlarda bo'lgani kabi, bu teriga teginish bosimi orqali odamni psixologik jihatdan tinchlantirish uchun mo'ljallangan."
      ],
      [
        "EYEBROW ARCHING/FLASHING (HAPPY)","Eyebrow arching or flashing conveys excitement (such as when greeting a close friend) or the recognition of something pleasing. We arch our brows in less than one - fifth of a second. It is a gravity - defying behaviour, as it is performed in an upward direction, and as with most gravity - defying behaviours, it signifies something positive. Babies just a few months old light up when their mother flashes her eyebrows. Here is a great behaviour to let others know we care and are happy to see them. A happy eyebrow flash can be immensely useful and powerful in everyday situations both at home and at work",
        "QOSHLARNI UCHIRMOQ","Qoshlarning qayrilishi, uchirilishi hayajonli holatda (masalan, yaqin do'stingiz bilan salomlashayotganda) yoki yoqimli narsaning tan olinishini bildiradi. Biz qoshlarimizni soniyaning beshdan bir qismidan kamroq vaqt ichida uchiramiz. Bu tortishish kuchiga qarshi harakatdir, chunki u yuqoriga yo'nalishda amalga oshiriladi va tortishish kuchiga qarshi xatti - harakatlarning ko'pchiligida bo'lgani kabi, u ijobiy narsani anglatadi. Bir necha oylik chaqaloqlar onasi qoshlarini uchirib qaraganida jilmayadi. Bu boshqalarga g'amxo'rlik qilishimiz va ularni ko'rishdan xursand ekanligimizni bildirish uchun ajoyib xatti - harakatlar. Quvonch bilan qosh uchirish uyda ham, ishda ham kundalik vaziyatlarda juda foydali va ta\u2019sirli bo'lishi mumkin."
      ],
      [
        "EYEBROW GREETINGS","We flash our eyebrows when we recognize someone we know and cannot speak up at that moment, or simply to recognize a person's presence, with or without a smile, depending on circumstances. We are quick to notice when this courtesy is not extended to us.",
        "QOSHNI KO'TARIB  JILMAYIB SALOMLASHMOQ","Biz tanigan va o'sha paytda gapira olmagan odamni taniganimizda yoki vaziyatga qarab odamning borligini tabassum bilan yoki tabassumsiz tanib olish uchun qoshimizni ko\u2019tarib  turamiz. Bizga nisbatan xushmuomalalik qilinmaganida qoshimizni chimiramiz."
      ],
      [
        "EYEBROW ASYMMETRY","People use this signal when they have doubts or uncertainty. One eyebrow will arch high, while the other remains in the normal position or sinks lower. Asymmetry signals that the person is questioning or doubting what is being said.",
        "QOSH ASMMETRYASI","Odamlar shubha yoki noaniqlik tug'ilganda bu signaldan foydalanadilar. Bir qosh baland bo'ladi, ikkinchisi esa normal holatda qoladi yoki pastga tushadi. Asimmetriya, odam aytilgan narsadan shubhalanayotganini yoki so'ramoqchi bo'lganligini ko'rsatadi."
      ],
      [
        "EYEBROW NARROWING/KNITTING","The area between the eyes and just above the nose is called the glabella, and when the glabella becomes narrow or furrowed, it usually means there is an issue, concern, or dislike. This universal sign may happen very quickly and thus can be difficult to detect, but it is an accurate reflection of sentiments. Some people will knit their brow when they hear something troubling or are trying to make sense of what they\u2019re being told.",
        "QOSHLAR  O'RTASI  TORAYIB KETISHI","Ko'zlar orasidagi va burun tepasidagi maydon glabella deb ataladi va glabella torayib yoki qiyshayib qolsa, odatda muammo, tashvish yoki yoqtirmaslik borligini anglatadi. Bu universal belgi juda tez sodir bo'lishi mumkin va shuning uchun uni aniqlash qiyin bo'lishi mumkin, ammo bu his - tuyg'ularning aniq aksidir. Ba'zi odamlar tashvishli narsani eshitganda yoki ularga aytilgan narsani tushunishga harakat qilishganda, qoshlarining o'rtasi tortishadi."
      ],
      [
        "FROWN","look in a worried or angry way, moving down the eyebrows together. He read the telegram, frowning at its contents.",
        "QOSHLARNI CHIMIRMOQ","qoshlarni birgalikda pastga siljitib, tashvishli yoki g'azablangan tarzda qarash. U telegrammani mazmuniga qarab qovog'ini chimirib o'qidi."
      ],
      [
        "SCOWL","frown angrily. She was very angry and scowled at him while she talked.",
        " XO'MRAYMOQ","jahl bilan qovog'ini burish. U juda g'azablandi va gaplashayotganda unga qarab qo'ydi."
      ],
      [
        "LOOK","give attention to what one is seeing; turn the eyes and see in a certain direction. Look at that cute baby!",
        "QARAMOQ","ko'rayotgan narsaga e'tibor berish; ko'zni ma'lum bir yo'nalishda qadash. Bu yoqimli chaqaloqqa qarang!"
      ],
      [
        "SEE","use the power of sight. See! Here she comes!",
        "KO'RMOQ","ko'rish kuchidan foydalanish. Qarang! Mana u keldi!"
      ],
      [
        "WATCH","look at some activity or event; keep one's eyes fixed on something. The boys watched television all the afternoon.",
        "TOMOSHA QILMOQ","biron bir faoliyat yoki hodisaga qarash; biror narsaga ko'z tikmoq. Bolalar tushdan keyin televizor tomosha qilishdi."
      ],
      [
        "GAZE","look at something for a long time, in surprise or admiration. She gazed at him in disbelief when he told her the news.",
        "TIKILIB QARAMOQ","bir narsaga uzoq vaqt, hayrat yoki hayrat bilan qarash. U bu xabarni aytganida unga ishonmay tikildi."
      ],
      [
        "STARE","look at something for a long time with the eyes wide open. She was staring into space.",
        "TIKILMOQ","ko'zini katta ochib biror narsaga uzoq vaqt qarash. U kosmosga tikilib turardi."
      ],
      [
        "GAWK = GAWP","stare impolitely. Many people gathered to gawp at the crashed car.",
        "ODOBSIZLARCHA QARAMOQ","Ko'p odamlar halokatga uchragan mashinani ko'rish uchun yig'ilishdi."
      ],
      [
        "GAPE", "look at something with one's mouth open. She gaped at him in surprise.",
        "HAYRATLANMOQ","og'zini ochib biror narsaga qaramoq. U hayrat bilan unga qaradi."
      ],
      [
        "GLANCE","have a quick look at something. She glanced at her watch.",
        "NAZAR TASHLAMOQ","biror narsaga tez nazar tashlash. U soatiga qaradi."
      ],
      [
        "SCAN","look quickly at something without careful reading. He scanned the newspaper over breakfast.",
        "KO'Z  YUGURTIRMOQ","diqqat bilan o'qimasdan tezda biror narsaga qarash. U nonushta paytida gazetaga ko'z yugurtirib chiqdii."
      ],
      [
        "GLARE","stare angrily or fiercely. She didn't answer, but just glared silently at me.",
        "G'AZAB BILAN BOQMOQ","jahl bilan yoki shiddatli tikilish. U javob bermadi, faqat menga jimgina qaradi."
      ],
      [
        "PEER","look very carefully, as if not able to see well. He peered at me over his spectacles.",
        "DIQQAT BILAN QARAMOQ","go'yo yaxshi ko'rinmayotgandek ehtiyotkorlik bilan qarash,. U ko'zoynagi ustida menga tikildi."
      ],
      [
        "PEEP","look quickly and cautiously. He was caught peeping through the keyhole.",
        "MO'RALAB QARAMOQ","tez va ehtiyotkorlik bilan qarash. U kalit teshigidan mo'ralab turganida qo'lga tushdi."
      ],
      [
        "OBSERVE","watch carefully. The police observed the man entering the bank.",
        "KUZATMOQ","diqqat bilan kuzatib borish. Politsiya erkakning bankka kirganini kuzatgan."
      ],
      [
        "GLIMPSE","have a passing view of something or someone. Usually used in the expression to catch a glimpse of. He could catch a glimpse of the president among the crowd.",
        "KO'Z  BILAN  ILG'AMOQ","odatda ko'z - ko'z qilish iborasida ishlatiladi. U olomon orasidan prezidentni ko'rishi mumkin edi."
      ],
      [
        "SPOT","recognize someone suddenly among many others. He was spotted by the police boarding a plane for Berlin.",
        "TANIB QOLMOQ","ko'pchilik orasida to'satdan kimnidir tanib olish. Uni Berlinga uchayotgan samolyotga o'tirgan politsiyachilar ko'rib qolishgan."
      ],
      [
        "VIEW","(technical) look thoroughly; regard, consider. That film hasn't been viewed by the censor yet.",
        "TOMOSHA QILMOQ","(texnik) puxta qarash; hisobga olmoq. Bu film hali tsenzura tomonidan ko'rilmagan."
      ],
      [
        "BEHOLD","old use of the verb to see. Behold the king!",
        "KO'RMOQ","ko'rmoq fe'lining eski qo'llanilishi. Shohni ko'ring!"
      ],
      [
        "SIGHT","see for the first time. The men in the ship finally sighted land.",
        "KO'RMOQ","birinchi marta ko'rish. Kemadagi odamlar nihoyat quruqlikni ko'rishdi."
      ],
      [
        "LEER","look unpleasantly, suggesting ill will or lust. The man leered at the young girl",
        "HIRS BILAN QARAMOQ","yomon niyat yoki shahvatni ko'rsatadigan yoqimsiz tarzda qarash. Erkak yosh qizga hirs bilan qaradi."
      ],
      [
        "BLINK","shut and open the eyes quickly. How long can you stare without blinking?",
        "KO'ZLARNI PIRPIRATMOQ","ko'zni tez ochib yopish . Qachongacha ko'zni pirpiratmasdan qarab turishingiz mumkin?"
      ],
      [
        "WINK","close one eye briefly, as a signal to somebody. He winked at me to show that he was just joking.",
        "KO'Z QISMOQ","kimgadir signal sifatida bir ko'zni qisqa yumish. U shunchaki hazil qilayotganini ko'rsatish uchun menga ko'z qisib qo'ydi."
      ],
      [
        "SQUINT","look with eyes half shut or turned sideways, or through a narrow opening. She squinted through the letter - box and saw an envelope.",
        "KO'ZINI QISIB TIKILMOQ","ko'zlarni yarim yumuq yoki yon tomonga burilgan holda yoki tor teshikdan qarash. U xat qutisiga ko'zini qisib qaradi va konvertni ko'rdi."
      ],
      [
        "PEEK","look quickly and secretively. She found her brother peeking at her diary.",
        "KO'Z TASHLAMOQ","tez va yashirincha qarash. U ukasini uning kundalik daftariga qarab o'tirganini ko'rib qoldi."
      ],
      [
        "GOGGLE","look with the eyes wide open in surprise or shock. (old - fashioned) People were goggling at her as if she were from another planet.",
        "LOL BO'LIB BOQMOQ","hayratda yoki hayratda katta ochiq ko'zlar bilan qarash. (oldingi usul) Odamlar unga xuddi boshqa sayyoradan kelgandek qarab turishardi."
      ],
      [
        "EYEBALL","look directly or closely. Francis eyeballed a beautiful woman at the party.",
        "TERMULIB  QARAMOQ","to'g'ridan - to'g'ri yoki yaqindan qarash. Frensis ziyofatda go'zal ayolga termulib qaradi."
      ],
      [
        "CAST AN EYE ON/OVER SOMETHING","look at something, examine something.",
        "BIROR NARSAGA KO'Z TASHLAMOQ","biror narsaga qarash, nimanidir tekshirish."
      ],
      [
        "BROWSE","look through the pages of a book or magazine; look at the goods in a shop without really wanting to buy anything. Sheila spent all the afternoon browsing the boutiques.",
        "KO'RIB CHIQMOQ","kitob yoki jurnal sahifalarini ko'rib chiqish; hech narsa sotib olishni xohlamasdan do'kondagi tovarlarga qarash. Sheila butun kunni butiklarni kezish bilan o'tkazdi."
      ],
      [
        "SCRUTINIZE","examine thoroughly and carefully. John scrutinized the painting at the museum",
        "SINCHIKLAB KO'ZDAN KECHIRMOQ","yaxshilab va diqqat bilan tekshirmoq. Jon muzeydagi rasmni sinchkovlik bilan ko'zdan kechirdi."
      ],
      [
        "TAKE A GANDER AT SOMETHING","(informal) look at something.",
        "BIROR NARSAGA QARAMOQ","(norasmiy) biror narsaga qarash."
      ],
      [
        "BURST INTO TEARS","suddenly start crying. When her boyfriend told her the truth, she burst into tears and ran out.",
        "YIG'LAY BOSHLADI","birdan yig'lay boshlaydi. Yigiti unga haqiqatni aytganida, u yig'lab yubordi va yugurib chiqib ketdi."
      ],
      [
        "YOUR EYES WATER","you start to cry, especially because there is a lot of smoke or because you have been cutting up onions. There was so much smoke in that room that my eyes were watering.",
        "KO'ZNING YOSHLANIB KETISHI","tutun ko'p bo'lgani uchun yoki piyozni kesib olganda yig'lay boshlaganda sodir bo'lishi.  O'sha xonada juda ko'p tutun bor ediki, ko'zim yoshlandi."
      ],
      [
        "SOB","cry noisily, with sudden noisy breaths. He began sobbing uncontrollably.",
        "O'KIRIB YIG'LAMOQ","to'satdan baland tovushda yig'lash. U o'zini tutolmay yig'lay boshladi."
      ],
      [
        "BAWL","(a baby) cry very loudly. We could hear the baby bawling upstairs.",
        "CHINQIRIB YIG'LASH","(chaqaloq) juda qattiq yig'laydi. Biz tepada chaqaloqning chinqirib yig'layotganini eshitdik."
      ],
      [
        "CRY ONE'S EYES/HEART OUT","be extremely sad and cry a lot. After the robbery, she cried her heart out.",
        "YURAKDAN YIG'LAMOQ","juda xafa bo'lganda ko'p yig'lash. O'g'rilikdan so'ng u yurakdan    yig'ladi."
      ],
      [
        "WEEP","cry a lot for a long time. The kids wept bitterly when it was time to leave.",
        "UZOQ VAQT YIG'LAMOQ","uzoq vaqt ko'p yig'lash. Ketish vaqti kelganida bolalar uzoq yig'lashdi."
      ],
      [
        "BE MOVED TO TEARS","be so upset that you start to cry. A lot of people were moved to tears by his story.",
        "KO'Z YOSHLARI QUYILIB KELMOQ","kishi shunchalik xafa bo'ladiki, yig'lay boshlaydi. Uning hikoyasidan ko'p odamlarning ko'zlariga yosh yosh quyilib keldi."
      ],
      [
        "BE IN FLOODS OF TEARS","(UK) cry a lot. The children were in floods of tears when our dog disappeared.",
        "KO'P KO'Z YOSH TO'KMOQ","(Buyuk Britaniya) ko'p yig'lash. Itimiz g'oyib bo'lganida bolalar ko'p yig'lashdi."
      ],
      [
        "BE IN TEARS","be crying. The children were all in tears when our dog disappeared.",
        "YIG'LAB YUBORMOQ","yig'lamoq. Itimiz g'oyib bo'lgach, bolalarning hammasi yig'lab yuborishdi."
      ],
      [
        "SHED TEARS","cry. I must admit I shed a few tears when the school closed.",
        "KO'Z YOSHLARINI TO'KMOQ","yig'lash. Tan olishim kerakki, maktab yopilganda men ancha ko'z yosh to'kkanman."
      ],
      [
        "HAVE TEARS IN ONE'S EYES","be about to cry. When I said goodbye, I had tears in my eyes.",
        "KO'ZIGA YOSH KELMOQ","yig'lamoqchi bo'lganda. Xayrlashganimda ko'zimga yosh keldi."
      ],
      [
        "BE CLOSE TO TEARS/ON THE VERGE OF TEARS","be about to cry. When she heard his voice on the phone, she was close to tears.",
        "YIG'LAMOQDAN BERI BO'LMOQ","yig'lamoqchi bo'lish. Telefonda uning ovozini eshitgach, ko'z yoshga yaqin qoldi."
      ],
      [
        "BREAK DOWN IN TEARS","suddenly cry a lot, after trying not to cry. After reading his letter, she broke down in tears.",
        "KO'Z YOSHLARINI TIYA OLMASDAN YIG'LAMOQ","yig'lamaslikka harakat qilgandan so'ng, birdan ko'p yig'lash. Uning maktubini o'qib, yig'lab yubordi."
      ],
      [
        "RELAXED EYES","Relaxed eyes signal comfort and confidence. When we are at ease, the muscles around the eyes, the forehead, and the cheeks relax - but the minute we are stressed or something bothers us, they become tense. Babies often demonstrate this quite strikingly, as their facial muscles suddenly scrunch up before they begin to cry. When trying to interpret any body - language behaviour, always refer back to the eyes for congruence. If the orbits (eye sockets) look relaxed, chances are all is well. If suddenly there is tension around the eyes or squinting, the person is focusing or might be stressed.",
        "XOTIRJAM KO'ZLAR","Xotirjam ko'zlar qulaylik va ishonchni bildiradi. Biz xotirjam bo'lganimizda, ko'z, peshona va yonoq atrofidagi mushaklar bo'shashadi - lekin biz stressga duchor bo'lganimizda yoki biror narsa bizni bezovta qilganda, ular taranglashadi. Chaqaloqlar buni ko'pincha hayratlanarli tarzda namoyish etadilar, chunki ularning yuz mushaklari yig'lay boshlashdan oldin to'satdan siqiladi. Tana tilidagi har qanday xatti - harakatni talqin qilishga urinayotganda, muvofiqlik uchun har doim ko'zlarga murojaat qiling. Agar orbitalar (ko'z teshiklari) bo'shashgan ko'rinsa, ehtimol hammasi yaxshi. Agar to'satdan ko'z atrofida zo'riqish paydo bo'lsa yoki ko'z qisib qo'ysa, odam diqqatini jamlagan yoki stressda bo'lishi mumkin."
      ],
      [
        "EYE SOCKET NARROWING","When we feel stressed, upset, threatened, or other negative emotions, the orbits of the eyes will narrow due to the contraction of underlying muscles. The brain immediately makes the eye orbits smaller in response to apprehension, concern, or doubt. It is a good indicator that there is an issue or something is wrong.",
        "KO'Z CHANOG'I TORAYMOQ","Biz stress, xafa, tahdid yoki boshqa salbiy his - tuyg'ularni his qilganimizda, ko'z orbitalari ostidagi mushaklarimizning qisqarishi tufayli torayadi. Miya qo'rquv, tashvish yoki shubhaga javoban darhol ko'z orbitalarini kichikroq qiladi. Bu muammo borligini yoki biror narsa noto'g'ri ekanligini yaxshi ko'rsatuvchidir."
      ],
      [
        "QUIVERING UNDER EYES","The tiny muscles directly under the eyes (the inferior underside of the Obicularis oculi) and just above the cheekbones, as well as the surrounding tissue, can be very sensitive to stress. When there is concern, anxiety, or fear, these soft areas will quiver or twitch, revealing the person\u2019s true emotional state.",
        "XAVOTIRLANIB QARAMOQ","Ko'z ostidagi pastki qismi va yonoq suyaklari ustidagi mayda muskullar, shuningdek, uning atrofidagi to'qimalar stressga juda sezgir bo'lishi mumkin. Xavotir, tashvish yoki qo'rquv mavjud bo'lganda, bu yumshoq joylar titraydi yoki silkinadi, bu odamning haqiqiy hissiy holatini ochib beradi."
      ],
      [
        "FREQUENT BLINKING","People who are nervous, tense, or stressed will generally blink more rapidly than those who are not. Frequent blinking is erroneously associated with deception. It is only indicative of stress or other factors noted above as even the honest blink more frequently when being questioned aggressively.",
        "KO'ZLARNI PIRPIRATMOQ","asabiy, zo'riqish yoki stressda bo'lgan odamlar odatda boshqalarga qaraganda ko'zlarini tez - tez pirpiratadilar. Tez - tez ko'zlarni pirpiratish xatolik qilganda yoki aldov bilan bog'liq. Bu faqat stress yoki yuqorida aytib o'tilgan boshqa omillardan dalolat beradi, chunki qattiq so'roqqa tutilganda, hatto to'g'riso'z odam ham ko'larini pirpiratib qoladi."
      ],
      [
        "EYE CONTACT","Eye contact is governed by cultural norms and personal preferences. In some cultures, it is permissible to look at someone for three to four seconds, while in others anything beyond two seconds is considered rude. Culture also determines who can look at whom. Even in America, eye contact is determined by what area of the country you are from. In New York City, staring at someone for more than a second and a half might be perceived as an affront. Particular ethnic and cultural groups have their norms. For instance, many African American and Hispanic children are taught to look down when addressed by elders, as a form of respect.",
        "KO'Z BILAN  ALOQA QILMOQ","Ko'z bilan aloqa qilish madaniy me'yorlar va shaxsiy ustunlik bilan ta\u2019sir o'tkazishdir. Ba'zi madaniyatlarda birovga uch - to'rt soniya davomida qarash joiz, boshqalarida esa ikki soniyadan ortiq bo'lgan narsa qo'pol deb hisoblanadi. Madaniyat kim kimga qarashini ham belgilaydi. Hatto Amerikada ham ko'z bilan aloqa qilish sizning qaysi mamlakat hududidan ekanligingiz bilan belgilanadi. Nyu - Yorkda kimgadir bir yarim soniyadan ko'proq tikilib turish haqorat sifatida qabul qilinishi mumkin. Muayyan etnik va madaniy guruhlarning o'z me'yorlari mavjud. Misol uchun, ko'plab afro - amerikalik va ispaniyalik bolalarga oqsoqollar murojaat qilganda, hurmat sifatida pastga qarashga o'rgatiladi."
      ],
      [
        "EYE AVOIDANCE","We avoid eye contact when it is inconvenient to talk to someone, or when we find a person unlikable, or obnoxious. Eye avoidance can be temporary or long-term. Temporarily, people might avert their eyes when a person does something embarrassing. In the United States, unlike other parts of the world, when we are nearby, as in an elevator, we tend to avoid making eye contact with strangers and even with those we know, especially if there are strangers present. Eye avoidance is not indicative of deception, but it can indicate shame or embarrassment.",
        "KO'ZLARNI OLIB QOCHMOQ","Biror kishi bilan gaplashish noqulay bo'lganida yoki odamni yoqimsiz, jirkanch deb topsak, biz ko'z bilan aloqa qilishdan qochamiz. Ko'zdan qochish vaqtinchalik yoki uzoq muddatli bo'lishi mumkin. Vaqtinchalik, biror kishi uyatli ish qilganda, odamlar ko'zlarini chalg'itishi mumkin. Qo'shma Shtatlarda, dunyoning boshqa qismlaridan farqli o'laroq, liftda bo'lgani kabi, yaqin atrofda bo'lganimizda, biz notanishlar va hatto o'zimiz bilganlar bilan ko'z bilan aloqa qilishdan qochamiz, ayniqsa begonalar bo'lsa. Ko'zdan qochish yolg'onni ko'rsatmaydi, lekin u uyat yoki xijolatni ham anglatishi mumkin."
      ],
      [
        "GAZE SUPERIORITY","All over the world, studies have shown that high-status individuals engage in more eye contact, while both speaking and listening. Less powerful people tend to make more eye contact with these higher-status individuals while listening but less while speaking. In Japan as well as other Asian Pacific countries this is even more pronounced. Incidentally, we tend to favor individuals who make direct eye contact with us, especially if they are of higher status.",
        "TIKILIB QARASH AHAMIYATI","Butun dunyoda olib borilgan tadqiqotlar shuni ko'rsatdiki, yuqori maqomga ega bo'lgan odamlar gapirganda ham, tinglashda ham ko'proq ko'z bilan aloqa qilishadi. Kuchi zaifroq odamlar esa tinglash paytida yuqori maqomga ega odamlarga ko'proq qarashadi, lekin gapirishda kamroq. Yaponiyada, shuningdek, Osiyo - Tinch okeanining boshqa mamlakatlarida bu yanada aniqroq ko'rinadi.. Aytgancha, biz bilan bevosita ko'z bilan aloqa qiladigan odamlarni afzal ko'ramiz, ayniqsa ular yuqori maqomga ega bo'lsa."
      ],
      [
        "EYE - CONTACT SEEKING","When we are interested in starting a conversation, whether in a social or a dating environment, we will actively scan until we make eye contact that says \"I am here - please talk to me.\"",
        "SUHBATGA KIRISHISH UCHUN KO'Z TIKIB TURMOQ","Biz suhbatni boshlashga qiziqqanimizda, xoh ijtimoiy muhitda, xoh tanishuv muhitida, \u201cMen shu yerdaman, iltimos, men bilan gaplashing\u201d degan ma\u2019noda ko\u02bbz bilan aloqa o\u02bbrnatmagunimizcha faol ravishda nigohimizni qadab turamiz."
      ],
      [
        "GAZE ENGAGING","This is a behaviour intended to get the attention of another person warmly or romantically. What makes this behaviour stand out is the softness of the face and the repeated attempts to connect, eye to eye, always with a gentleness of the eyes, face, and mouth. We most often see this in dating settings.",
        "NIGOHI BILAN O'ZIGA JALB QILMOQ","Bu boshqa odamning e'tiborini iliq yoki romantik tarzda jalb qilishga qaratilgan xatti - harakatlar. Bu xatti - harakatni ajratib turadigan narsa - ko'zni ko'zga tikib , yuzda  muloyimlik bilan suhbatga kirishish uchun takroriy urinishdir. Biz buni ko'pincha tanishuv jarayonlarida ko'ramiz."
      ],
      [
        "GAZING VERSUS STARING","There is a big difference between gazing at someone and staring at someone. Staring tends to be more impersonal, distant, or confrontational, signalling that we find someone suspicious, alarming, or odd. On the other hand, gazing signals that we take comfort in someone, a much more inviting behaviour. When we stare we are on alert; when we gaze we are intrigued, even welcoming.",
        "TIKILIB QARAMOQ YOKI MA'NOLI SHUBHALI QARAMOQ","Kimgadir tikilish va birovga shubhali qarash o'rtasida katta farq bor. Qarash ko'proq sovuq qarash, uzoq yoki qarshi bo'lib, biz shubhali, xavotirli yoki g'alati tarzda kimgadir qarashimizni bildiradi. Boshqa tomondan, tikilib qarash esa biz kimgadir yoqimli tasalli olishimizni, yanada jozibali xatti - harakatimizni bildiradi. Biz shubhali qaraganimizda hushyor bo'lamiz; tikilib qaraganimizda, o'zimizni birovga qiziqtiramiz va ochiq yuz bilan muomalada  bo'lamiz."
      ],
      [
        "EYES CLOSING FOR EMPHASIS","Oftentimes, when we want to emphasize something or agree in congruence, we will close our eyes ever so briefly. It is a way of affirming what is being said.",
        "KO'ZLARNI O'ZIGA ALOHIDA E'TIBOR QARATISH UCHUN YUMMOQ","Ko'pincha, biz biror narsani ta'kidlamoqchi bo'lganimizda yoki qarashlarimiz bir - biriga mos kelishini xohlasak, biz qisqa vaqt ichida ko'zlarni yumamiz. Bu aytilgan narsani tasdiqlashning bir usuli."
      ],
      [
        "COVERING OF EYES","Sudden covering of the eyes with a hand or fingers is a blocking behaviour associated with a negative event, such as the revelation of bad news or threatening information. It also indicates negative emotions, worry, or lack of confidence. You also see it with people who have been caught doing something wrong.",
        "KO'ZLARNI YOPMOQ","To'satdan ko'zlarni qo'l yoki barmoqlar bilan yopish - yomon xabar yoki tahdidli ma'lumot salbiy hodisa bilan bog'liq bo'lgan to'siq xatti - harakatlari. Bu shuningdek, tashvish yoki ishonchsizlik kabi salbiy his - tuyg'ularni ham ko'rsatadi.  Siz buni noto'g'ri ish qilgan odamlarda ham ko'rasiz."
      ],
      [
        "CRYING","Crying serves a variety of personal as well as social purposes, most notably providing a cathartic emotional release. Unfortunately, children also learn quickly that crying can be used as a tool to manipulate, and some adults don\u2019t hesitate to use it similarly. In observing a person\u2019s behaviour, crying should not be given any more weight than other signals that a person is having a hard time. Crying, if it occurs with great frequency, can also let us know when someone is clinically depressed or struggling psychologically.",
        "YIG'LAMOQ","Yig'lash turli xil shaxsiy va ijtimoiy maqsadlarga xizmat qiladi, ayniqsa, hissiy ozodlikni ta'minlaydi. Afsuski, bolalar yig'lashni manipulyatsiya qilish vositasi sifatida ishlatish mumkinligini tezda bilib olishadi va ba'zi kattalar ham xuddi shunday ishlatishdan tortinmaydilar. Yig'lash, agar u tez - tez sodir bo'lsa, kimdir klinik tushkunlikka tushganda yoki psixologik jihatdan kurashayotganidan darakberishi mumkin."
      ],
      [
        "CRYING WHILE CLUTCHING OBJECTS","Individuals who cry while clutching at their neck, necklace, or shirt collar are likely undergoing more serious negative emotions than a person merely crying.",
        "BIROR JIHOZGA TEGINIB YIG'LAMOQ","Bo'ynini, bo'yinbog'ini yoki ko'ylak yoqasidan ushlab yig'laganlar, shunchaki yig'layotgan odamga qaraganda jiddiyroq salbiy his - tuyg'ularni boshdan kechirishadi."
      ],
      [
        "EYELIDS FLUTTERING","Sudden eyelid fluttering suggests that something is wrong or that a person is struggling with something (think of the actor Hugh Grant, who often flutters his eyes on - screen when he has issues or has messed something up). People often flutter their eyes when they are struggling to find the right word or can\u2019t believe what they just heard or witnessed.",
        "KO'ZLARNI TEZ TEZ OCHIB YUMMOQ","To'satdan ko'z qovog'ining titrab ketishi nimadir noto'g'ri ekanligini yoki odam nimadir bilan qiynalayotganini ko'rsatadi (muammolarga duch kelganda yoki biror narsani buzganida tez - tez ekranda ko'zlarini pirpiratadigan aktyor Xyu Grantni o'ylab ko'ring). Odamlar ko'pincha to'g'ri so'zni topishga qiynalganda yoki eshitgan yoki guvohi bo'lgan narsalariga ishonolmasalar, ko'zlarini tez - tez ochib yumadilar."
      ],
      [
        "EYE ROLLING","Rolling of the eyes communicates contempt, disagreement, or dislike. Children often do it to their parents to communicate contention or rebellion. It has no place in a professional setting.",
        "KO'ZI CHAQCHAYMOQ","Ko'zlarni chaqchaytirish nafrat, kelishmovchilik yoki yoqtirmaslikni bildiradi. Bolalar ko'pincha ota - onalariga qarama - qarshilik yoki isyonni etkazish uchun buni qilishadi. Professional muhitda bu harakat qilinmaydi."
      ],
      [
        "FATIGUED EYES","Fatigue usually shows in the eyes first. The eyes and the area around them look strained, puffy, weathered, and even discolored. This may be due to long hours working; external factors, such as stress; or crying.",
        "CHARCHAGAN KO'ZLAR","Charchoq odatda ko'zlarda namoyon bo'ladi. Ko'zlar va ularning atrofidagi joylar tarang, shishgan va hatto rangi o'zgargan ko'rinadi. Buning sababi uzoq ish soatlari bo'lishi mumkin; tashqi omillar, masalan, stress; yoki yig'lash."
      ],
      [
        "GLAZED EYES","Any number of things can cause the eyes to look glazed, including drugs such as marijuana and alcohol as well as more dangerous substances.",
        "MA'NOSIZ BOQQAN KO'ZLAR","Har qanday narsa ko'zning ma'nosiz boqishiga olib kelishi mumkin, jumladan, marixuana va spirtli ichimliklar, shuningdek, xavfliroq moddalar."
      ],
      [
        "LOOKING ASKANCE","Looking askance (sideways) is often used to show a person's doubt, reluctance to commit, disregard, suspiciousness, or even contempt. It is a universal look that reflects disbelief, concerns, or incredulity.",
        "KO'Z QIRI BILAN ZIMDAN QARAMOQ","ko'z qiri bilan zimdan qarash ko'pincha odamning shubhasini, biror narsa qilishni istamasligini, mensimaslikni, shubhaliligini yoki hatto nafratlanishini ko'rsatish uchun ishlatiladi. Butashvish yoki ishonchsizlikni aks ettiruvchi universal ko'rinishdir."
      ],
      [
        "LOOKING FOR ACCEPTANCE","When individuals lack confidence or lie, they tend to scrutinize their audience, scanning faces to see if they are being believed. This behaviour is not necessarily demonstrative of deception, only of seeking acceptance for what is said. A rule of thumb: the truth teller merely conveys, while the liar often tries to convince.",
        "ISHONTIRISHGA HARAKAT QILISH UCHUN KO'Z YUGURTIRIB QO'YMOQ","Odamlarda o'ziga ishonch bo'lmasa yoki yolg'on gapirganda, ular o'z tinglovchilarini sinchkovlik bilan tekshiradilar, ularga ishonishadimi yoki yo'qligini bilish uchun bir ko'z yugurtirib chiqadilar. Bu xatti - harakat aldovni ko'rsatishi shart emas, faqat aytilganlarni qabul qilishlariga intilishdir. Asosiy qoida: haqiqatni aytuvchi shunchaki gapiradi, yolg'onchi esa ko'pincha ishontirishga harakat qiladi."
      ],
      [
        "EYES LOWERED","This is different from eye avoidance in that the individual does not break eye contact but rather shows deference, piety, humility, or contriteness by slightly lowering the eyes so that eye contact is not direct or intense. This is often culture-based. Black and Latino children are often taught to look down as a form of respect. In Japan it is rude to stare intently at the eyes of a person you meet for the first time; at a minimum, the eyelids must be lowered out of social deference.",
        "KO'ZLARNI PASTGA QADAB TURMOQ","Bu ko'zdan qochishdan farq qiladi, chunki odam ko'z bilan aloqani buzmaydi, aksincha, ko'z tushishi to'g'ridan - to'g'ri yoki qat\u2019iy  bo'lmasligi uchun ko'zlarini biroz pastga tushirib, hurmat, taqvo, kamtarlik yoki tavba ko'rsatadi. Bu ko'pincha madaniyatga asoslangan. Qora tanli va Latino bolalari ko'pincha hurmatning bir shakli sifatida pastga qarashga o'rgatiladi. Yaponiyada birinchi marta uchrashgan odamning ko'ziga diqqat bilan qarash qo'pollikdir; hech bo'lmaganda, ko'z qovoqlari pastga tushirilishi kerak."
      ],
      [
        "SAD EYES","Eyes look sad, dejected, or depressed when the upper eyelids droop and seem to have no energy. The look may be similar, however, to eyelids drooping from fatigue.",
        "G'AMLI KO'ZLAR","Ko'zlar yuqori ko'z qovoqlari qayg'uli yoki tushkun ko'rinadi, cho'kadi va energiya yo'qdek tuyuladi. Ko'rinish charchoqdan keying holatdagi ko'z qovoqlariga o'xshash bo'lishi mumkin."
      ],
      [
        "LOOKING AWAY","Looking away when conversing has to be viewed in context. When there is psycho-logical comfort, such as when talking to friends, we may feel relaxed enough to look away as we tell a story or remember something from the past. Many individuals find looking away helps them recall details. Looking away is not an indication of deception or lying.",
        "UZOQGA QARAMOQ","Suhbat paytida boshqa tomonga qarashni kontekstda ko'rish kerak. Psixomantiqiy qulaylik mavjud bo'lganda, masalan, do'stlar bilan suhbatlashganda, biz o'zimizni xotirjam his qilishimiz mumkin, chunki biz biror voqeani aytib beramiz, sababi o'tmishdagi biror narsani eslab qolgan bo'lishimiz mumkin. Ko'p odamlarda uzoqqa qarash ularga tafsilotlarni yodga olishga yordam beradi. Uzoqqa qarash har doim ham yolg'on yoki yolg'onning belgisi emas."
      ],
      [
        "SQUINTING","Squinting is an easy way to register displeasure or concern, especially when we hear or see something we don't like. Some people squint whenever they hear something bothersome, making this an accurate reflection of their feelings. But keep in mind that we also squint when we are simply focusing on something or trying to make sense of something we have heard, so context is crucial in interpreting this behaviour.",
        "KO'ZI QISILMOQ, KO'ZINI QISIB TIKILMOQ","ko'zni qisib qo'yish norozilik yoki xavotirni qayd etishning oson usuli hisoblanadi, ayniqsa biz yoqtirmaydigan narsani eshitganimizda yoki ko'rganimizda ko'zimizni qisib tikilamiz. Ba'zi odamlar bezovta qiluvchi narsani eshitganlarida ko'zlarini qisib qo'yishadi, bu ularning his - tuyg'ularini aniq aks ettiradi. Ammo shuni yodda tutingki, biz shunchaki biror narsaga e'tibor qaratganimizda yoki eshitgan narsamizni tushunishga harakat qilganimizda ham ko'zimizni qisib qo'yamiz, shuning uchun bu xatti - harakatni talqin qilishda kontekst juda muhimdir."
      ],
      [
        "STARING AGGRESSIVELY","A stare can intimidate or serve as the prelude to an altercation. Aggression is signalled by the laser-like focus on the eyes, with no attempt to look away or even blink.",
        "AGRESSIV NIGOH","qo'rqitishi yoki janjalning debochasi bo'lib xizmat qilishi mumkin. Agressiya ko'zlarga lazerga o'xshash bo'lib ko'rinib, boshqa yoqqa  qarashga, hatto kiprik qoqishga imkon bermaydi."
      ],
      [
        "ANGRY EYES","Anger is usually displayed by a constellation of facial cues beginning with the distinctive narrowing of the eyes near the nose (like this:",
        "G'AZABLANGAN  KO'ZLAR","G'azab odatda burun kataklari kengayib, ko'zlarning o'ziga xos torayishi bilan boshlanadigan yuz belgilarining turkumi bilan namoyon bo'ladi ."
      ],
      [
        "EYE ADORNMENT","Since the time of the Egyptian pyramids, women and men across the globe have adorned their eyes (eyelids, under the eye, the sides, etc.) with a variety of colours to make themselves more aesthetically appealing. Using inks, dyes, minerals, and oils, people have made this part of their cultural traditions.",
        "KO'ZGA ZEB BERMOQ","Misr piramidalari davridan boshlab butun dunyo bo'ylab ayollar va erkaklar o'zlarini estetik jihatdan jozibali qilish uchun ko'zlarini (ko'z qovoqlari, ko'z ostidagi, yon tomonlari va boshqalar) turli ranglar bilan bezashgan.  Bo'yoqlar, minerallar va moylardan foydalanib, odamlar buni o'zlarining madaniy an'analarining bir qismiga aylantirdilar."
      ],
      [
        "LISTENING","Active listening is an essential nonverbal in both professional and personal settings. It communicates that we are interested, receptive, or empathetic. Good listeners yield their turn, wait to speak, and are patient when others are speaking.",
        "TINGLAMOQ","Faol tinglash ham professional, ham shaxsiy muhitda muhim noverbal hisoblanadi. Bu bizni qiziqtiradigan, qabul qiluvchi yoki empatik ekanligimizni bildiradi. Yaxshi tinglovchilar o'z navbatlarini berishadi, gapirishni kutishadi va boshqalar gapirganda sabrli bo'lishadi."
      ],
      [
        "EAR FLUSHING OR BLUSHING","Sudden, noticeable flushing of the skin of the ear, as with other parts of the body (face, neck) may be caused by anger, embarrassment, hormonal changes, reactions to medicine, or autonomic arousal caused by fear or anxiety. The skin covering the ear turns pink, red, or purplish. The skin might also feel hot to the touch.",
        "QULOG'I  QIZARMOQ","Tananing boshqa qismlarida (yuz, bo'yin) bo'lgani kabi, quloq terisining to'satdan, sezilarli qizarishi g'azab, xijolat, gormonal o'zgarishlar, dori vositalariga reaktsiyalar yoki vegetativ qo'zg'alish natijasida yuzaga kelishi mumkin. Qo'rquv yoki tashvishga tushganda quloqni qoplagan teri pushti, qizil yoki binafsha rangga aylanadi. Teri teginish uchun ham issiq bo'lishi mumkin."
      ],
      [
        "COVERING NOSE WITH BOTH HANDS","The sudden covering of the nose and mouth with both hands is associated with shock, surprise, insecurity, fear, doubt, or apprehension. We witness this at tragic events such as car accidents and natural disasters as well as when someone receives horrible news. Evolutionary psychologists speculate that this behaviour may have been adapted so that predators, such as lions or hyenas, would not hear us breathing. It is seen universally.",
        "BURUNNI IKKI QO'L BILAN YOPMOQ","To'satdan burun va og'izni ikki qo'l bilan yopish shok, hayrat, ishonchsizlik, qo'rquv, shubha yoki qo'rquv bilan bog'liq. Biz avtohalokatlar va tabiiy ofatlar kabi fojiali voqealar, shuningdek, kimdir dahshatli xabar olganida bunga guvoh bo'lamiz. Evolyutsion psixologlarning taxminiga ko'ra, bu xatti - harakat qadimda odamzod sherlar yoki yirtqichlar nafas olishini eshitmasligi uchun shakllangan bo'lishi mumkin. U universal tarzda ko'rinadi."
      ],
      [
        "NOSE BRUSHING","This distinctive behaviour of brushing one's nose very lightly several times with the index finger is usually associated with stress or psychological discomfort, though it can also present in someone pondering something dubious or questionable.",
        "BURUNNI ISHQALAMOQ","Ko'rsatkich barmog'i bilan burunni bir necha marta engil cho'tkalashning o'ziga xos xatti - harakati odatda stress yoki psixologik noqulaylik bilan bog'liq bo'lsa - da, shubhali yoki shubhali narsa haqida o'ylayotgan odamda ham paydo bo'lishi mumkin."
      ],
      [
        "RAPID NOSE INHALING","Many people, when about to deliver bad or unpleasant news, will rapidly inhale through the nose, loudly enough to be heard, before they speak.",
        "NAFASNI ICHIGA TORTMOQ","Ko'p odamlar yomon yoki yoqimsiz xabarni etkazmoqchi bo'lganlarida, burun orqali tezda nafas olishadi, buning uchun baland ovozda nafas olishadi."
      ],
      [
        "SNIFF","breathe air into your nose noisily. Stop sniffing and blow your nose.",
        "NAFAS OLMOQ","burningizga havodan nafas oling. Hidlashni to'xtating va burningizni puflang."
      ],
      [
        "MOUTH STRETCHING","When we are afraid or realize we made a mistake, we often find ourselves involuntarily exposing the bottom row of clenched teeth as the corners of the mouth stretch substantially downward and to the side. This is often seen when we are reminded that we forgot to bring something important.",
        "OG'IZNI CHO'ZMOQ","Biz qo'rqqanimizda yoki xato qilganimizni anglaganimizda, og'iz burchaklari sezilarli darajada pastga va yon tomonga cho'zilganligi sababli, biz beixtiyor og'zimizni ochamiz. Bu ko'pincha muhim narsani olib kelishni unutganimizni eslatganda ko'rinadi."
      ],
      [
        "HOLDING THE BREATH","Polygraphers know this well: when stressed, many people have an impulse to hold their breath to try to contain their nervous breathing. Often they even have to be told to breathe. Holding one\u2019s breath is part of the freeze, flight, fight response. If you see someone restraining their breathing or holding their breath when asked a question, most likely they are experiencing fear or apprehension.",
        "NAFASNI USHLAB TURMOQ","Poligrafchilar buni yaxshi bilishadi: stress holatida ko'p odamlar asabiy nafas olishni ushlab turish uchun nafaslarini ushlab turish impulslariga ega. Ko'pincha ularga hatto nafas olishni aytish kerak. Nafasni ushlab turish muzlash, parvoz, jangga javob berishning bir qismidir. Agar biror kishi savol so'ralganda nafasini to'xtatayotganini yoki nafasini ushlab turganini ko'rsangiz, ehtimol u qo'rquvni boshdan kechirmoqda."
      ],
      [
        "CHEWING GUM","Gum chewing is an effective pacifier. Chewing vigorously might signal concern or anxiety. Some people, when stressed, will chew rapidly out of habit even if they don\u2019t have gum in their mouths.",
        "SAQICH CHAYNAMOQ","saqich chaynash samarali tinchlantiruvchi. Tez - tez chaynash tashvish yoki xavotirni ko'rsatishi mumkin. Ba'zi odamlar stressga duchor bo'lganda, og'izlarida saqich bo'lmasa ham, odat bo'lib qolgani uchun chaynashadi."
      ],
      [
        "YAWNING","Yawning is an excellent pacifier, as it relieves pent-up stress by stimulating nerves in the jaw; specifically the temporomandibular joint. It was also recently discovered that the rapid intake of air when we yawn cools the blood circulating within the palate of the mouth and, like a car radiator, the blood going to the brain. Yawning may indicate that someone is too hot or, as I often found during interviews, that an interviewee is severely stressed. Babies wrapped too warmly will also yawn with greater frequency as they sleep to help them cool down.",
        "ESNAMOQ","esnash ajoyib tinchlantiruvchi, chunki u jag'dagi nervlarni qo'zg'atish orqali bosilgan stressni engillashtiradi; Shuningdek, yaqinda ma'lum bo'ldiki, biz esnaganimizda havoning tez so'rilishi og'iz tanglayida xuddi avtomobil radiatori kabi miyaga boradigan qonni sovutadi. Esnash kimningdir haddan tashqari qizib ketganini yoki intervyu paytida ko'rganimdek, suhbatdosh qattiq stressga uchraganini ko'rsatishi mumkin. Haddan tashqari issiq o'ralgan chaqaloqlar ham uxlab qolishlari uchun tez - tez esnashadi."
      ],
      [
        "SMOKING","People who smoke do so more often when they are stressed. They may be so stressed they lose count of how many cigarettes they have lit. Excessive smoking also leads to tobacco stains on the fingers and, of course, the stench in their hands.",
        "CHEKMOQ","Chekuvchi odamlar stress holatida tez - tez chekadilar. Ular shunchalik stressga duchor bo'lishlari mumkinki, ular qancha sigaret yoqganliklarini hisoblamaydilar. Haddan tashqari ko'p chekish, shuningdek, barmoqlarda tamaki dog'lari va, albatta, qo'llaridagi hidga olib keladi."
      ],
      [
        "SPEAK","make use of words in a normal voice. May I speak to George?",
        "GAPIRMOQ","oddiy ovozda so'zlardan foydalanish. Jorj bilan gaplashsam bo'ladimi?"
      ],
      [
        "TALK","speak to give information, say things. What are they talking about?",
        "GAPIRIB BERMOQ","ma'lumot berish uchun gapirish, narsalarni aytish. Ular nima haqida gaplashmoqda?"
      ],
      [
        "HESITATE","be slow to speak (or act) because one is uncertain or unwilling to talk. He hesitated before answering my question.",
        "IKKILANMOQ","gapirishga (yoki harakat qilishga) sekin bo'l, chunki odam noaniq yoki gapirishni istamaydi. U mening savolimga javob berishdan oldin ikkilanib qoldi."
      ],
      [
        "WHISPER","to speak softly, without vibrating the vocal cords, privately or secretly. She whispered the secret word in my ear.",
        "PICHIRLAMOQ","ovoz paychalarini tebranmasdan, ohista yoki yashirincha gapirish. U qulog'imga sirli so'zni pichirladi."
      ],
      [
        "HISS","to say something in a loud whisper. (Snakes also hiss). 'Get out!' she hissed at me furiously.",
        "VISHILLAB GAPIRMOQ","baland ovozda pichirlab bir narsa aytish. (Ilonlar ham vishillaydi). 'Yo'qol!' u menga jahl bilan vishilladi."
      ],
      [
        "MUMBLE","speak unclearly, so that others can't hear. He mumbled something at me that I didn't understand.",
        "G'O'LDIRAMOQ","boshqalar eshitmasligi uchun tushunarsiz gapirish. U menga nimadir deb g'o'ldiradi, men tushunmadim."
      ],
      [
        "MUTTER","to speak in a low voice, which is hard to hear. She was muttering something to herself as she went out.",
        "G'O'LDIRAB GAPIRMOQ","eshitish qiyin bo'lgan past ovozda gapirish. Tashqariga chiqayotib, o'zicha nimadir deb ming'irladi."
      ],
      [
        "MURMUR","to speak in a soft, quiet voice that is difficult to hear clearly. The classmates murmured during the test.",
        "SHIVIRLAMOQ","aniq eshitish qiyin bo'lgan yumshoq, sokin ovozda gapirish. Sinfdoshlar imtihon paytida shivirlashishdi."
      ],
      [
        "HUM","to make a low continuous sound, when you take a long time deciding what to say. She hummed at the beginning of the oral exam.",
        "MING'IRLAMOQ","nima deyishni hal qilish uchun uzoq vaqt o'ylab qolib, past davomli ovoz chiqarish. U og'zaki imtihon boshida g'o'ldiradi."
      ],
      [
        "GRUNT","make short sounds or say a few words in a rough voice, when you don't want to talk. (Pigs also grunt). She grunted a few words and left the table.",
        "XIRILLAMOQ","qisqa tovushlarni chiqarib yoki gapirishni xohlamasanganda, qo'pol ovoz bilan bir necha so'z aytish. (To'ng'izlar ham xirillashadi). U bir - ikki og'iz so'zni xirillab, stoldan chiqib ketdi."
      ],
      [
        "STAMMER","to speak with pauses and repeating the same sound or syllable, habitually or from fear or excitement. 'P - p - please give me the p - p - pen,' he stammered.",
        "DUDUQLANMOQ","pauza bilan gapirish va bir xil tovush yoki bo'g'inni odatiy yoki qo'rquv yoki hayajondan takrorlash. \"I - i - iltimos, menga q - q - qalamni bering\", dedi u."
      ],
      [
        "QUAVER","speak tremulously, because you are nervous or upset. Her voice quavered for a moment but then she regained control.",
        "TITRAB GAPIRMOQ","titrab  gapirish asabiylashganda yoki xafa bo'lganda . Uning ovozi bir zum titrab ketdi, lekin keyin yana o'zini qo'lga oldi."
      ],
      [
        "BABBLE","gabble: talk foolishly, in a way difficult to understand. Her fever made her babble without stopping.",
        "G'O'NG'IRLAMOQ","ahmoqona, tushunish qiyin bo'lgan tarzda gapirish. Uning isitmasi borligi uchun to'xtovsiz g'o'ng'illadi."
      ],
      [
        "RAMBLE","talk continuously, in a confused way. Stop rambling and get to the point, please!",
        "DOVDIRAMOQ","tinmay, sarosimada gapirmoq. Dovdiramasdan mavzuga o'ting, iltimos!"
      ],
      [
        "SLUR","to speak unclearly, without separating the words correctly. He was so drunk that he slurred to the bartender for more.",
        "G'O'LDIRAMOQ","so'zlarni to'g'ri ajratmasdan, tushunarsiz gapirish. U shunchalik mast ediki, bufetchiga g'o'ldirab ketdi."
      ],
      [
        "CHAT","to have a friendly informal conversation. They chatted away in the corner.",
        "SUHBAT","do'stona norasmiy suhbat o'tkazing. Ular burchakda suhbatlashishdi."
      ],
      [
        "GOSSIP","talk about the affairs of other people. She was gossiping about her neighbours all day.",
        "G'IYBAT","boshqa odamlarningishlari haqida gapirish. U kun bo'yi qo'shnilarini g'iybat qilib yurardi."
      ],
      [
        "CALL","speak in a loud clear voice, shout and cry. They called for help.",
        "CHAQIRMOQ","baland ovozda gapirish, baqirish. Ular yordamga chaqirishdi."
      ],
      [
        "CHATTER","talk quickly and at length about something unimportant. Please stop chattering, I'm trying to listen to the TV!",
        "SUHBATLASHMOQ","ahamiyatsiz narsa haqida tez va uzoq gapirish. Iltimos, gaplashishni bas qiling, men televizor tinglamoqchiman!"
      ],
      [
        "SHOUT","speak in a loud voice, in anger or to get attention. He had to shout because the music was too loud.",
        "BAQIRMOQ","baland ovozda, g'azabda yoki e'tiborni jalb qilish uchun gapirish. U baqirishi kerak edi, chunki musiqa juda baland edi."
      ],
      [
        "WHOOP","shout loudly and happily. The children whooped when we entered the fair.",
        "QICHQIRMOQ","baland ovozda va xursandchilik bilan baqirish. Yarmarkaga kirganimizda bolalar qichqirdi."
      ],
      [
        "CRY (OUT)","make a sharp noise, in pain or surprise. She cried out in terror when the old man appeared suddenly.",
        "YIG'LAB YUBORMOQ","og'riq yoki ajablanib, o'tkir shovqin tovushi. To'satdan chol paydo bo'lganida u qo'rquvdan qichqirdi."
      ],
      [
        "YELL","cry out loudly, in fear, pain or excitement. She yelled in terror when she saw the dead cat.",
        "QICHQIRMOQ","qo'rquv, og'riq yoki hayajonda baland ovozda yig'lash. U o'lik mushukni ko'rib, dahshatdan qichqirdi."
      ],
      [
        "SCREAM","cry out very loudly on a high note, in fear, pain, anger or laughter. The baby was screaming the whole day.",
        "CHINQIRMOQ","qo'rquv, og'riq, g'azab yoki kulgida baland ovozda baqirish. Bola kun bo'yi chinqirdi."
      ],
      [
        "SHRIEK","scream. The men shrieked with laughter.",
        "BAQIRIB KULMOQ","qichqiriq. Erkaklar kulib chinqirib yuborishdi."
      ],
      [
        "SQUEAK","speak in a high-pitched voice. She squeaked out a few words nervously.",
        "CHIYILLAMOQ(1)","baland ovozda gapirmoq. U asabiylashib bir - ikki so'z aytdi."
      ],
      [
        "SQUEAL","speak in a high-pitched voice, with longer and louder sounds than in a squeak. 'Let me go!' she squealed.",
        "CHIYILLAMOQ(2)","baland ovozda, chiyillashdan ko'ra uzunroq va balandroq tovushlar bilan gapirish. 'Ketishimga ruxsat bering!' - qichqirdi u."
      ],
      [
        "WHINE","complain in a sad, annoying voice about something. 'I don't want to go,' whined Peter.",
        "SHIKOYAT QILMOQ","biror narsa haqida qayg'uli, bezovta qiluvchi ovozda shikoyat qilish. - Ketmoqchi emasman, - pichirladi Piter."
      ],
      [
        "CHIRP/ CHIRUP","(UK): speak in a happy high voice. 'All finished!' she chirped.",
        "HAYQIRMOQ","(BB): quvnoq baland ovozda gapirish. - Hammasi tugadi! - deb hayqirdi u."
      ],
      [
        "CHEER","shout because of happiness. The public cheered when the team appeared.",
        "OLQISHLAMOQ","baxt tufayli baqirmoq. Omma jamoa paydo bo'lganida olqishladi."
      ],
      [
        "CROAK","speak with a deep hoarse voice. She had such a terrible cold that she could only croak.",
        "XIRILLAMOQ","chuqur hirqiroq ovoz bilan gapirish. U shunday dahshatli shamollaganki, u faqat xirillashi mumkin edi."
      ],
      [
        "BLURT OUT","say something suddenly and tactlessly. She blurted out the bad news before I could stop her.",
        "AYTIB QO'YMOQ","to'satdan va xushmuomalalik bilan biror gapni aytish. Men uni to'xtatmagunimcha, u yomon xabarni aytib qo\u2019ydi."
      ],
      [
        "SNAP","say something quickly in an angry way. 'What do you want?' the waiter snapped.",
        "JAHL BILAN GAPIRMOQ","jahl bilan tezda biror gapni aytish. 'Nima xohlaysiz?' - ,deb jahl qildi ofitsiant."
      ],
      [
        "SPLUTTER","talk quickly in short confused phrases, in anger or surprise. 'But... what... where... how could you?' she spluttered.",
        "HAYRATDA TEZ GAPIRIB YUBORMOQ","qisqa chalkash iboralar bilan, jahl yoki hayratda tez gapirish. - Lekin... nima... qayerda... qanday qilib? - dedi u."
      ],
      [
        "BARK OUT","say something quickly in a loud voice. 'What do you want?' the shop assistant barked",
        "BAQIRMOQ","baland ovozda tez nimadir aytish. 'Nima xohlaysiz?' - baqirdi do'kon sotuvchisi."
      ],
      [
        "OVEREATING","Under stress some people will overeat, sometimes going far beyond their normal food intake. I have seen people during a football game consume vast amounts of food, to the point of getting sick, their anxiety over the status of their favorite team transferred to their appetite.",
        "KO'P OVQATLANMOQ","Stress ostida ba'zi odamlar haddan tashqari ko'p ovqatlanishadi, ba'zan esa odatdagi oziq - ovqat iste'mol qilishdan ancha yuqori bo'ladi. Men futbol o'yini paytida odamlarning ko'p miqdorda oziq - ovqat iste'mol qilishlarini, kasal bo'lib qolishlarini, sevimli jamoalari maqomidan tashvishlanish ishtahalariga o'tishlarini ko'rganman."
      ],
      [
        "TONGUE INSULTS","In almost all cultures the sticking out of the tongue is used as an insult, a display of disgust or dislike. Children use this technique from a very young age when they want to insult one another.",
        "TILNI CHIQARMOQ","Deyarli barcha madaniyatlarda tilning chiqib ketishi haqorat, jirkanish yoki yoqtirmaslik belgisi sifatida ishlatiladi. Bolalar bu usulni juda yoshligidanoq bir - birlarini haqorat qilmoqchi bo'lganlarida qo'llashadi."
      ],
      [
        "TONGUE PROTRUDING","Oftentimes, while performing a complex task, people will stick out their tongue, usually to one side or the other, or drape it over their lower lip. I had an accountant who did this as he entered numbers into a calculator, and I see it all the time at the university when students are taking tests. This tongue placement serves dual purposes: it pacifies us while simultaneously communicating to others that we are busy and should not be disturbed.",
        "TILNI TISHLAMOQ","Ko'pincha, murakkab vazifani bajarayotganda, odamlar tillarini, odatda, u yoki bu tomonga yopishadi yoki pastki labiga bosishadi. Men buni universitetda har doim talabalar test topshirayotganda ko'raman. Tilning bu joylashuvi ikki tomonlama maqsadga xizmat qiladi: u bizni tinchlantiradi va bir vaqtning o'zida boshqalarga band ekanligimiz va bezovtalanmasligimiz kerakligini aytadi."
      ],
      [
        "FLICKING NAILS ON TEETH","The flicking of the thumbnail on the teeth releases stress. People who do this repeatedly are trying to soothe themselves because they are anxious about something. Keep in mind, however, that as with all repetitive behaviours, if people do it all the time, then you ignore that behaviour.",
        "TISHLARGA BOSH BARMOQNI TEKKIZIB TURMOQ","Tishlarga bosh barmoqni tez - tez tekkizib qo'yish stressni chiqaradi. Buni qayta - qayta qiladigan odamlar nimadandir xavotirlanib, o'zlarini tinchlantirishga harakat qilishadi. Shuni yodda tutingki, barcha takrorlanadigan xatti - harakatlarda bo'lgani kabi, agar odamlar buni doimo qilsalar, siz bu xatti - harakatni e'tiborsiz qoldirsangiz bo'ladi."
      ],
      [
        "VOICE TONE","The tone of our voice can make people comfortable or feel like we are challenging them. We can use the tone of our voice to alter or enhance how we are perceived. You can come off as nice, sweet, kind, loving, and knowledgeable, depending on your tone of voice or as suspicious, indignant, or arrogant. The tone of voice matters greatly. Ironically, if you want to get people\u2019s attention, lowering your tone of voice will work best. A lower voice is also soothing, as any parent who has put a child to bed will attest.",
        "OVOZ OHANGI","Ovozimizning ohangi odamlarga qulaylik yaratishi yoki biz ularga qiyinchilik tug'dirayotgandek his etishi mumkin. Ovozimizning ohangidan bizni qanday qabul qilinishimizni o'zgartirish yoki yaxshilash uchun foydalanishimiz mumkin. Ovoz ohangingizga qarab siz yoqimli, shirin, mehribon va bilimdon yoki shubhali, g'azablangan yoki takabbur bo'lib ko'rinishingiz mumkin. Ovoz ohangi katta ahamiyatga ega. Ajablanarlisi shundaki, agar siz odamlarning e'tiborini jalb qilmoqchi bo'lsangiz, ovoz ohangini pasaytirish yaxshi natija beradi. Pastroq ovoz ham tinchlantiradi, chunki yosh bolani yotqizgan paytingizda ham u tez uxlab qolishini ota - onalar tasdiqlaydi."
      ],
      [
        "VOICE PITCH","When we are nervous our voices tend to rise in pitch. Listen for voices that rise or crack when a person is stressed, nervous, or insecure. This is caused by vocal-cord tension.",
        "OVOZ OHANGINIG KO'TARILIB KETISHI","Biz asabiylashganimizda, ovozimiz balandroq bo'ladi. Biror kishi stressda, asabiylashganda yoki ishonchsiz bo'lganda ko'tariladigan ovoz bunga misoldir."
      ],
      [
        "STUTTERING/STAMMERING","Some individuals pathologically stutter (repeating syllables as they try to speak). For some it can be quite debilitating, as in the case of England\u2019s King George VI, famously depicted by Colin Firth in the 2010 movie The King's Speech. For many of us who do not stutter pathologically, a high degree of stress or anxiety can cause us to temporarily stutter or stammer.",
        "DUDUQLANMOQ","Ba'zi odamlar patologik ravishda duduqlanadilar (gapirishga urinayotganda bo'g'inlarni takrorlaydilar). Ba'zilar uchun bu juda zaif bo'lishi mumkin, masalan, 2010 yilda \"Qirolning nutqi\" filmida Kolin Fert tomonidan tasvirlangan Angliya qiroli Jorj VI misolida. Patologik ravishda duduqlanmaydigan ba\u2019zilar esa yuqori darajadagi stress yoki tashvish natijasida vaqtincha duduqlanishga olib kelishi mumkin."
      ],
      [
        "DELAY IN ANSWERING","Many people erroneously believe that a delay in answering a question signals that a person is lying or is buying time in an attempt to muster a credible answer. Unfortunately, both the honest and the dishonest may delay an answer but for different reasons. The guilty may in fact have to think about what to say while the innocent may be thinking about how best to say it.",
        "JAVOB BERISHDA KECHIKMOQ","Ko'pchilik noto'g'ri fikrga borib, savolga javob berishning kechikishi odamning yolg'on gapirayotgani yoki ishonchli javob berish uchun vaqtdan yutayotganidan dalolat beradi deb o'ylaydi. Afsuski, to'g'risini so'zlovchi ham, yolg'onchi ham turli sabablarga ko'ra javobni kechiktirishi mumkin. Aybdorlar nima deyish haqida o'ylashlari mumkin, begunohlar esa buni qanday qilib yaxshiroq tushuntirish haqida o'ylashlari mumkin."
      ],
      [
        "SILENCE","A prolonged silence, or even just a \u201cpregnant pause,\u201d may speak volumes. Sometimes, when we cannot remember information or we are contemplating something, silence is unintentional. But other times it is very much intended, as when a negotiator may go temporarily silent to get the other party to fill in the void. Silence can be used to communicate that the person is pondering, recollecting, considering, processing, or is nonplussed. Great actors use it effectively, as do interviewers.",
        "SUKUNAT","Uzoq sukunat yoki hatto \"davomli pauza\" ham ko'p narsalarni aytib berishi mumkin. Ba'zida biz ma'lumotni eslay olmasak yoki biror narsani o'ylayotganimizda, sukunat beixtiyor bo'ladi. Ba\u2019zi hollarda muzokarachi boshqa tomonni bo'shliqni to'ldirish uchun vaqtincha jim turishi mumkin. Sukunat odamning eslayotgani, o'ylayotgani, qayta ishlanayotgani yoki ortiqcha emasligini bildirish uchun ishlatilishi mumkin. Buyuk aktyorlar, suhbatdoshlar kabi undan unumli foydalanadilar."
      ],
      [
        "CATHARTIC UTTERANCES","In this form of a cathartic exhale, we come close to saying a word but never get there. \u201cOhhhh\u201d or \u201cwoooo\u201d or \u201cfuuuuh\u201d is uttered but never completed. These are considered nonverbals because the actual words are not spoken, though we can often intuit their meaning. Often these utterances don\u2019t make sense, especially to foreigners.",
        "KATARTIK SO'ZLAR","Katartik nafas chiqarishning bu shaklida biz bir so'z aytmaymiz va hech qachon so'zning ma\u2019nosiga to'liq etib bormaymiz. \"Ohhhh\" yoki \"woooo\" yoki \"fuuuuh\" aytiladi, lekin ma\u2019nosi tugallanmagan. Ular og'zaki bo'lmagan so'zlar deb hisoblanadi, chunki haqiqiy so'zlar aytilmaydi, lekin biz ko'pincha ularning ma'nosini sezishimiz mumkin. Ko'pincha bu so'zlar, ayniqsa, chet elliklar uchun mantiqiy emas."
      ],
      [
        "SPEED OF TALKING","How fast we speak is a key nonverbal indicator. In some parts of America, people speak very slowly and deliberately, while in others speech is fast and clipped. These styles communicate something about the personality of the speakers - where they are from, where they went to school, and more. Changes in a person\u2019s normal speed of talking may indicate stress or reluctance to answer a sensitive question.",
        "GAPIRISH TEZLIGI","Bizning qanchalik tez gapirishimiz og'zaki nutqimizga bog'liq bo'lmagan ko'rsatkichdir. Amerikaning ba'zi qismlarida odamlar juda sekin, ataylab gapirishadi, boshqalarida esa nutq tez va qisqartirib gapiriladi. Ushbu uslublar ma'ruzachilarning shaxsiyati haqida ma'lumot beradi - ular qayerdan ekanligi, ma\u2019lumoti qay darajada ekanligi va boshqalar. Odamning normal gapirish tezligidagi o'zgarishlar stressni yoki nozik savolga javob berishni istamasligini ko'rsatishi mumkin."
      ],
      [
        "INCESSANT TALKING","We have all met people who seem to never stop talking. They might simply be nervous, or they might be inconsiderate of others and focus only on themselves. Context is key. In the aftermath of an accident, a person might ramble, talking nonstop. This is caused by shock.",
        "DOIMIY, TO'XTOVSIZ GAPIRMOQ","Biz gaplashishdan to'xtamaydigan odamlarni uchratganmiz. Ular shunchaki asabiy bo'lishi mumkin yoki ular boshqalarga e'tibor bermasliklari va faqat o'zlariga e'tibor berishlari mumkin. Baxtsiz hodisadan so'ng, odam tinimsiz gaplashib, dovdirab qolishi mumkin. Bu zarba tufayli yuzaga keladi."
      ],
      [
        "SPEED OF RESPONSE","Some people will take their time answering a question, starting, then stopping, then continuing. Others will respond before you finish asking the question. How fast they answer says something about how they are thinking and processing information. Keep in mind that speed of response depends upon cultural context as well as mental agility.",
        "JAVOB BERISH TEZLIGI","Ba'zi odamlar savolga javob berishga vaqt ajratadilar,avval boshlashadi, keyin to'xtashadi va keyin yana davom etadilar. Siz savolni tugatmasdan oldin boshqalar javob berishadi. Ularning qanchalik tez javob berishlari, ular qanday fikrlashlari va ma'lumotni qayta ishlashlari haqida aytadi. Yodda tutingki, javob tezligi madaniy kontekstga va aqliy chaqqonlikka bog'liq."
      ],
      [
        "FILLER SOUNDS","Sounds such as \"aah - hum,\" \"hum,\" coughing or throat clearing, and hesitations in speaking may indicate people are momentarily at a loss for words and feeling they have to fill the void with at least a sound. Americans are notorious for using filler sounds as they figure out what to say, struggle to find the right words, or bide their time while they recall an experience. Because these are not actual words, they are considered a paralanguage or a nonverbal.",
        "TO'LDIRISH TOVUSHLARI","\"aah - hum,\" \"hum,\" kabi tovushlar, yo'talish yoki tomoq qirib tashlash, bu gapirishdagi ikkilanishlar odamlarning bir lahza so'zni yo'qotayotganliklarini va bo'shliqni hech bo'lmaganda so'zlar bilan to'ldirishlari kerakligini ko'rsatishi mumkin bo'lgan tovushlardir. Amerikaliklar to'ldiruvchi tovushlardan foydalanish bilan mashhur, chunki ular nima deyishni avval o'ylashadi, to'g'ri so'zlarni topish uchun, yoki tajribalarini eslash uchun nutqlarida tomoq qirib qo'yib dqvom etadilar. Ular haqiqiy so'zlar emasligi sababli, ular paralanguage yoki noverbal deb hisoblanadi."
      ],
      [
        "WHISTLING NERVOUSLY","Whistling is a form of cathartic exhaling and it helps us relieve stress. It\u2019s a good pacifier and that\u2019s why people tend to do it when travelling by themselves through a dark or desolate area or when they feel uncomfortably alone. In movies and cartoons, people or characters are often portrayed whistling while walking through a cemetery to ward off their apprehension.",
        "ASABIY HUSHTAK CHALMOQ","hushtak chalish nafas chiqarishning bir turi va u stressdan xalos bo'lishga yordam beradi. Bu yaxshi tinchlantiruvchi va shuning uchun odamlar qorong'i yoki kimsasiz hudud bo'ylab yolg'iz sayohat qilganlarida yoki o'zlarini noqulay his qilganlarida hushtak chalishadi. Filmlar va multfilmlarda odamlar yoki qahramonlar qo'rquvni yengish uchun qabristondan o'tayotganlarida hushtak chalayotgani tasvirlangan."
      ],
      [
        "LAUGHTER","Laughter is a universal display of amusement, happiness, and joy. We know that when we laugh we experience less stress and even less pain;. There are, of course, many different sorts of laughter: unrestrained cackles when we hear a genuinely hilarious joke; the joyous laughter of children; the obsequious laughter of those who seek to flatter a leader.",
        "KULMOQ","o'yin - kulgi, baxt va quvonchning umumiy ko'rinishi. Bilamizki, biz kulganimizda kamroq stress va hatto og'riqlarimizning kamayishini kuzatamiz. Albatta, kulgining har xil turlari mavjud: biz chinakam quvnoq hazilni eshitganimizda o'zini tutib bo'lmaydigan qiyqirib kulish; bolalarning quvnoq kulgisi; rahbarga xushomad qilmoqchi bo'lganlarning bema'ni kulgisi kabilar."
      ],
      [
        "TUCK IN","(informal) eat eagerly, with enjoyment. When the guests arrived, Peter was already at the table tucking in.",
        "ISHTAHA BILAN YEMOQ","zavq bilan ovqatlanish. Mehmonlar kelganda, Butrus allaqachon stolda o'tirib ishtahasi ochilgan edi.edi."
      ],
      [
        "LICK","eat something by rubbing it with the tongue. The boy was sitting in the garden licking an icecream.",
        "YALAMOQ","biror narsani til bilan ishqalab yemoq. Bola bog'da muzqaymoq yalab o'tirardi."
      ],
      [
        "TO HAVE A SNACK","eat a small meal between the main meals. She usually has a snack for lunch and then a larger meal for dinner.",
        "YENGIL TAMADDI QILMOQ","asosiy ovqatlar orasida ozgina ovqatlanish. Odatda tushlik uchun gazak, keyin esa kechki ovqat uchun kattaroq taom yeyiladi."
      ],
      [
        "STUFF/GORGE ONESELF","(informal) eat so much that one can't eat anything else. He didn't want any meal because he had stuffed himself with bread and butter.",
        "BO'KIB QOLMOQ","(norasmiy) shunchalik ko'p ovqatlaningki, boshqa hech narsa yeb bo'lmaydi. U non - yog' to'ldirib qo'ygani uchun ovqat istamasdi."
      ],
      [
        "PIG OUT","(informal) eat more than is necessary or healthy. When she's depressed she always pigs out on chocolates.",
        "NOSOG'LOM OVQATLANMOQ","kerak bo'lmagan holda ovqatlanish. U tushkunlikka tushganda doimo shokolad yeydi."
      ],
      [
        "MAKE A PIG OF ONESELF","(informal) eat too much. She made a pig of herself; she had the whole pizza for herself!",
        "BO'KIB YEMOQ","(norasmiy) juda ko'p ovqatlaning. U, o'zi uchun butun bir pitsani bo'kib yedi!"
      ],
      [
        "GUZZLE","(informal) eat or drink a lot, with greed. You guzzled my dessert! What a pig!",
        "OCHOFATLIK BILAN YEMOQ","ochko'zlik bilan ko'p yeyish yoki ichish. Siz mening shirinligimni yeb qo'ydingiz! Qanday ochofatlik!"
      ],
      [
        "BOLT","eat quickly, because one is in a hurry. He bolted down the burger in just a minute!",
        "YEB QO'YMOQ","kimdir shoshirganda tez ovqatlanish. U bir daqiqada burgerni yeb tugatdi!"
      ],
      [
        "WOLF DOWN","(informal) eat quickly because you are hungry or in a hurry. He wolfed down his lunch but was still hungry.",
        "BO'RIDAY OCH QOLMOQ","tez ovqatlanish, chunki  judayam och yoki shoshilish holatida . U tushlik qildi, lekin hali ham och edi."
      ],
      [
        "GOBBLE (UP)","eat quickly. You shouldn't gobble your food.",
        "CHAPATILAB YEMOQ","tez ovqatlanish. Siz ovqatnishapatillatib  yemasligingiz kerak."
      ],
      [
        "SCOFF","(informal) eat quickly. William scoffed all the cake before we could get any.",
        "TEZ OVQATLANMOQ","Uilyam biz hech narsa yemasimizdan  oldin hamma tortni yeb  qo'ydi."
      ],
      [
        "POLISH OFF","finish a meal quickly or easily. I was so hungry I polished off all the food.",
        "OVQATNI TUGATIB QO'YMOQ","ovqatni tez yoki oson tugatish. Men shunchalik och edimki, barcha ovqatlarni yeb tugatib qo'ydim."
      ],
      [
        "NIBBLE","eat small amounts of food, by taking small bites. You have to nibble sweet corn.",
        "OZ OZDAB TISHLAB YEMOQ","ozgina tishlash orqali oz miqdorda ovqat iste'mol qilish. Siz oz - ozdan shirin makkajo'xori tishlab yeyishingiz kerak."
      ],
      [
        "PECK","eat sparingly, without enthusiasm, because you are not interested or not hungry. Sally didn't like the fish. She only pecked at it.",
        "CHO'QILLAB YEMOQ","ozroq, ishtiyoqsizovqatlanish, sababi kishi bu ovqatga qiziqmaganda yokiochbo'lmaganda. Sally baliqni yoqtirmasdi. U faqat oz - ozdan cho'qillab yedi."
      ],
      [
        "CHEW","masticate, bite food several times before swallowing it. The meat was so tough that it took a lot of chewing.",
        "CHAYNAMOQ","ovqatni yutishdan oldin bir necha marta tishlash. Go'sht shunchalik qattiq ediki, uni ko'p chaynash kerak edi."
      ],
      [
        "GNAW","keep biting something hard. I watched my dog gnawing at the large bone.",
        "KEMIRMOQ","qattiq narsani tishlashda davom etish. Men itimning katta suyakni kemirayotganini kuzatdim."
      ],
      [
        "CHOMP","eat, chew forcefully. Francis chomped away at the meat.",
        "QATTIQ CHAYNAMOQ","ovqatni kuch bilan chaynash. Frensis go'shtni maydalab chaynadi."
      ],
      [
        "MUNCH","chew, eat noisily. We all munched at the cookies as we watched the movie.",
        "G'ARCHILLATIB YEMOQ","chaynash, shovqin bilan ovqatlaniSH. Filmni tomosha qilar ekanmiz, hammamiz pishiriqlarni garchillatib  yeb qo'ydik."
      ],
      [
        "CONSUME","eat or drink. Are you going to consume all the beef?",
        "ISTE'MOL QILMOQ","yeyish yoki ichish. Hamma mol go'shtini iste'mol qilmoqchimisiz?"
      ],
      [
        "GULP (DOWN)","swallow quickly. Francis gulped down his beer quicker than anybody else.",
        "YUTMOQ","tez yutish. Frensis pivosini hammadan tezroq yutib yubordi."
      ],
      [
        "QUAFF","drink a lot of something quickly, knock back. Guests quaffed champagne while waiting for the bride to arrive.",
        "ICHIB QO'YMOQ","tezda ko'p narsani ichish. Mehmonlar kelinning kelishini kutayotganda shampan vinosi ichishdi."
      ],
      [
        "KNOCK BACK","drink quickly. Francis knocked back his beer in a flash!",
        " TEZ ICHMOQ","Frensis bir lahzada pivosini ichib qo'ydi!"
      ],
      [
        "SWIG (BACK)","drink quickly, gulp. The thirsty man swigged back the water.",
        "YUTOQIB ICHMOQ","tez ichish, yutish. Chanqagan odam suvni yutoqib ichdi."
      ],
      [
        "SUCK (UP)","drink something with a straw. Sally sucked up all the juice from the carton.",
        "SIPQORIB ICHMOQ","somoncha bilan biror narsa ichish. Sally karton qutidagi barcha sharbatni so'rib ichdi."
      ],
      [
        "SIP","drink something slowly. She was sitting at the table sipping her wine with pleasure.",
        "HO'PLAB ICHMOQ","sekin bir narsa ichish. U stolda o'tirib, zavq bilan sharobini ho'plardi."
      ],
      [
        "WHOOP","shout loudly and happily. The players ran around the field, whooping happily.",
        "BAQIRIB CHAQIRMOQ","baland ovozda va xursandchilik bilan qichqiring. O'yinchilar maydon bo'ylab yugurishdi va baqirib chaqirishdi."
      ],
      [
        "GASP","breathe in suddenly in a way that can be heard. The audience gasped in surprise.",
        "HANSIRAMOQ","to'satdan eshitiladigan tarzda nafas oling. Tomoshabinlar hayratdan nafas olishdi."
      ],
      [
        "LIP FULLNESS","Our lips change size and dimensions according to our emotional state. They get small when we\u2019re stressed, larger when we\u2019re comfortable. Full, pliable lips indicate relaxation and contentment. When we\u2019re under stress, blood flows out of the lips to other parts of the body where it is needed. Lip fullness can serve as a barometer of a person\u2019s emotional state.",
        "LABLAR SHAKLINING O'ZGARISHI","Bizning lablarimiz hissiy holatimizga qarab o'lchamlarni o'zgartiradi. Biz stressda bo'lganimizda ular kichrayadi, biz qulay bo'lganimizda kattalashadi. To'liq, egiluvchan lablar dam olganlik va qoniqishni bildiradi. Biz stress ostida bo'lganimizda, qon lablardan tananing boshqa qismlariga kerakli joyga oqib boradi va lablarimiz oqarib ketgandek bo'ladi. Dudoqlar to'liqligi insonning hissiy holatining barometri bo'lib xizmat qilishi mumkin."
      ],
      [
        "FINGERTIPS TO LIPS","Covering one's lips with one's fingers can indicate insecurity or doubt and should be considered in context. Watch for this behaviour, especially as people hear a question they need to process. This behaviour is also seen when people carefully ponder an issue.",
        "BARMOQLARNI LABGA QO'YMOQ","Biror kishining lablarini barmoqlari bilan yopishi ishonchsizlik yoki shubhani ko'rsatishi mumkin va kontekstda ko'rib chiqilishi kerak. Bu xatti - harakat, odamlar bir masalani diqqat bilan o'ylashganda ham ko'rinadi."
      ],
      [
        "LIP PLUCKING","Pulling or plucking of the lips is usually associated with fear, doubt, concern, lack of confidence, or other difficulties. Ignore people who do this continually to pass the time - for them, it is a pacifier. For those who rarely do it, it\u2019s a good indicator that something is wrong.",
        "LABLARNI YULMOQ","lablarni tortib olish yoki yulish odatda qo'rquv, shubha, tashvish, ishonchsizlik yoki boshqa qiyinchiliklar bilan bog'liq. Vaqt o'tkazish uchun doimiy ravishda buni qiladigan odamlarga e'tibor bermang - ular uchun bu tinchlantiruvchidir. Buni kamdan - kam qiladiganlar uchun bu nimadir noto'g'ri ekanligini ko'rsatadigan harakatdir."
      ],
      [
        "LIP BITING","Lip biting is a pacifier, usually seen when people are under stress or have concerns. We bite our lips because, after a certain age, biting our lips stimulates the same nerves in the mouth. We might also bite our lips when we want to say something but can\u2019t or shouldn\u2019t. Note also that some people, when angry, will bite their lips as a means of self-restraint.",
        "LABLARNI TISHLAMOQ","Lab tishlash tinchlantiruvchi harakat bo'lib, odatda odamlar stress yoki xavotirda bo'lganda kuzatiladi. Biz lablarimizni tishlaymiz, chunki lablarimizni tishlash og'izdagi bir xil nervlarni qo'zg'atadi. Biror narsani aytmoqchi bo'lganimizda, lekin aytolmaymiz yoki qilmasligimiz kerak bo'lsa, lablarimizni tishlashimiz mumkin. Shuni ham yodda tutingki, ba'zi odamlar g'azablanganda, o'zini tutish vositasi sifatida lablarini tishlaydi."
      ],
      [
        "LIP LICKING","Rubbing the tongue on the lips helps to pacify us in the same way that lip biting does. This behaviour is usually associated with concerns, anxiety, or negative emotions; however, it could just be that the person has dry lips, so be careful when concluding.",
        "LAB YALAMOQ","Tilni lablarga ishqalash, xuddi lab tishlash kabi bizni tinchlantirishga yordam beradi. Bunday xatti - harakatlar odatda tashvishlar, yoki salbiy his - tuyg'ular bilan bog'liq; Biroq, bunda odamning lablari quruq bo'lishi mumkin, shuning uchun xulosa chiqarishda ehtiyot bo'lish kerak."
      ],
      [
        "UPSIDE - DOWN LIPS","When the lips are compressed and the corners of the mouth turn downward, things are really bad emotionally. This is a strong indicator of high stress or discomfort.",
        "LABLARNI PASTGA TUSHIRMOQ","lablar siqilib, og'iz burchaklari pastga burilsa, hissiy jihatdan haqiqatan ahvol yomonlashganini bildiradi. Bu yuqori stress yoki noqulaylikning belgisidir."
      ],
      [
        "LIP PURSING","We purse our lips (pinching them tightly toward the front of the mouth) when we disagree with something or when we are thinking of an alternative. When audiences take issue with what a speaker is saying or know it is wrong, they often see this behaviour. The more outward the movement of the pursed lips, the stronger the negative emotion or sentiment.",
        "LABINI BURMOQ","Biror narsaga rozi bo'lmaganimizda yoki muqobil variant haqida o'ylaganimizda, lablarimizni qisib qo'yamiz (ularni og'izning old tomoniga burib qo'yamiz). Agar tinglovchilar ma'ruzachi gapirayotganiga e'tiroz bildirsa yoki uning noto'g'ri ekanligini bilsa, ko'pincha bunday xatti - harakatni ko'rish mumkin. Burilgan lablar qanchalik tashqi tomonga harakatlansa, salbiy his - tuyg'ular yoki hissiyotlar shunchalik kuchli bo'ladi."
      ],
      [
        "SAD MOUTH","The mouth, like the eyes, can be a window into our emotional state. Sadness is usually shown with the corners of the lips turned down slightly, usually in concert with lowered upper eyelids. It should be noted that some people naturally look this way - the corners of their mouths perpetually turned down - and for them, it has nothing to do with negative emotions.",
        "OG'IZNING MAYUS HOLATI","Og'iz ham ko'zlar kabi bizning hissiy holatimizga oyna bo'lishi mumkin. G'amginlik odatda lablar burchaklari bir oz pastga egilgan holda, odatda yuqori ko'z qovoqlari tushirilgan holda namoyon bo'ladi. Shuni ta'kidlash kerakki, ba'zi odamlar tabiiy ravishda shunday ko'rinadi - og'zining burchaklari doimiy ravishda pastga tushib turadi - va ular uchun buning salbiy his - tuyg'ular bilan hech qanday aloqasi yo'q."
      ],
      [
        "THE O","When we are surprised or in agony, our lips will often instinctively make an oval shape, similar to an O. The reason we do this is not exactly known, but it seems to be a universal behaviour across cultures and possibly a vestigial response we share with alarmed primates. The best-known image of this is Edvard Munch\u2019s painting The Scream.",
        "\"O\" TOVUSHI","Biz hayron bo'lganimizda yoki qiynalganimizda, lablarimiz ko'pincha instinktiv ravishda O'ga o'xshash oval shaklga ega bo'ladi. Buni qilishimizning sababi aniq noma\u2019lum, ammo bu madaniyatlar orasida universal xatti - harakat bo'lib ko'rinadi. Bunga misol tariqasida eng mashhur tasvir Edvard Munchning \"Qichqiriq\" kartinasida ko'rishimiz mumkin."
      ],
      [
        "SMILE","A genuine smile is an instant, surefire way to communicate friendliness and goodwill. Around the world, it signals warmth, friendliness, and social harmony. Watching someone smile, especially babies, brings us joy. In family relations, dating, and business a smile opens doors as well as hearts.",
        "TABASSUM","Haqiqiy tabassum do'stlik va xayrixohlikni bildirishning bir lahzali, ishonchli usulidir. Butun dunyo bo'ylab u iliqlik, do'stlik va ijtimoiy hamjihatlikni anglatadi. Birovning, ayniqsa, chaqaloqlarning tabassumini ko'rish bizni xursand qiladi. Oilaviy munosabatlarda, tanishuvlarda va biznesda tabassum yuraklar kabi eshiklarni ham ochadi."
      ],
      [
        "TRUE SMILE","A topic of much research; a genuine smile involves the mouth and the muscles around the eyes. The face is visibly more relaxed in a true smile, as the facial muscles reflect actual joy rather than tension. Studies have shown that a genuine smile can be truly \u201ccontagious,\u201d in both professional and personal environments, and is often a trait we associate with charismatic individuals.",
        "HAQIQIY TABASSUM","ko'p tadqiqot mavzusi; haqiqiy tabassum og'iz va ko'z atrofidagi mushaklarni o'z ichiga oladi. Haqiqiy tabassumda yuz sezilarli darajada bo'shashadi, chunki yuz mushaklari kuchlanishni emas, balki haqiqiy quvonchni aks ettiradi. Tadqiqotlar shuni ko'rsatdiki, chinakam tabassum professional va shaxsiy muhitda haqiqatan ham \"yuqumli\" bo'lishi mumkin va ko'pincha biz xarizmatik shaxslar bilan bog'liq xususiyatdir."
      ],
      [
        "FALSE SMILE","False smiles, like nervous smiles, are used for perception management to make others believe everything is OK. They are fairly easy to distinguish from a true smile; however, in a false smile, sometimes only one side of the face is involved, or the smile goes toward the ear rather than the eyes. It looks contrived. A true smile engages the eyes and the facial muscles smoothly on both sides of the face.",
        "SOXTA TABASSUM","Soxta tabassumlar, xuddi asabiy tabassumlar kabi, boshqalarni hammasi yaxshi ekanligiga ishontirish uchun ishlatiladi. Ularni haqiqiy tabassumdan ajratish juda oson; ammo, yolg'on tabassumda, ba'zida yuzning faqat bir tomoni ishtirok etadi yoki tabassum ko'zlarga emas, balki quloqqa qarab ketadi. O'ylab topilgandek ko'rinadi go'yo. Haqiqiy tabassum esa yuzning har ikki tomonida ko'zlar va yuz mushaklarini silliq jalb qiladi."
      ],
      [
        "NERVOUS SMILE","A nervous or tense smile shows anxiety, concern, or stress. The nervous smile is performed to make others think everything is fine. You often see this on visitors clearing customs at the airport; they nervously smile at the inquisitive officer asking questions.",
        "ASABIY TABASSUM","asabiy yoki tarang tabassum tashvish yoki stressni ko'rsatadi. Asabiy tabassum boshqalar hamma narsani yaxshi deb o'ylashlari uchun amalga oshiriladi. Buni aeroportda bojxona hujjatlarini rasmiylashtirayotgan mehmonlarda uchratish mumkin; ular savol berayotgan qiziquvchan ofitserga asabiy tabassum qiladilar."
      ],
      [
        "LAUGH","express joy by making a sound, moving the face or body. She splashed water on Nick and we all began laughing.",
        "KULMOQ","ovoz chiqarish, yuz yoki tanani harakatlantirish orqali quvonchni ifodalash.U Nikga suv sepdi va hammamiz kula boshladik."
      ],
      [
        "CHUCKLE","laugh quietly, because you are thinking about something funny. What are you chuckling about? I don't see anything funny.",
        "MIYIG'IDA KULMOQ","kulgili narsa haqida o'ylaganingizda jimgina kulish.Nima deb kulyapsan? Men hech qanday kulgili narsani ko'rmayapman."
      ],
      [
        "GIGGLE","laugh quietly and repeatedly because you are nervous or embarrassed. She spilt the wine on the tablecloth and then giggled nervously at me.",
        "ASABIY KULMOQ","asabiy yoki xijolat bo'lganda jimgina va qayta - qayta kulish. U sharobni dasturxonga to'kib tashladi, keyin menga asabiy kulib qo'ydi."
      ],
      [
        "GIVE SOMEBODY THE GIGGLES","make somebody start giggling.",
        "KULDIRMOQ","kimnidir kula boshlashga majbur qilmoq."
      ],
      [
        "TITTER","laugh quietly, unkindly at something embarrassing. After she ended the lecture, she heard someone tittering.",
        "XIRINGLAB KULMOQ","biror narsaga jimgina, noxolis kulmoq. U ma'ruzani tugatgandan so'ng, kimdir xirillaganini eshitdi."
      ],
      [
        "SNIGGER (UK) / SNICKER (US)","laugh quietly, unkindly at something that is not supposed to be funny. When the teacher tripped on the steps, the boys snickered.",
        "BIROVNING USTIDAN KULMOQ","Kulgili bo'lmagan narsaga jimgina, shafqatsizlarcha kulish. O'qituvchi zinapoyada qoqilib ketganida, bolalar xirillab kulishdi."
      ],
      [
        "ROAR/ HOWL / SHRIEK WITH laughter","laugh very loudly. It was such a good comedy that when it finished, he was still roaring with laughter.",
        "BAQIRIB KULMOQ","juda baland ovozda kulmoq. Bu shunday yaxshi komediya ediki, u tugasada u hali ham baqirib kulardi."
      ],
      [
        "CHORTLE","give a loud chuckle of pleasure or amusement. When I told her the joke, she started to chortle with delight.",
        "ZAVQLANIB KULMOQ","kulgidan zavq olibbaland ovozda kulish. Men unga hazilni aytganimda, u zavqlanib kula boshladi.",
      ],
      [
        "CACKLE","laugh loudly in a high voice. When I told her the joke, she started cackling and couldn't stop!",
        "XOXOLAB KULMOQ","baland ovozda baland ovozda kulmoq. Men unga hazilni aytganimda, u qichqirdi va to'xtata olmadi!"
      ],
      [
        "GUFFAW","laugh noisily. They guffawed at what their baby had done.",
        "YURAKDAN KULMOQ","Ular chaqalog'ining qilgan ishidan zavqlanib kulishdi."
      ],
      [
        "JEER","laugh at somebody or shout unkind things at them. A crowd of protesters jeered the president.",
        "MASXARA QILMOQ","birovning ustidan kulish yoki unga yomon so'zlar aytish. Namoyishchilar olomoni prezidentni masxara qildi."
      ],
      [
        "LAUGH YOUR HEAD OFF","(informal) laugh a lot and loudly. He told us a joke after another, and we laughed our heads off!",
        "BOSHNI SILKITIB KULMOQ","norasmiy  va baland ovozda kulish. U bizga birin - ketin hazil aytdi, biz esa boshimizni silkitib kuldik."
      ],
      [
        "BURST INTO LAUGHTER","suddenly start laughing. The class burst into laughter.",
        "KULIB YUBORMOQ","birdan kula boshladi. Sinf ahli kulib yubordi."
      ],
      [
        "BEAM","smile very happily. The mother looked at her son and beamed proudly.",
        "QUVNOQ TABASSUM","juda baxtli tabassum. Ona o'g'liga qaradi - da, mag'rur nur sochdi."
      ],
      [
        "GRIN","smile widely. When she knew she had won the prize, she grinned broadly.",
        "TIRJAYMOQ","tabassum qilish. U sovrinni qo'lga kiritganini bilgach, tirjayib qo'ydi."
      ],
      [
        "SIMPER","smile in a silly and annoying way. He simpered at the boys as he spoke.",
        "MASXARA QILMOQ","birovga hurmat ko'rsatmay, yomon tabassum qilish. U yigitining musiqiy didini mazax qildi."
      ],
      [
        "SMIRK","smile unpleasantly, to show that you are pleased by somebody's bad luck. The kids smirked when the teacher fell on the floor.",
        "ILJAYMOQ","ahmoqona va bezovta qiluvchi tabassum. U gapirar ekan, yigitlarga iljayib qo'ydi."
      ],
      [
        "SNEER","smile in an unkind way, showing no respect for somebody. She sneered at his boyfriend's musical tastes.",
        "MAG'RURONA JILMAYMOQ","yoqimsiz tarzda tabassum qilish, birovning omadsizligidan mamnun ekanligini ko'rsatish uchun kulish. O'qituvchi polga yiqilib tushganida bolalar miyig'ida kulib qo'yishdi."
      ],
      [
        "WHISTLE","make a high musical sound by forcing out air through puckered lips. She whistled a tune as she cleaned the kitchen.",
        "HUSHTAK CHALMOQ","burishgan lablar orqali havoni chiqarib, baland musiqiy tovush chiqarish. Oshxonani yig'ishtirar ekan, ohangni hushtak chaldi."
      ],
      [
        "HUM","make musical sounds with your lips closed. If you don't know the tune, you can just hum the tune.",
        "HUM","lablaringizni yopiq holda musiqali tovushlarni chiqaring. Agar siz kuyni bilmasangiz, shunchaki kuyni xirillashingiz mumkin."
      ],
      [
        "CHEEK OR FACIAL MASSAGING","Cheek or facial massaging is a good way to release stress. Usually done very softly, it can also signal contemplation.",
        "YONOQ YOKI YUZNI UQALAMOQ","Yonoq yoki yuzni uqalash stressdan xalos bo'lishning yaxshi usuli hisoblanadi. Odatda juda yumshoq harakat bilan bajariladi, u ham tafakkurni bildirishi mumkin."
      ],
      [
        "CHEEK STRUMMING","Strumming the fingers on the cheek indicates that someone is bored and wanting to move things along. Verify with other behaviours, such as looking bored or seat shifting.",
        "YONOQLARGA URIB QO'YMOQ","Yonoqqa barmoqlarni urish kimningdir zerikkanligini va ishlarini oldinga harakatlantirmoqchi ekanligini bildiradi. Zerikish yoki o'rindiqni almashtirish kabi boshqa xatti - harakatlar bilan tasdiqlanadi."
      ],
      [
        "CHEEK SCRATCHING","Cheek scratching is also a pacifier, a way of dealing with doubts and insecurities. It is more robust than sneaking a touch, which tends to be more accurate because of its hidden meaning. Nevertheless, the scratching of the cheek with four fingers usually indicates reservations, hesitation, bewilderment, or apprehension.",
        "YONOQLARNI YENGIL TIRNAMOQ","Yonoqlarni yengil tirnash ham tinchlantiruvchi, shubha va ishonchsizlik bilan kurashish usulidir. To'rt barmog'i bilan yonoqni tirnash odatda shubha, ikkilanish, hayrat yoki qo'rquvni ko'rsatadi."
      ],
      [
        "JAW TENSING","When we are upset, angry, or fearful, the jaw muscles near the ears tend to tense up. Look for jaw tension when there is stress, defiance, or emotions are becoming heated.",
        "YONOQLAR TARANGLASHUVI","Biz xafa bo'lganimizda, g'azablanganimizda yoki qo'rqib ketganimizda, quloqlar yaqinidagi jag' mushaklari taranglashadi. Stress, bo'ysunmaslik yoki his - tuyg'ular kuchayib ketganda jag' zo'riqib, qizarib ketadi."
      ],
      [
        "JAW DROPPING","A sudden drop of the jaw, leaving the mouth open and the teeth exposed, communicates great surprise. This behaviour is often seen when people are shocked or are confronted with an embarrassing revelation. Why our jaws drop is not completely understood, but the action is quite accurate in revealing total surprise.",
        "JAG'NING PASTGA TUSHIB KETISHI","(hayratdan og'zi ochilib qoldi) Og'izni ochiq holda, tishlarni ochiq holdabo'lib jag'ning to'satdan tushishi keskin hayratni bildiradi. Bu xatti - harakat ko'pincha odamlar hayratda qolganda yoki sharmandali vahiyga duch kelganda kuzatiladi. Nega bizning jag'larimiz tushib ketishi to'liq tushunilmagan, ammo harakat butunlay hayratni ochishda juda aniq."
      ],
      [
        "CHIN UP","When the chin is out and up it communicates confidence - thus the saying \u201cchin up.\u201d In certain European cultures (German, French, Russian, and Italian, among others) the chin is generally raised higher than normal to signify confidence, pride, and in certain cases, arrogance.",
        "IYAKNING YUQORIGA KO'TARMOQ","Agar iyak tashqariga va yuqoriga ko'tarilgan bo'lsa, u ishonchni bildiradi - shuning uchun \"iyakni yuqoriga ko'taring\". Ba'zi Evropa madaniyatlarida (nemis, frantsuz, rus va italyan va boshqalar) iyak odatda ishonch, mag'rurlik va ba'zi hollarda takabburlikni bildirish uchun odatdagidan balandroq ko'tariladi."
      ],
      [
        "CHIN WITHDRAWING","When we are worried or anxious, we instinctively move our chin as close to the neck as possible - nature\u2019s way of protecting our vitals. This is an excellent indicator of insecurity, doubt, even fear. If you see this behaviour after asking someone a question, there are serious unresolved issues. When children are questioned about something they should not have done, the chin often comes down, showing contriteness.",
        "IYAKNI PASTGA TORTMOQ","Biz xavotirda bo'lganimizda, biz instinktiv ravishda iyagimizni iloji boricha bo'ynimizga yaqinroq tortamiz - bu tabiatning hayotiy organlarimizni himoya qilish usuli. Bu ishonchsizlik, shubha va hatto qo'rquvning ajoyib ko'rsatkichidir. Agar siz kimgadir savol berganingizdan keyin bu xatti - harakatni ko'rsangiz,demak unda jiddiy hal etilmagan muammolar mavjud. Bolalar qilmasliklari kerak bo'lgan narsa haqida so'rashganda, iyagi ko'pincha pastga tushadi."
      ],
      [
        "CHIN HIDING","This is generally employed by children to hide their embarrassment, show their displeasure toward others, or demonstrate that they are upset. They tuck their chin down, often crossing their arms at the same time and then refuse to lift their chin.",
        "IYAGINI PASTGA YASHIRMOQ","Bu odatda bolalar tomonidan o'zlarining xijolatlarini yashirish, boshqalarga nisbatan noroziligini ko'rsatish yoki xafa bo'lganliklarini ko'rsatish uchun qo'llaniladi. Ular iyaklarini pastga tushiradilar, ko'pincha qo'llarini bog'laydilar va yuqoriga qaramasdan turaveradilar."
      ],
      [
        "CHIN POINTING","In many cultures, people will point in a direction with their chin, extending it forward as they stretch their necks. This replaces pointing with a finger and is seen throughout the Caribbean, in Latin America, in parts of Spain, and in the Middle East, as well as on many Native American reservations.",
        "IYAK BILAN KO'RSATMOQ","Ko'p madaniyatlarda odamlar bo'ynini cho'zganlarida iyagi bilan yo'nalishni ko'rsatib, oldinga cho'zadilar. Bu barmoq bilan ishora qilish o'rnini bosadi va buni butun Karib dengizida, Lotin Amerikasida, Ispaniyaning ba'zi qismlarida va Yaqin Sharqda, shuningdek, ko'plab tubjoy amerikalik rezervatsiyalarda uchratish mumkin."
      ],
      [
        "FACE AVOIDANCE","For a variety of reasons, we sometimes try to avoid face-to-face contact with others, even when we are in their immediate proximity. You see this in court between victim and suspect, or during contentious divorce proceedings.",
        "YUZLARINI YASHIRMOQ","Turli sabablarga ko'ra, biz ba'zida boshqalar bilan yuzma - yuz muloqot qilishdan qochishga harakat qilamiz, hatto ular yaqinida bo'lsak ham. Siz bu holatni sud jarayonida ko'rishingiz mumkin."
      ],
      [
        "FACE SHIELDING","Around the world, people will cup their hands over their face or use objects to hide their face, usually as a result of shame, embarrassment, fear, anxiety, or apprehension.",
        "YUZNI PANA QILMOQ","Dunyo bo'ylab odamlar uyat, xijolat, xavotir yoki qo'rquv natijasida qo'llarini yuzlariga yopadilar yoki yuzlarini yashirish uchun nimalardandir foydalanadilar."
      ],
      [
        "FACIAL INCONGRUENCE","Incongruence between what a person says and how it is reflected in the face is not uncommon. People might say one thing, but their face is already telegraphing another. During an exchange of pleasantries, a very tense face or a face displaying dislike or discomfort betrays true sentiments, though the person might be obliged to say something nice or offer a polite greeting.",
        "YUZDAGI MUVOFIQLIK","Odamning aytgani va uning yuzida aks etishi o'rtasidagi muvofiqlik kam uchraydi. Odamlar bir narsani aytishlari mumkin, lekin ularning yuzlari boshqa narsani ifodalab turadi. Biror kishini yoqtirmagan holatda uning yoqimli so'zlariga javoban yuzi boshqa so'zi boshqa holatda bo'ladi."
      ],
      [
        "FACE TOUCHING","Face touching serves a multitude of purposes. It can attract others - we often see models touching their faces on magazine covers. Or it can help us relax by stimulating the myriad of nerves on the face. Context is key.",
        "YUZGA TEGINMOQ","Yuzga teginish ko'p maqsadlarga xizmat qiladi. Bu boshqalarni o'ziga jalb qilishi mumkin - biz ko'pincha jurnal muqovalarida modellarning yuzlariga teginib suratga tushganini ko'ramiz. Bu harakat yana yuzdagi son - sanoqsiz nervlarni rag'batlantirish orqali bizga dam olishga ham yordam beradi. Kontekst asosiy hisoblanadi."
      ],
      [
        "NECK MASSAGING","People often massage the sides or back of their neck to relieve stress. The fact is that people usually only do it when something is bothering them.",
        "BO'YINNI UQALAMOQ","Odamlar stressni engillashtirish uchun ko'pincha bo'ynining yon tomonlarini yoki orqa qismini uqalashadi.Ko'pincha kishilar buni faqat biror narsa ularni bezovta qilganda qilishadi."
      ],
      [
        "PLAYING WITH SHIRT COLLAR","Touching or playing with the front shirt collar serves to pacify or relieve stress in three ways: by covering the neck area; as a tactile repetitive behaviour; and by moving clothing to ventilate the skin underneath.",
        "KO'YLAK YOQASI BILAN O'YNAMOQ","Ko'ylakning oldingi yoqasiga teginish yoki o'ynash stressni uchta yo'l bilan tinchlantirish yoki engillashtirish uchun xizmat qiladi: bo'yin hududini yopish orqali; takrorlanuvchi xatti - harakatlar sifatida; va ostidagi terini ventilyatsiya qilish uchun kiyimni silkitib qo'yish."
      ],
      [
        "NECK STRETCHING","Neck stretching or cracking in a circular motion is a stress reliever and pacifier. This is often seen when people are asked difficult questions they would rather not answer.",
        "BO'YINNI CHO'ZMOQ","Bo'yinni keskinlik bilan cho'zish stressni engillashtiruvchi va tinchlantiruvchidir. Bu ko'pincha odamlarga javob bermaslikni afzal ko'rgan qiyin savollar berilganda ko'rinadi."
      ],
      [
        "RAISING ONE SHOULDER","One shoulder raised toward the ear as a person answers a question usually represents insecurity or doubt. In conjunction with other behaviours (hesitation in answering, arms drawing closer to the body), this is a good indication that the person lacks confidence in what he is saying.",
        "BIR YELKANI KO'TARMOQ","Savolga javob berayotgan odamning bir yelkasini quloqqa qarab ko'tarilishi odatda ishonchsizlik yoki shubhani bildiradi. Boshqa xatti - harakatlar (javob berishda ikkilanish, qo'llarni tanaga yaqinlashish) bilan birgalikda, bu odamning o'zi aytayotgan narsaga ishonchi yo'qligidan dalolat beradi."
      ],
      [
        "HOLDING SHOULDERS HIGH","When people raise and keep both shoulders high (toward the ears), they are likely feeling insecurities or doubt. This behaviour is called the \u201cturtle effect.\u201d",
        "ELKALARNI YUQORI TUTMOQ","Odamlar ikkala yelkasini ko'tarib, ushlab turganda (ular ishonchsizlik yoki shubhani his qilayotgan bo'ladilar."
      ],
      [
        "QUICK SHOULDER SHRUGGING","When people are asked a question and don't know the answer, they often raise both shoulders quickly and prominently. The quick upward movement is a gravity-defying behaviour and those are usually associated with positive feelings - in this case they don\u2019t know.",
        "YELKA QISMOQ","Odamlarga savol berilsa va U javob berolmasa, ular ikki yelkasini tez va ko'zga ko'rinarli ko'taradilar. Tez yuqoriga ko'tarilish tortishish kuchiga qarshi harakatdir va ular odatda ijobiy his - tuyg'ular bilan bog'liq - bu holda ular haqiqatan javobni bilishmaydi."
      ],
      [
        "SHOULDERS WIDENING","The amplification of the shoulders from relaxed to broad can be a perceptible display of authority and confidence that signals a person is in charge. We often see this with athletes and military personnel. This is why business suits have padded shoulders - to make their wearers look more powerful and authoritative.",
        "YELKALARNI KENGAYTIRIB KO'TARMOQ","Yelkalarni bo'shashtirib keng ko'tarilishi bu ishonchning sezilarli namoyon bo'lishida yoki odamning mas'ul ekanini bildiradi. Biz buni sportchilar va harbiylardauchratishimiz mumkin. Shuning uchun ularning ish kiyimlari bo'lmish formalarida yelkalari yostiqli bo'lib, ularniyanada kuchli va obro'li ko'rsatadi."
      ],
      [
        "KOWTOWING","This is a slight bending forward of the upper torso and shoulders, which may be intentional or subconscious. Around the globe, it is performed in some variants in the presence of a higher authority. In Asia, people bow out of respect, just as the queen\u2019s subjects do in London.",
        "TA'ZIM QILMOQ","bu yelkaning yuqori qismining bir oz oldinga egilishi, bu ataylab yoki ongsiz bo'lishi mumkin. Butun dunyoda bu yuqori qatlam vakillariga nisbatan amalga oshiriladi. Osiyoda odamlar xuddi London qirolligida bo'lgandek hurmat ko'rsatib egiladi."
      ],
      [
        "HUGGING","Hugging, in all its forms, is universally indicative of closeness, good feelings, warmth, and cooperation. While in some cultures a brief social hug, an abrazo (in Latin America), can serve as a greeting gesture similar to shaking hands, how it is performed can indicate how the participants feel about each other. Consider American athletes and movie stars giving each other bro hugs. As an observer, I always note the hug and the facial expressions to give me a reliable sense of how two individuals feel about each other.",
        "QUCHOQLASHMOQ","Quchoqlash, har qanday ko'rinishda bo'lib yaqinlik, yaxshi his - tuyg'ular, iliqlik va hamkorlikning umumiy belgisidir. Ba'zi madaniyatlarda qisqa quchoqlashish,  (Lotin Amerikasida) qo'l berib ko'rishishgandek salomlashish imo - ishorasi bo'lib xizmat qilishi mumkin. Amerikalik sportchilar va kino yulduzlarining birodarlarini quchoqlashlarida ko'rish mumkin. O'zbek millati vakillarida ham salomlashish uchun quchoqlashib ko'rishishadi."
      ],
      [
        "ARM SPREADING","People who spread out their arms over several chairs or a couch are demonstrating confidence through a territorial display. Senior executives will do this more often than junior staffers. Observe when someone of higher rank or status walks in whether the person withdraws his arms to his sides.",
        "QO'LLARNI YOYISH","Qo'llarini bir nechta stullar yoki divanda yoygan odamlar shu orqali o'zlariga bo'lgan ishonchni namoyish etadilar. Katta rahbarlar, yuqori martabali yoki maqomga ega bo'lgan odamlar buni kamtarin kishilarga nisbatan ko'proq bajarishadi."
      ],
      [
        "GESTURING WHILE SPEAKING","Gestures are considered an integral part of communication. Gestures help us to get and maintain attention as well as to highlight important points. Gestures even help the person speaking by facilitating greater flexibility in speaking and even with the recall of words. Gestures affect how our message is received and how much of it other people remember. When gestures echo the message, the message is potentiated. If you look at successful TED Talks, you will notice that gestures are an essential element utilized by the best speakers.",
        "GAPIRAYOTGANDA IMO - ISHORA QILMOQ","Imo - ishoralar muloqotning ajralmas qismi hisoblanadi. Imo - ishoralar diqqatni jalb qilish va saqlashga, shuningdek, muhim fikrlarni ta'kidlashga yordam beradi. Imo - ishoralar hatto gapirayotgan odamga gapirayotganda suhbatga moslashuvchanlikni ta'minlash va hatto so'zlarni eslab qolishda yordam beradi. Imo - ishoralar bizning xabarimizni qanday qabul qilinishiga va boshqalar uni qanchalik eslab qolishlariga ta'sir qiladi. Imo - ishoralar xabarni aks ettirganda, xabarning ta\u2019sirchanligi kuchayadi. Muvaffaqiyatli TED suhbatlarini ko'rsangiz, imo - ishoralar eng yaxshi ma'ruzachilar tomonidan qo'llaniladigan muhim element ekanligini ko'rasiz."
      ],
      [
        "CATCH","to stop someone from escaping, especially by running after them. You'll have to catch me first! she said, running out of the room.",
        "USHLAMOQ","kimnidir qochib ketishini to'xtatish, uning orqasidan yugurish. Avval meni ushlashingiz kerak! - , dedi u xonadan yugurib chiqib."
      ],
      [
        "GET","to catch someone, especially before doing something unpleasant to them or punishing them. He ran for his life, but they got him in the end.",
        "OLMOQ","kimnidir unga yoqimsiz ish qilishdan yoki uni jazolashdan oldin qo'lga olish. U o'z hayoti uchun yugurdi, lekin oxir - oqibat uni qo'lga oldilar."
      ],
      [
        "CORNER","to catch someone by forcing them into a room or space that they can't escape from. The man cornered me; there was no way to escape.",
        "BURCHAKKA QO'YMOQ","kimnidir qochib qutula olmaydigan xonaga yoki bo'sh burchakda majburlab ushlamoq. Erkak meni burchakka qo'ydi; qochishning iloji yo'q edi."
      ],
      [
        "CATCH UP WITH","to catch someone that you have been chasing or trying to catch for some time. It's no use running. Those guards are going to catch up with us sooner or later.",
        "YETIB OLMOQ","anchadan beri quvib yurgan yoki ushlamoqchi bo'lgan odamni qo'lga olish. Yugurishning foydasi yo'q. O'sha soqchilar ertami - kechmi bizga yetib kelishadi."
      ],
      [
        "HUNT DOWN","to catch someone to kill, hurt or punish them or try very hard to catch them. The soldiers had orders to hunt down the enemies.",
        "QO'LGA KIRITMOQ","kimnidir o'ldirish, xafa qilish yoki jazolash yoki qo'lga olish uchun juda ko'p harakat qilish.  Askarlar dushmanlarni qo'lga olishni buyurdilar."
      ],
      [
        "TRAP","to catch someone by skill or cleverness, or by forcing them into a place where they can't escape. Don't call the police from a telephone booth; the attacker could trap you inside.",
        "TUZOQ QO'YMOQ","birovni mahorat yoki zukkolik bilan yoki qochib qutula olmaydigan joyga majburlab ushlash. Telefon kabinasidan politsiyaga qo'ng'iroq qilmang; tajovuzkor sizni ichkarida tuzoq qo'yib ushlashi mumkin."
      ],
      [
        "CAPTURE","to catch a person to make them a prisoner. Many people at that time were captured and enslaved during the invasions.",
        "QO'LGA OLMOQ","odamni mahbus qilish uchun qo'lga olish. Bosqinlar paytida ko'plab odamlar asirga olingan va qul qilingan."
      ],
      [
        "ROUND UP","To catch several people by bringing them together from different places. The army rounded up the enemies and shot them all.",
        "TO'PLAMOQ","bir nechta odamni turli joylardan birlashtirib, ushlash. Qo'shin dushmanlarni to'pladi va barchasini otib tashladi."
      ],
      [
        "TAKE SOMEBODY PRISONER","to catch someone, especially in war and keep him as a prisoner. During World War II he was taken prisoner by the Nazis.",
        "BIROVNI ASIRGA OLMOQ","kimnidir tutmoq, ayniqsa urushda tutmoq va uni asirlikda tutmoq. Ikkinchi jahon urushi paytida u fashistlar tomonidan asirga olingan."
      ],
      [
        "RECAPTURE","to catch someone for a second time when they have escaped after being caught once. It's not likely that they will recapture us. We have lost them",
        "QAYTA QO'LGA OLMOQ","bir marta qo'lga tushganidan keyin qochgan odamni ikkinchi marta tutmoq. Ular bizni qaytarib olishlari ehtimoldan yiroq emas. Biz ularni yo'qotdik."
      ],
      [
        "CATCH SOMEBODY RED","HANDED - to catch someone who is in the middle of doing something bad or illegal, especially stealing, when they are not expecting it. The maid was caught red-handed stealing things from the house.",
        "BIROVNI JINOIYAT USTIDA USHLAMOQ","yomon yoki noqonuniy ish qilayotgan, ayniqsa o'g'irlik qilayotgan odamni odamni, ular buni kutmaganda qo'lga olish. Xizmatkor ayol uydan narsalarni o'g'irlab ketayotgan vaqtida ushlangan."
      ],
      [
        "CATCH SOMEBODY IN THE ACT","to catch someone who is in the middle of doing something bad or illegal, by seeing them do it. We caught the boys in the act while they were stoning the car.",
        "QO'LGA OLMOQ","yomon yoki qonunga xilof ish qilayotgani odamni  tutmoq. Biz bolalarni mashinani toshbo'ron qilishayotganda qo'lga oldik."
      ],
      [
        "NAB SOMEBODY","to catch or arrest someone in the act of doing something wrong. The police nabbed him just as he ran out of the shop with the money.",
        "QAMOQQA OLMOQ","birovni noto'g'ri ish qilayotganda qo'lga olish yoki qamoqqa olish. Politsiya uni pul bilan do'kondan yugurib chiqqanida qo'lga oldi."
      ],
      [
        "INTERCEPT","(sports) to catch a pass intended for a member of the offensive team. He intercepted a dangerous pass just on time.",
        "USHLAMOQ","(sport) hujumkor jamoa a'zosi uchun mo'ljallangan pasni ushlab olish. U xavfli uzatmani o'z vaqtida ushlab oldi."
      ],
      [
        "HOOK","to catch something as with a hook (also for fish).",
        "ILG'AB OLMOQ","ilgak bilan bir narsani ushlash (baliq uchun ham)."
      ],
      [
        "SNARE","to catch a small animal or a bird using a wire or rope that holds the animal so that it can't move. They went to the fields to check if any rabbit had been snared in the net.",
        "TUZOQQA TUSHIRMOQ","hayvonni qimirlamasligi uchun sim yoki arqon yordamida mayda hayvon yoki qushni ushlash. To'rda quyon tuzoqqa tushib qolganmi yoki yo'qligini tekshirish uchun dalaga borishdi."
      ],
      [
        "HAND GROOMING","Well-groomed hands are a sign of a healthy individual. Clean fingers, with nails of proper length, indicate that people care about themselves. This contrasts with people who have dirty or long nails, unkempt cuticles, or flesh that has been chewed off the fingers. In dating and even in the workplace, we often conclude how well - groomed or healthy-looking a person\u2019s hands appear.",
        "QO'LLARNI PARVARISHLAMOQ","Yaxshi parvarish qilingan qo'llar sog'lom odamning belgisidir. To'g'ri uzunlikdagi tirnoqlari , toza barmoqlar odamlarning o'zlari haqida qayg'urishlarini ko'rsatadi. Bu iflos yoki uzun tirnoqlari, tirnoq chetlari o'sgan doimiy tirnoqlarini so'rib yuradigan odamlardan farq qiladi. Tanishuvlarda va hatto ish joyida biz ko'pincha odamning qo'llari qanchalik toza yoki sog'lom ko'rinishidan xulosa chiqaramiz."
      ],
      [
        "FREQUENCY OF TOUCH","How frequently we touch others is a good way of communicating how we feel about them. While on some level the degree of touch is culturally determined, for the most part when we care about others we tend to touch them more often.",
        "TEGINIB GAPIRMOQ","Biz boshqalarga qanchalik tez - tez teginishimiz ular haqida qanday fikrda ekanimizni bildirishning yaxshi usuli hisoblanadi. Ba'zi darajada teginish madaniy jihatdan belgilanadi, aksariyat hollarda biz boshqalarga g'amxo'rlik qilsak, biz ularga tez - tez tegishga moyilmiz."
      ],
      [
        "HOW WE TOUCH","A touch can be respectful, loving, playful, sensuous, reserved, tender, caring, or palliative. A light touch of the skin can send shivers down our spine, stimulating sexual desire. A light touch stimulates the brain differently than a heavier touch.",
        "BIZ QANDAY TEGINAMIZ","Teginish hurmat bilan, mehribonlik bilan, sho'xlik , sezgir, ehtiyotkor, yumshoq, g'amxo'r bo'lishi mumkin. Teriga engil teginish umurtqa pog'onasida titraydi va jinsiy istakni uyg'otadi. Fakt shuki, yengil teginish qattiq, qo'pol teginishdan ko'ra yoqimli bo'ladi."
      ],
      [
        "PLAYING WITH OBJECTS","Playing with jewellery or other objects (winding a watch, tapping a pencil, checking a smartphone) serves as a pacifier. You often see this behaviour in people waiting to be interviewed for a job or to just pass the time.",
        "OB'YEKTLAR BILAN O'YNAMOQ","Zargarlik buyumlari yoki boshqa narsalar bilan o'ynash (soatni o'rash, qalam teginish, smartfonni tekshirish) tinchlantiruvchi vazifasini bajaradi. Siz ko'pincha bu xatti - harakatni ishga joylashish yoki shunchaki vaqt o'tkazishni kutayotgan odamlarda ko'rasiz."
      ],
      [
        "HANDS IN READY/ACTIVE POSITION","This is where the hands are held about fourteen inches apart in front of the belly at waist level with the palms facing each other, and fingers spread apart. Speakers often do this to capture an audience\u2019s attention at an important moment.",
        "QO'LLAR TAYYOR/FAOL HOLATDA","Bu yerda qo'llar qorin oldida bir - biridan taxminan o'n to'rt dyuym uzoqlikda, bel darajasida kaftlar bir - biriga qaragan holda, barmoqlar bir - biriga yoyilgan. Ma'ruzachilar ko'pincha muhim daqiqalarda tinglovchilarning e'tiborini jalb qilish uchun shunday qilishadi."
      ],
      [
        "HAND RESTRICTING","Researchers, Aldert Vrij in particular, have noted that when people lie, they tend to use their hands and arms less.",
        "QO'LNI CHEKLAMOQ","Tadqiqotchilar, xususan, Aldert Vrij, odamlar yolg'on gapirganda, qo'llarini kamroq ishlatishlarini ta'kidladilar."
      ],
      [
        "HAND WRINGING","Rubbing one\u2019s hands together communicates concern, doubt, anxiety, or insecurity. The degree of stress is reflected in how tightly the hands are wrung.",
        "QO'LLARNI BIR","BIRIGA ISHQALAMOQ - Qo'llarni bir - biriga ishqalash tashvish, shubha, xavotir yoki ishonchsizlikni bildiradi. Stress darajasi qo'llarning qanchalik mahkam siqilishida namoyon bo'ladi."
      ],
      [
        "FINGER HOLDING","When we meet people for the first time or we feel a little insecure, we tend to hold our fingers together lightly in front of us. It is a very tactile, self-soothing behaviour.",
        "BARMOQLARNI TUTMOQ","Biz odamlar bilan birinchi marta uchrashganimizda yoki o'zimizga bir oz ishonchsizlik his qilsak, biz o'z barmoqlarimizni oldimizda bir - biriga engil ushlab turishga moyilmiz. Bu juda sezgir, o'z - o'zini tinchlantiradigan xatti - harakatlar."
      ],
      [
        "JITTERY HANDS","When we are excited or stressed our hands may become jittery. Jitters, of course, can also be caused by a neurological disorder, disease.",
        "ASABIY QO'LLAR","Biz hayajonlangan yoki zo'riqish paytida qo'llarimiz asabdan titrashi mumkin. Bu nevrologik kasallikning bir ko'rinishibo'lishi ham mumkin."
      ],
      [
        "INTERLACED FINGERS","THUMBS UP - Statements made with thumbs up while the fingers are interlaced indicate confidence. Usually, people do this with their hands on their lap or top of a desk or table; their thumbs rising as they genuinely emphasize a point. This is a very fluid behaviour that might change depending upon the emotions felt in the moment.",
        "BORMOQLAR CHIRMASHMOQ","BOSHBARMOQ YUQORIGA- Barmoqlar o\u02bbzaro bog\u02bblangan holda va bosh barmoq yuqoriga ko\u02bbtarilgan holda aytilgan gaplar ishonchni bildiradi. Odatda odamlar bunda qo'llarini tizzalariga yoki stol ustiga qo'yishadi; bir fikrni chin dildan ta'kidlaganlarida ularning bosh barmoqlari ko'tariladi. Bu kam uchraydigan xatti - harakatlar bo'lib, u his - tuyg'ularga qarab o'zgarishi mumkin."
      ],
      [
        "INTERLACED FINGERS","THUMBS DOWN - Fingers interlaced with thumbs down tend to show a low degree of confidence or negative emotions about what is being discussed. When we are confident about what we are saying, we tend to elevate the thumbs subconsciously. As stated above, this is very fluid, a person\u2019s thumbs may go from up to down during a conversation depending on how they genuinely feel about a topic.",
        "BARMOQLARNI CHIRMASHTIRMOQ","BOSH BARMOQ PASTGA- Bosh barmoqlar bilan bog'langan barmoqlar muhokama qilinayotgan mavzuga nisbatan past darajadagi ishonch yoki salbiy his - tuyg'ularni namoyon qiladi. Agar biz aytayotgan narsaga ishonchimiz komil bo'lsa, biz ongsiz ravishda bosh barmog'imizni ko'tarishga moyilmiz. Yuqorida aytib o'tilganidek, suhbat davomida odamning bosh barmoqlari mavzuga nisbatan qanday his - tuyg'ular bo'lishiga qarab yuqoridan pastga tushishi mumkin."
      ],
      [
        "EMPHASIZING WITH HANDS","When we are comfortable, our hands naturally gesture and emphasize. In some cultures, especially around the Mediterranean, people tend to gesture more emphatically, and these gestures are highly significant in context. Great speakers also gesture frequently. Researchers tell us that when people suddenly begin to lie, they engage in fewer hand gestures - and with less emphasis. If the hands suddenly become passive or restrained, the person is likely losing confidence in what he is saying, for whatever reason.",
        "QO'LLAR BILAN TA'KIDLAMOQ","Biz qulay holatda bo'lganimizda, qo'llarimiz tabiiy ravishda ishora qiladi va ta'kidlaydi. Ba'zi madaniyatlarda, ayniqsa O'rta er dengizi atrofida, odamlar imo - ishoralarni ko'proq qiladilar va bu imo - ishoralar kontekstda juda muhimdir. Taniqli ma'ruzachilar ham tez - tez imo - ishora qiladilar. Tadqiqotchilarning ta'kidlashicha, odamlar to'satdan yolg'on gapira boshlaganlarida, ular kamroq qo'l imo - ishoralarini qilishadi va kamroq urg'u berishadi. Agar qo'llar to'satdan passiv bo'lib qolsa yoki o'zini tutib qolsa, ehtimol, odam o'z gapirayotga gapiga ishonchini yo'qotadi."
      ],
      [
        "FINGER POINTING","Almost universally, people dislike having a finger pointed at them. If you have to point, especially in a professional or romantic setting, use the full hand, fingers together, rather than a single finger. This also applies when pointing to objects. When directing someone to a chair, do so with the full hand rather than with a single finger.",
        "BARMOQNI KO'RSATMOQ","Deyarli hamma odamlarga unga barmoq bilan ishora qilishlari yoqmaydi. Agar siz ishora qilishingiz kerak bo'lsa, ayniqsa professional yoki romantik muhitda bitta barmoqni emas, balki to'liq qo'lni, barmoqlarni birga ishlating. Bu ob'ektlarga ishora qilishda ham amal qiladi. Biror kishini stulga yo'naltirganda, buni bitta barmoq bilan emas, balki to'liq qo'l bilan ko'rsatrish to'g'riroqdir."
      ],
      [
        "NAIL BITING","Nail biting or cuticle biting is a way of relieving tension and anxiety. It is a display of worry, lack of confidence, or insecurities. Even people who never bite their nails might suddenly find themselves doing so when undergoing extreme stress. This behaviour can become pathological to the point of damaging the skin or even ulcerating the fingers, destroying the surrounding cuticle or otherwise healthy tissue.",
        "TIRNOQ TISHLAMOQ","Tirnoq tishlash yoki tirnoq chetidagi ortiqcha paychalarni tishlash taranglik va xavotirdan xalos bo'lish uchun usulidir. Bu tashvish, yoki ishonchsizlikning namoyonidir. Hatto hech qachon tirnoqlarini tishlamagan odamlar ham, haddan tashqari stressni boshdan kechirganda, to'satdan shunday qilishlari mumkin. Bu xatti - harakat patologik holatga kelib, teriga zarar etkazishi yoki hatto barmoqlarning yarasini keltirib chiqarishi mumkin."
      ],
      [
        "FINGER STRUMMING","Strumming one\u2019s finger on a table or a leg passes the time and, like other repetitive behaviours, soothes. In professional settings you see this as people wait for someone to show up or finish talking. It is a way of saying, \u201cCome on, let\u2019s get things moving here.\u201d",
        "BARMOQLARNI TING'ILLATMOQ","Barmoqlaringizni stolga yoki oyoqqa urib ting'illatish vaqtni o'tkazadi va boshqa takrorlanadigan xatti - harakatlar kabi tinchlantiradi. Professional suhbatlarda odamlar kimdir kelishini kutayotganlarida yoki gapini tugatishini kutayotganda ko'rish mumkin. Bu: \"Keling, vaziyatni birgalikda harakatga keltiraylik\" deyishning bir usuli."
      ],
      [
        "HANDS IN POCKET","Many people are comforted by placing one or both hands in their pockets while talking to others. But sometimes this is seen as too informal and in some cultures is considered rude. It should be noted that some people erroneously view keeping hands in pockets as suspicious or deceptive.",
        "QO'LLARNI  CHO'NTAKKA SOLMOQ","Ko'pchilik boshqalar bilan gaplashayotganda bir yoki ikkala qo'lni cho'ntagiga solib, taskin topadi. Ammo ba'zida bu juda norasmiy deb hisoblanadi va ba'zi madaniyatlarda qo'pol deb hisoblanadi. Shuni ta'kidlash kerakki, ba'zi odamlar qo'llarni cho'ntakda saqlashni shubhali deb bilishadi."
      ],
      [
        "MASSAGING CLOSED FIST","Massaging the closed fist with the other hand is a self-restraining and pacifying behaviour. It usually means the person is struggling or worried and experiencing a lot of underlying tension. You often see this with poker players and stock traders, or wherever fortunes might be quickly won or lost.",
        "YOPIQ MUSHTINI UQALAMOQ","Yopiq mushtni ikkinchi qo\u02bbl bilan uqalash o\u02bbz - o\u02bbzini cheklovchi va tinchlantiruvchi harakatdir. Bu odatda odamning kurashayotganini yoki tashvishlanayotganini va juda ko'p taranglikni boshdan kechirayotganini anglatadi. Siz buni tez - tez poker o'yinchilari va birja treyderlari bilan yoki boylik tezda qo'lga kiritilishi yoki yo'qolishi mumkin bo'lgan joyda ko'rasiz."
      ],
      [
        "SPEAKER'S FIST","Sometimes we will see a speaker make a fist while \u201chammering home a point.\u201d This is not unusual, especially from very dramatic or enthusiastic speakers. This usually indicates pent-up issues, constrained energy, or anticipation of some sort of physical response. It is said that Theodore Roosevelt, a dynamo of action and adventure, always sat with his hands balled into fists, as if holding back coiled energy.",
        "MA'RUZACHI QO'LINING MUSHT HOLATI","Ba'zan biz \"urg'uni bir nuqtaga berish\" paytida ma'ruzachining musht qilayotganini ko'ramiz. Bu dadil ma'ruzachilar tomonidan qilinadi. Bu odatda to'xtatilgan muammolar, cheklangan energiya yoki qandaydir jismoniy javobni kutish paytiga xos holat. Aytishlaricha, harakat va sarguzasht dinamosi Teodor Ruzvelt har doim qo'llarini musht qilib o'tirardi, go'yo o'ralgan energiyani ushlab turgandek."
      ],
      [
        "RUBBING HANDS ON PALMS","Rubbing our fingers across the palm is a pacifier.  We can rub the palm either with the fingertips of the same hand or against the opposite hand.",
        "QO'LLARNI  SILAMOQ","Barmoqlarimizni kaft bo'ylab ishqalash tinchlantiruvchi hisoblanadi. Biz kaftni bir xil qo'lning barmoq uchlari bilan yoki qarama - qarshi qo'l bilan ishqalashimiz mumkin."
      ],
      [
        "TEEPEE FINGER RUB","When people feel concern, stress, anxiety, or fear, they might pacify themselves by rubbing their straightened interlaced fingers back and forth against one another.",
        "QOVUSHGAN BARMOQLAR","Odamlar tashvish, stress, yoki qo'rquvni his qilganda, ular bir - biriga qovushtirilgan barmoqlarini oldinga va orqaga olish orqali o'zlarini tinchlantirishlari mumkin."
      ],
      [
        "HAND ON LEG, ELBOW OUT","Sitting with a hand on the leg, elbow out, usually indicates high confidence. As this behaviour comes and goes as people converse, we can observe a person\u2019s self-assurance waxing and waning.",
        "QO'LNI OYOQQA, TIRSAKNI TIRSAKKA TIRASH","Qo'lni oyoqqa qo'yib o'tirish, tirsagini tashqariga chiqarish odatda yuqori ishonchni bildiradi. Bu xatti - harakat odamlar suhbatlashayotganda ko\u2019rinadi.Biz bu orqali odamning o'ziga ishonchi kuchayib borayotganini va susayib borayotganini kuzatishimiz mumkin."
      ],
      [
        "FINGERS CURLING, NAILS FLICKING","Often when people are nervous, agitated, or stressed, they will curl up their fingers (usually on one hand) and flick their nails against the thumb. It is a way to pacify oneself and can be both distracting and noisy for others.",
        "BARMOQLARNI BUKMOQ, TIRNOQLARNI SILAMOQ","Ko'pincha odamlar asabiylashganda, hayajonlanganda yoki stressda bo'lganlarida, ular barmoqlarini (odatda bir qo'lda) burishadi va tirnoqlarini bosh barmog'iga tegizadi. Bu o'zini tinchlantirishning bir usuli va boshqalarni chalg'itish uchun bo'lishi mumkin."
      ],
      [
        "HAND SHAKING","The handshake is the favoured greeting behaviour in the West, appropriate in both professional and personal settings. We should remember that the custom of shaking hands is not universal; in some cultures, a bow or a kiss on the cheek might be more appropriate. Nevertheless, a good handshake begins with good eye contact, a smile if appropriate, and the arm extended with a slight bend at the elbow. The fingers approach the other person\u2019s hand pointing downward, the hands clasp with equal pressure engulfing each other - this allows for the release of the hormone oxytocin (furthers social bonding) - and after a second or so the hands are released.",
        "QO'L BERIB KO'RISHMOQ","G'arbda qo'l berib ko'rishish professional muhit va shaxsiy sharoitlarda mos keladigan salomlashish harakatidir. Shuni yodda tutishimiz kerakki, qo'l berib ko'rishish odati universal emas; ba'zi madaniyatlarda ta'zim yoki yonoqdan o'pish odati ham bor. Shunga qaramay, xayrihoh ko'rishish  oldin ko'z bilan aloqa qilishdan boshlanadi, Barmoqlar boshqa odamning qo'lini pastga qaratib yaqinlashadi, qo'llar bir xil bosim bilan qisiladi  bir - birini qamrab oladi - bu oksitotsin gormonini chiqarishga imkon beradi va bir soniyadan keyin qo'llar bo'shatiladi"
      ],
      [
        "NAMASTE","In this traditional Indian greeting, the hands are placed palms together directly in front of the chest, fingers pointed upward, elbows out, sometimes followed with a small bow or forward lean and a smile. It is used as a formal greeting - in a sense it replaces the handshake. This gesture has a deeper meaning than the Western handshake and must be received with respect.",
        "NAMASTE","Hindistonning an'anaviy salomlashuvida qo\u02bbllar kaftlar to\u02bbg\u02bbridan - to\u02bbg\u02bbri ko\u02bbkrak oldiga qo\u02bbyiladi, barmoqlar yuqoriga qaratiladi, tirsaklar tashqariga qaratiladi, ba\u02bczan esa biroz ta\u02bczim yoki oldinga egilib, tabassum bilan kuzatiladi. U rasmiy salomlashish sifatida ishlatiladi - qaysidir ma'noda qo'l berib ko'rishish o'rnini bosadi.  Ushbu salomlashuv turi G'arbning qo'l siqishidan ko'ra chuqurroq ma'noga ega va uni hurmat bilan qabul qilish kerak."
      ],
      [
        "OK SIGN (PRECISION CUE)","When talking about something very precise, speakers will hold the tip of the index finger and thumb together to make a circle - what we in America call the OK sign. This gesture is very common throughout the Mediterranean and is used to emphasize a specific point while speaking. In the United States, we also use this gesture to indicate agreement or that things are fine or OK. Note that in other countries, such as Brazil, this sign can be erroneously interpreted as a vulgar display connoting an orifice.",
        " 'OK\u201d BELGISI "," Juda aniq bir narsa haqida gapirganda, ma'ruzachilar ko'rsatkich barmog'i va boshbarmog'ining uchini bir \u2013 biriga bog'lab, aylana hosil qiladilar \u2013 Amerikada buni OK belgisi deb atashadi. Ushbu imo \u2013 ishora O'rta yer dengizi bo'ylab juda keng tarqalgan va nutq paytida ma'lum bir fikrni ta'kidlash uchun ishlatiladi. Qo'shma Shtatlarda bu imo \u2013 ishorani kelishuv yoki ishlaryaxshi yoki yaxshi emas ekanligini ko'rsatish uchun ham ishlatiladi. Ammo e'tibor berish kerakki, boshqa mamlakatlarda, masalan Braziliyada, bu belgi noto'g'ri vulgar tushuncha sifatida talqin qilinishi mumkin."
      ],
      [
        "RING PLAYING","Playing with a wedding band by twirling it or taking it off and putting it on - is a repetitive behaviour that people sometimes use to calm their nerves or pass the time. It is not, as some people claim, an indication of marital unhappiness. It is merely a Wave - when you move your hand (or hands) in the air to attract attention or to say goodbye",
        "UZUK O'YNAMOQ","nikoh uzugini aylantirib o'ynash yoki yechib qo'yish - odamlar ba\u2019zan asablarini tinchlantirish yoki vaqt o'tkazish uchun takrorlanadigan xatti - harakatlardir. Ba'zi odamlar ta'kidlaganidek, bu nikoh baxtsizligining belgisi emas. Bu shunchaki o'z - o'zini tinchlantiradigan takrorlanadigan xatti - harakatlardir."
      ],
      [
        "TICKLE","lightly touch someone to make them laugh (because their skin is sensitive)",
        "QITIQLAMOQ","kulish uchun kimgadir engil teginish (chunki uning terisi sezgir)"
      ],
      [
        "PAT","touch someone or something lightly with your open hand",
        "YENGIL SILAB QO'YMOQ","ochiq qo'lingiz bilan kimgadir yoki biror narsaga engil teginish"
      ],
      [
        "SLAP","use your open hand to hit someone or something",
        "TARSAKI TUSHIRMOQ","ochiq qo'lingiz bilan kimgadir yoki biror narsaga urish uchun foydalanish"
      ],
      [
        "PUNCH","use your closed hand (fist) to hit someone or something",
        "MUSHT  O'QTALMOQ","kimgadir yoki biror narsaga urish uchun yopiq qo'lingizdan (mushtingizdan) foydalanish"
      ],
      [
        "RIP","tear something using both hands",
        "YIRTIB TASHLAMOQ","ikkala qo'l bilan biror narsani yirtib tashlash"
      ],
      [
        "SCRATCH","use your nails on something",
        "TIRNAMOQ","tirnoqlarni biror narsaga ishlatish."
      ],
      [
        "GRAB","take something quickly with your hand",
        "CHANGALLAB USHLAMOQ","Qo'lingiz bilan tezda biror narsani olish"
      ],
      [
        "FLICK","move something small away from you using your thumb and middle finger self - soothing repetitive behaviour.",
        "CHERTMOQ","bosh barmog' va o'rta barmog' bilan takrorlanuvchi xatti - harakatlaringiz yordamida sizdan kichik bir narsani uzoqroqqa olib borish."
      ],
      [
        "STROKE","use long movements of your hand down someone's skin (or an animal's fur)",
        "SILAB QO'YMOQ","qo'l bilan birovning terisini (yoki hayvonning mo'ynasini) uzoq silash."
      ],

      [
        "CHEST HEAVING, RAPID BREATHING","A heaving chest and rapid breathing usually indicate stress, concern, fear, worry, or anger. Context of course is important as there are many reasons for this behaviour, including age, recent physical exertion, anxiety, or even a heart attack..",
        "KO'KRAK QAFASINING KO'TARMOQ,TEZ-TEZ NAFAS OLMOQ","odatda stress, tashvish, qo'rquv, xavotir yoki g'azabni ko'rsatadi. Albatta, kontekst juda muhim, chunki bu xatti - harakatning ko'plab sabablari bor, jumladan yoshni hisobga olish kerak, jismoniy zo'riqish, tashvish yoki hatto yurak xuruji."
      ],
      [
        "PALM ON CHEST","In many cultures, people place the palm on the chest to convey sincerity and as a gesture of goodwill when meeting others. In my experience, both the honest and the deceptive will do this behaviour and so we should treat the behaviour as neutral. It is neither evidence of honesty nor sincerity though it may be offered as such.",
        "QO'L KAFTINI KO'KRAGIGA QO'YMOQ","Ko'p madaniyatlarda odamlar boshqalar bilan uchrashganda samimiylikni bildirish va xayrixohlik ishorasi sifatida qo'l kaftini ko'kragiga qo'yishadi. Mening tajribamga ko'ra, to'g'riso'z ham, yolg'onchi ham bu xatti - harakatni qiladi va shuning uchun biz xatti - harakatlarga neytral munosabatda bo'lishimiz kerak."
      ],
      [
        "PULLING CLOTHING TO VENTILATE","Pulling on the front of a shirt or other garment serves to ventilate the wearer. Whether the shirt is held out at the collar for a few seconds away from the neck or repeatedly plucked at and pulled away, this behaviour serves to relieve stress, as do most ventilating behaviours. It is a good indicator that something is wrong. Obviously, in a hot environment, ventilating behaviours might simply be associated with the heat rather than stress.",
        "SHAMOLLATISH UCHUN KIYIMNI SILKITMOQ","Ko'ylakning old qismidan tortib yelpinib turish odamni ventilyatsiya qilish uchun xizmat qiladi, yoki stressni engillashtirishga ham bajariladigan hatti harakatdir. Shubhasiz, issiq muhitda ventilyatsiya xatti - harakatlari stress emas, balki issiqlik bilan bog'liq bo'lishi mumkin. Ammo kishi asabiylashganda tabiiy ravishda isib ketgandek bo'ladi."
      ],
      [
        "PLAYING WITH ZIPPER","Playing with the zipper on a sweatshirt or jacket is a way of pacifying oneself when nervous or tense. Students might do this before a test if they are concerned and poker players do it also as they worry about their diminishing bankroll. Please note that it is a pacifying behaviour and it can also be a way of dealing with boredom",
        "ZANJIRSIMON QADAGICH BILAN O'YNAMOQ","Svitteryokikurtkadafermuarbilano'ynashasabiyyokizo'riqishpaytidao'zinitinchlantirishusulidir. Talabalar buni testdan oldin qilishlari mumkin, agar ular xavotirda bo'lsalar va poker o'yinchilari ham bank o'tkazmalari kamayib borayotganidan tashvishlansalar. E'tibor bering, bu tinchlantiruvchi xatti - harakatlar va zerikish bilan kurashishning bir usuli ham bo'lishi mumkin"
      ],
      [
        "LEANING AWAY","Leaning away from a person is a form of distancing. If we are sitting next to someone who says something objectionable, we may subtly inch away from him. Rarely do we realize just how far away we lean from others when we find them disagreeable.",
        "UZOQLASHMOQ","birorkishidanuzoqlashishbuo'shodamdannariroqdabo'lish. Agar biz nomaqbul so'zlarni aytgan odamning yonida o'tirsak, biz undan biroz uzoqlashishimiz mumkin. Ba\u2019zi hollarda biz boshqalardan norozi bo'lsak, ulardan uzoqlashamiz."
      ],
      [
        "SITTING FORWARD","When we are ready to negotiate in good faith or compromise, we tend to move from a leaning-back position to a sitting-forward position. This often telegraphs that we have made up our minds to move forward.",
        "OLDINDA O\u2019TIRMOQ","Biz muzokaralar olib borishga yoki murosaga kelishga tayyor bo'lsak, biz orqaga egilgan holatdan oldinga o'tirish holatiga o'tishga moyil bo'lamiz. Bu ko'pincha biz oldinga borishga qaror qilganimizni bildiradi."
      ],
      [
        "DOUBLING OVER","People in emotional turmoil might bend forward at the waist while seated or standing, as though experiencing intestinal distress. Usually, they do this with their arms tucked across their stomach. We see this behaviour in hospitals and anyplace else where people might receive especially bad or shocking news.",
        "EGILIB, IKKI BUKILIB QOLMOQ","Emosional tartibsizlikda bo'lgan odamlar o'tirgan yoki tik turgan holda, xuddi ichak og'rig'ini boshdan kechirayotgandek, bellarida oldinga egilib qolishi mumkin. Odatda ular buni qo'llarini qorin bo'shlig'iga bog'lab qilishadi. Biz bunday xatti - harakatni kasalxonalarda va odamlar ayniqsa yomon yoki hayratlanarli yangiliklarni eshitgan holatlarda ko'ramiz."
      ],
      [
        "FETAL POSITION","Under extreme psychological stress people might enter the fetal position. This is sometimes seen during intense arguments between couples, where one partner is so overwhelmed with emotions she will bring her knees up and sit in the fetal position - silent - to deal with the stress. She might also gather a pillow or some other object to hold against her belly .",
        "ONA QORNIDAGI HOMILA HOLATIDA BO\u2019LISH","Haddan tashqari psixologik stress ostida odamlar ona qornidagi holatiga kirishlari mumkin. Bu ba'zida er - xotinlar o'rtasidagi urish janjal mojarosi paytida ko'rinadi, bu erda ayniqsa ayollar hissiyotlarga berilib, stressni engish uchun tizzalarini ko'tarib, homila holatida - jim o'tiradi. U qornini ushlab turish uchun yostiq yoki boshqa narsalarni ham quchoqlashi mumkin"
      ],
      [
        "BODY CHILL","Stress can cause individuals to feel cold in an otherwise comfortable environment. This is an autonomic response, in which the blood goes to the larger muscles, away from the skin, when we are threatened, stressed, or anxious, to prepare us to either run or fight.",
        "SOVQOTMOQ","Stress odamlarda sovuqni his qilishiga olib kelishi mumkin. Bu tanamizning avtomatik javob bo'lib, qonimiz keng mushaklarga tarqaladi. Bu holat stress yoki xavotirda tushganimizda bo'ladi."
      ],
      [
        "WALKING BEHAVIOURS","The way we walk communicates a lot. Some walks are intentionally sexy (Marilyn Monroe\u2019s for example), while others show strength and determination (John Wayne\u2019s). Some walks suggest that a person is on an important task, while others are more relaxed and casual, or intended to get a person noticed, like John Travolta\u2019s character\u2019s walk in the opening sequence of the movie Saturday Night Fever. And it is not just how we walk, sometimes we communicate our interest in others by how frequently we walk by to get a good look or to get noticed.",
        "YURISH  ODOBI","Bizning yurish tarzimiz ko'p narsalarni aytib beradi. Ba'zi yurishlar jozbali ko'rinish uchun (masalan, Merilin Monro), boshqalari esa kuch va qat'iyatni ko'rsatadi (Jon Ueyn). Ba'zi yurishlar odam muhim vazifani bajarayotganini ko'rsatadi, boshqalari esa tinchroq va tasodifiy yoki odamning e'tiborini jalb qilish uchun mo'ljallangan, masalan, \"Shanba kechasi isitmasi\" filmining boshlanish ketma - ketligidagi Jon Travolta qahramonining yurishi. Va bu nafaqat qanday yurishimiz, balki ba'zida boshqalar bizga e\u2019tibor qilishlari uchun qanchalik tez - tez yurganimiz orqali bildiramiz."
      ],
      [
        "SITTING behaviourS","Each culture sits differently. In some parts of Asia, people squat, buttocks low and knees high, while waiting for a bus. In other cultures, the legs are intertwined as you sit, as Gandhi did while working a loom. In Europe and elsewhere, people often sit with one leg draped over the opposite knee so that the sole points downward. In America, you will see a combination of sitting styles, including the figure 4, where the ankle is placed on top of the opposite knee, with the foot noticeably high. When it comes to sitting behaviours, it is important to follow both local customs as well as those of your host.",
        "O'TIRISH ODOBI","Har bir madaniyat boshqacha o'tiradi. Osiyoning ba'zi hududlarida odamlar avtobus kutayotganda cho'kkalab, dumbalari past va tizzalarini baland ko'taradilar. Evropa va boshqa joylarda odamlar ko'pincha bir oyog'ini qarama - qarshi tizzaga qo'yib o'tirishadi. Amerikada siz o'tirish uslublarining kombinatsiyasini, bu erda to'piq qarama - qarshi tizzaning tepasida joylashgan, oyog'i sezilarli darajada baland. O'tirish xulq - atvori haqida gap ketganda, mahalliy urf - odatlarga ham, uy egasining ham odatlariga rioya qilish muhimdir."
      ],
      [
        "HOLDING LEGS TOGETHER, SITTING","Our level of confidence is often revealed by how we sit. Legs that suddenly come together suggest insecurity. In part, of course, the way we sit is cultural, but some people will move their legs with great reliability depending on how they feel emotionally, revealing their degree of self-assurance. Keep in mind that in many places, women will sit with their knees together as a matter of social convention.",
        "OYOQLARNI BIRGA TUTIB O'TIRMOQ","O'ziga bo'lgan ishonch darajamiz ko'pincha qanday o'tirganimizdan aniqlanadi. To'satdan birlashadigan oyoqlar ishonchsizlikdan dalolat beradi. Qisman, albatta, bizning o'tirish tarzimiz madaniyatimiz bilan bog'liq, ammo ba'zi odamlar o'zlarining his - tuyg'ulariga qarab oyoqlaring ishonchlari bilan harakatga keltiradilar va o'zlarining ishonch darajasini ochib beradilar. Shuni yodda tutingki, ba\u2019zi joylarda ayollar ijtimoiy holatda tizzalari bilan o'tirishadi."
      ],
      [
        "LEGS SPREADING APART, SITTING","Legs that are suddenly set wider apart while sitting during an interview or a conversation suggest greater comfort or confidence. This behaviour is more pronounced in men.",
        "OYOQLARNI KENG YOYIB O'TIRMOQ","Suhbat chog'ida o'tirganda to'satdan kengroq ajratilgan oyoqlar ko'proq qulaylik yoki ishonchni bildiradi. Bu xatti - harakatlar erkaklarda ko'proq namoyon bo'ladi."
      ],
      [
        "ANKLES LOCKING","While sitting down, especially in a formal setting, people will often bring their ankles together and interlock them. I look for people who suddenly perform this gesture when something controversial or difficult is being discussed; it usually signals that they are restraining themselves, expressing reservation, or showing hesitation or psychological discomfort.",
        "TO'PIQLARNI BIR-BIRIGA BOG'LAB O'TIRMOQ","O'tirganda, ayniqsa rasmiy sharoitda, odamlar ko'pincha to'piqlarini bir - biriga bog'lab o'tirishadi. Ularda ikkilanish yoki psixologik noqulaylik ko'rsatishlari haqida signal beradi."
      ],
      [
        "KNEE CLASPING, LEANING BACK","A firm knee clasp can signify that a person is self - restraining. You often see this among nervous job applicants. The feet are on the ground, the knees tightly clasped, and because of stress, the person is leaning back rather rigidly.",
        "TIZZALARNI BIR BIRIGA TEKKIZIB O'TIRMOQ","Tizzani qattiq qisish odamning o'zini tutib turishini bildirishi mumkin. Siz buni asabiy ishga da'vogarlar orasida tez - tez uchratasiz. Oyoqlari yerda, tizzalari mahkam bog'langan va stress tufayli odam qattiq orqaga suyanib turadi."
      ],
      [
        "CROSSING LEG AS BARRIER, SITTING","Crossing a leg in such a way that it acts as a barrier while sitting - with the knee high over the opposite leg - suggests that there are issues, reservations, or social discomfort. Whether at home or at work, this behaviour accurately reflects feelings. You often see this occur the instant an uncomfortable topic is brought up.",
        "OYOQLARNI CHALISHTIRIB O'TIRMOQ","O'tirganda to'siq vazifasini o'taydigan tarzda tizzani qarama - qarshi oyog'iga ko'tarib o'tirish muammolar, yoki ijtimoiy noqulaylik borligini ko'rsatadi. Uyda yoki ishda, bu xatti - harakat his - tuyg'ularni aniq aks ettiradi. Ko'pincha bu noqulay mavzu ko'tarilganda sodir bo'lishini ko'rasiz."
      ],
      [
        "LEG RUBBING","Rubbing the tops of our quadriceps - a gesture known as a leg cleanser - works to pacify us when we are under high stress. It can be easy to miss, since it usually occurs under a table or desk.",
        "OYOQLARNI ISHQALAMOQ","oyoqni yuqori qismini ishqalash, bu yuqori stress ostida bo'lganimizda bizni tinchlantirishga yordam beradi. Buni ko'rmay qolish oson bo'lishi mumkin, chunki u odatda stol yoki stol ostida qilinadi."
      ],
      [
        "KNEE RUBBING","We see repeated scratching or rubbing of the area just above the knee in people who are feeling stress or anticipating something exciting. Like most repetitive behaviours, it serves to pacify, assuaging the excitement or tension.",
        "TIZZALARNI SILAMOQ","Stressni his qilgan yoki hayajonli narsalarni kutayotgan odamlarda tizzadan yuqorisidagi joyni qayta - qayta tirnash yoki ishqalashni ko'ramiz. Aksariyat takrorlanadigan xatti - harakatlar singari, u hayajon yoki taranglikni tinchlantirishga xizmat qiladi."
      ],
      [
        "ANKLE SCRATCHING","In tense situations, it is not unusual for a person to scratch at the ankles. It serves both to relieve stress and to ventilate the skin. We often see this in high-stakes situations such as a large pot in a poker game or a forensic interview when a difficult question is asked.",
        "TO'PIQ QICHITMOQ","Og'riqli vaziyatlarda odamning to'piqlarini tirnashi odatiy hol emas. Bu stressni yo'qotish va terini silash uchun ham xizmat qiladi. Biz buni ko'pincha poker o'yinida qiyin savol berilganda ko'ramiz."
      ],
      [
        "KNEE FLEXING","This behaviour is performed by quickly flexing the knees forward while standing, which causes the person to sink rather noticeably. Usually, the person immediately recovers. This is a very juvenile behaviour, almost akin to the beginnings of a temper tantrum. I have seen grown men do this at the car - rental counter when told the car they requested is not available.",
        "TIZZA BUKMOQ","Bu harakat tik turgan holda tizzalarni tez oldinga bukish orqali amalga oshiriladi, bu esa odamning sezilarli darajada cho'kishiga olib keladi. Odatda odam darhol tiklanadi. Bu deyarli jahldorlik boshlanishiga o'xshaydi va kishi so'ragan narsasi amalga oshmaganda bu harakatni tabiiy ravishda bajaradi."
      ],
      [
        "ANKLE QUIVERING","Some people while standing will repetitively twist or quiver their foot to the side at the ankle, in a show of restlessness, agitation, animosity, or irritation. This is very perceptible because the shaking causes the whole body to move.",
        "TO'PIQ QAYIRMOQ","Ba'zi odamlar tik turganlarida bezovtalanish, qo'zg'alish, adovat yoki g'azablanish ko'rinishida oyoqlarini to'pig'i tomoniga qayta - qayta burishadi yoki qayirishadi. Bu juda seziladi, chunki silkinish butun tanani harakatga keltiradi."
      ],
      [
        "KNEE-HIGH SELF-HUGGING","We often see teenagers hug their legs by bringing their knees up to chest level. This can be very comforting and helps them enjoy a moment as they listen to music or to help them deal with emotions.",
        "TIZZALARNI QUCHOQLAB O'TIRMOQ","Biz ko'pincha o'smirlarning tizzalarini ko'krak tomonga ko'tarib, oyoqlarini quchoqlashganini ko'ramiz. Bu ularga tasalli berishi mumkin va ularga musiqa tinglash yoki his - tuyg'ularini engishga yordam berish uchun o'sha lahzadan zavq olishlariga yordam beradi."
      ],
      [
        "STANDING LEG CROSSING (COMFORT)","We cross our legs while standing when we are alone or if we feel comfortable with the people around us. The minute someone causes us the slightest psychological discomfort, we will uncross the legs in case we need to quickly distance or defend ourselves from the offending person.",
        "TIK TURGAN HOLDA OYOQ KESISHIB TURMOQ (QULAYLIK)","Yolg'iz qolganimizda yoki atrofimizdagi odamlar bilan o'zimizni qulay his qilsak, tik turgan holda oyoqlarimizni kesib o'tamiz. Kimdir bizga ozgina noqulaylik tug'dirsa, biz tezda oyoqlarimizni o'z holiga qaytarib nolmal holatda tik turamiz."
      ],
      [
        "LEG KICKING, SITTING","A leg crossed over the knee that goes from shaking or twitching (repetitive movement) to sudden kicking up and down after a question is asked indicates high discomfort with the question. This is not a pacifier, unless the person does it all the time. It is a subconscious act of kicking away something objectionable.",
        "O'TIRGAN HOLATDA TEPMOQ","Tizza ustida ko'ndalang o'tgan oyog'ini ko'tarib tepilishgacha bo'lgan holat, savol - javob bilan bog'liq yuqori noqulaylikdan dalolat beradi. Bu tinchlantiruvchi harakat emas, odatda kuchli salbiy his - tuyg'ular bilan bog'liq."
      ],
      [
        "JUMPING (JOY)","Positive emotions drive this gravity-defying behaviour that is displayed around the world. Primates also will jump for joy, much like humans do, when they sense they are about to get a treat. Our limbic system, the emotional centre of the brain, directs this behaviour automatically, which is why when a player scores a point spectators jump up all at once, without being told to.",
        "QUVONCHDAN SAKRAMOQ","Ijobiy his - tuyg'ular butun dunyo bo'ylab namoyon bo'ladigan tortishish kuchiga qarshi harakatni boshqaradi. Primatlar ham xuddi odamlarga o'xshab, o'zlarini noz - ne'matga ega bo'lishni his qilganlarida, quvonchdan sakrashadi. Bizning qo'l - oyoqimiz tizimi, miyaning hissiy markazi, bu xatti - harakatni avtomatik ravishda boshqaradi, shuning uchun o'yinchi ochko to'plaganida, tomoshabinlar bir vaqtning o'zidag'ayrioddiy ravishda sakrab turishadi."
      ],
      [
        "UNCOOPERATIVE LEGS  AND  FEET","Children and sometimes adults will protest with their feet by dragging them, kicking, twisting, or going dormant turning themselves into a dead weight. Children do this when they refuse to go someplace they don\u2019t want to go to and often you will see adults peacefully resisting arrest doing the same. Their legs are clearly and unequivocally demonstrating how they truly feel about something.",
        "OYOQLARNI SUDRAB YURMOQ","Bolalar va ba'zan kattalarularni sudrab, tepish, burish yoki uyquga ketish orqali oyoqlari bilan norozilik bildirish va o'zlarini o'lik vaznga aylantirish. Bolalar buni o'zlari istamagan joyga borishdan bosh tortganlarida qilishadi va ko'pincha kattalarning hibsga olishga tinch qarshilik ko'rsatayotganini ko'rasiz. Ularning oyoqlari bir narsaga nisbatan qanday his qilishlarini aniq va aniq ko'rsatib turibdi."
      ],
      [
        "KICK","use your feet to make something move",
        "TEPMOQ","biror narsani harakatga keltirish uchun oyoqlardan  foydalanish"
      ],
      [
        "TAP","move your feet to the beat of music",
        "LIKILLATMOQ","oyoqlarni musiqa ritmiga qarab harakatlantirish"
      ],
      [
        "PADDLE","walk in the sea with bare feet (but still wearing trousers, etc)",
        "YALANG OYOQ YURMOQ","yalang oyoq bilan dengizda yurish (lekin  shim kiygan va hokazo)"
      ],
      [
        "AMBLE","walk at a slow, leisurely pace. They ambled along for miles.",
        "SEKIN YURMOQ","bo'shashmasdan yurish. Ular to'xtamasdan yurib ancha masofani bosib o'tishdi."
      ],
      [
        "CRAWL","move slowly with the body close to the ground or on hands and knees. A baby crawls before he can walk.",
        "EMAKLAMOQ","tanani erga yaqin yoki qo'llar va tizzalar bilan sekin harakatlanishi. Bola yurishdan oldin emaklaydi."
      ],
      [
        "CREEP","to move very quietly and carefully, often with your body in a low position so that nobody will notice you. He crept down the stairs hoping that nobody would wake",
        "O'RMALAB YURMOQ","hech kim sizni sezmasligi uchun juda jim va ehtiyotkorlik bilan, ko'pincha tanangizni past holatda harakatlanishi.( U hech kim uyg'onmaydi degan umidda zinadan pastga o'rmalab tushdi)"
      ],
      [
        "DART","move quickly and suddenly in the specified direction. She darted away when I came in.",
        "YUGURMOQ","Tez va to'satdan belgilangan yo'nalishda harakatlanish. Men kirganimda u yugurib ketdi."
      ],
      [
        "DASH","move quickly and suddenly, rush. I must dash or I'll miss the train.",
        "SHOSHILIB KETMOQ","tez va to'satdan harakatlanish, shoshilish. (Men yugurishim kerak, aks holda poyezdni o'tkazib yuboraman)."
      ],
      [
        "EDGE","move gradually with small movements. Paul decided to edge away from the crowd.",
        "SEKIN UZOQLASHMOQ","kichik harakatlar bilan asta - sekin harakatlanish. (Pavlus olomondan uzoqlashishga qaror qildi)."
      ],
      [
        "FROGMARCH","force somebody to walk by holding his arms tightly by his side, usually because of bad behaviour. The prefect frogmarched the boy to the detention room",
        "SUDRAMOQ","Odatda bu harakat biror nojo'ya harakat kilgan kishining qo'lidan sudrab olib ketilganda islatiladi. (Maktabdagi navbatchi bolaning qo'lidan sudrab qamoqxonaga olib ketdi.)"
      ],
      [
        "HIKE","take a long walk in the mountains or countryside, as an adventure. The group hiked up to the top of the hill.",
        "SAYOHAT QILMOQ","tog'larda yoki qishloqda sarguzasht sifatida uzoq vaqt sayr qilish. Guruh tepalikning tepasiga ko'tarildi."
      ],
      [
        "HOBBLE","walk with difficulty. The old man hobbled along the street with the aid of his stick.",
        "QIYINCHILIK BILAN YURMOQ","(Chol tayog'iga suyanib ko'cha bo'ylab sayr qildi)."
      ],
      [
        "HOP","move by jumping on one foot. The man hopped down the road after hurting his foot.",
        "SAKRAMOQ","bir oyoqda sakrab harakatlanish. Erkak oyog'i og'riganidan keyin yo'l bo'ylab sakrab tushdi."
      ],
      [
        "JOG","run slowly and steadily, as a way of exercising. She goes jogging every day.",
        "LO'KILLAB YURMOQ"," mashq qilish usuli sifatida sekin va barqaror yugurish.( U har kuni yuguradi.)"
      ],
      [
        "LIMP","to walk in an uneven way because you have hurt your leg or foot. He fell and twisted his ankle and limped home in a great pain.",
        "OQSOQLANISH","oyog'ini shikastlagani uchun notekis yurish. (U yiqilib, to'pig'ini burab qoldi va qattiq og'riqdan oqsoqlanib uyga qaytdi)."
      ],
      [
        "LOLLOP","run with long awkward steps. The dog came lolloping down the path.",
        "CHO'KKALAB YURISH","uzoq noqulay qadamlar bilan yugurish. (It yo'l bo'ylab cho'kkalab keldi)."
      ],
      [
        "LOPE","run with long steps. The man loped off after the ball.",
        "YUGURISH","katta qadamlar bilan yugurish. Erkak to'pdan keyin yiqilib tushdi."
      ],
      [
        "LUNGE","make a sudden movement towards somebody or something. The boxer lunged forward and grabbed his opponent by the arm.",
        "TASHLANMOQ","hamla qilish kimgadir yoki biror narsaga to'satdan harakat qilish. (Bokschi oldinga otib raqibining qo'lidan ushlab oldi)."
      ],
      [
        "LURCH","stagger. The drunken man was lurching along the street.",
        "GANDIRAKLAB YURMOQ","chayqalib yurish. Mast odam ko'cha bo'ylab tebranardi."
      ],
      [
        "MARCH","walk with regular steps of equal length. Demonstrators marched through the streets of the city.",
        "SHAXDAM YURMOQ","bir xil uzunlikdagi muntazam qadamlar bilan yurish. (Namoyishchilar shahar ko'chalari bo'ylab yurishdi)."
      ],
      [
        "MEANDER","walk in a slow, relaxed way instead of taking the most direct way possible. (Rivers also meander).As I was sitting in the park, I watched as couples seemed to meander around happily.",
        "DAM OLISH UCHUN AYLANIB YURMOQ","iloji boricha to'g'ridan - to'g'ri yo'ldan emas, sekin, bo'shashgan tarzda yuring. (Daryolar ham aylanib o'tadi).Men bog'da o'tirganimda, er - xotinlarning baxtiyorlik bilan aylanib yurganlarini kuzatdim."
      ],
      [
        "MOOCH","wander, walk slowly without any purpose. John mooched about the shops.",
        "MAQSADSIZ YURISH","sekin yurinsh. Jon do'konlar oldida maqsadsiz kezdi.."
      ],
      [
        "PACE","walk with regular steps. He paced up and down the platform, waiting for the train.",
        "TEZLIK","muntazam qadamlar bilan yurish. U poyezdni kutayotib, perronda yuqoriga va pastga qadam tashladi."
      ],
      [
        "PAD","walk softly and quietly. The child padded barefoot down the stairs.",
        "XOTIRJAM YURMOQ","sekinlik bilan va jim yurinsh. (Bola yalangoyoq zinadan sekin pastga tushdi)."
      ],
      [
        "PADDLE (GB), WADE (US)","walk for pleasure without shoes or socks in water that is not very deep. The children were paddling in the lake.",
        "YALANGOYOQ YURMOQ","juda chuqur bo'lmagan suvda poyabzal yoki paypoqsiz zavqlanish uchun yurish. (Bolalar ko'l bo'yida yalangoyoq yurishardi)."
      ],
      [
        "PARADE","walk or march together to celebrate or protest. Demonstrators paraded through the streets of the city.",
        "NAMOYISHDA YURMOQ","nishonlash yoki norozilik bildirish uchun birga yurish. Namoyishchilar shahar ko'chalari bo'ylab yurishdi."
      ],
      [
        "PLOD","walk with heavy steps or with difficulty. Labourers plodded home through the muddy fields.",
        "ZO'RG'A YURMOQ","Og'ir qadamlar bilan yoki qiyinchilik bilan yurish. Ishchilar loyqa dalalar bo'ylab uyga yugurishdi."
      ],
      [
        "PRANCE","walk with high steps or large movements, confidently. She pranced around her room, pretending to be an actress.",
        "VIQOR BILAN YURMOQ","shaxdam qadamlar yoki katta harakatlar bilan, ishonchli tarzda yurish. U o'zini aktrisaga o'xshatib, xonasini aylanib chiqdi."
      ],
      [
        "PROWL","to walk or move quietly, in a suspicious way because you are involved in a criminal activity or you are looking for something. (around/about). Someone was prowling about outside the house, so I called the police.",
        "HIYLA QILIB YURMOQ","jimgina, shubhali tarzda, jinoiy faoliyatda ishtirok etganingiz yoki biror narsa qidirayotganingiz uchun yurish yoki harakat qilish. (atrofida/haqida).Kimdir uy tashqarisida aylanib yurgan edi, shuning uchun men politsiyani chaqirdim."
      ],
      [
        "RAMBLE","walk for pleasure with no particular destination. He likes rambling around in the country.",
        "QISHLOQDA SAYR QILMOQ","ma'lum bir manzilni ko'zlamasdan zavqlanish uchun yurish. U shahar tashqarisida sayr qilishni yaxshi ko'radi."
      ],
      [
        "ROAM","wander. They roamed through the streets for hours.",
        "YURMOQ","sayr qilmoq. Ular ko'chalarda soatlab yurishdi."
      ],
      [
        "RUSH","hurry; move quickly because you need to get somewhere soon. She was late so she decided to rush off down the hall.",
        "SHOSHILMOQ","tez harakatlanish, chunki siz tezda biror joyga borishingiz kerak. U kechikdi, shuning uchun u koridordan shoshilib yurishga qaror qildi."
      ],
      [
        "SAUNTER","stroll. They sauntered around the park.",
        "SAYR QILMOQ","Ular park atrofida sayr qilishdi."
      ],
      [
        "SCRAMBLE","climb up or down, or over something quickly and with difficulty. They had to scramble up to the top of the hill to see the view.",
        "QO'L  BILAN CHIRMASHIB CHIQMOQ","yuqoriga yoki pastga yoki biror narsa ustidan tez va qiyinchilik bilan ko'tarilish. Manzarani ko'rish uchun ular tepalikning yuqorisiga chiqishlari kerak edi."
      ],
      [
        "SCURRY","move quickly with short steps, because you are in a hurry. He was late so he had to scurry off to work.",
        "ZIR YUGURMOQ","qisqa qadamlar bilan tez harakatlanish, chunki siz shoshyapsiz. U kechikdi, shuning uchun u ishga shoshilishga majbur bo'ldi."
      ],
      [
        "SCUTTLE","move quickly with short steps, because you are afraid or do not want to be seen. The mouse scuttled off when we entered the room.",
        "IRG'ISHLAMOQ","qisqa qadamlar bilan tez harakatlanish, chunki siz qo'rqasiz yoki ko'rinishni xohlamaysiz. (Biz xonaga kirganimizda sichqoncha irg'ib ketdi)."
      ],
      [
        "SCAMPER","run quickly and playfully. The children were scampering up the steps.",
        "SHOSHIB YUGURMOQ","tez va o'ynoqi yugurish. Bolalar zinapoyaga yugurishdi."
      ],
      [
        "SHUFFLE","to walk slowly by sliding your feet along instead of lifting them from the ground. The old man shuffled across the room in his slippers",
        "OYOQLARNI SUDRAB BOSMOQ","oyoqlarni erdan ko'tarish o'rniga ularni siljitish orqali sekin yurish. Chol shippagida xona bo'ylab sudralib yurdi."
      ],
      [
        "SKIP","move forward with quick steps and jumps. The child skipped with joy towards his father.",
        "O'TKAZIB YUBORMOQ","tez qadamlar va sakrashlar bilan oldinga harakatlanish. Bola xursandchilik bilan otasi tomon otlandi."
      ],
      [
        "SLIDE","move smoothly over a surface. I was sliding on the ice.",
        "SIRPANIB YURMOQ","Sirt ustida silliq harakatlanish. Men muz ustida sirpanib yurdim."
      ],
      [
        "SLIP","slide accidentally. She slipped on the ice and broke her leg.",
        "SIRPANIB KETMOQ","tasodifan siljish. U muz ustida sirpanib ketdi va oyog'ini sindirdi."
      ],
      [
        "SNEAK","go quietly and secretly to avoid being seen or heard. The boy sneaked in without paying.",
        "YASHIRINIB YURMOQ","ko'rinmaslik yoki eshitmaslik uchun jim va yashirincha borish. O'g'il pul to'lamay, yashirincha kirib keldi."
      ],
      [
        "SPRINT","run very quickly for a short distance. The kids sprinted down the stairs.",
        "CHOPIB BORMOQ","qisqa masofada juda tez yugurish. Bolalar zinadan yugurishdi."
      ],
      [
        "STAGGER","walk unsteadily as if about to fall. He was so drunk that he staggered all the way home.",
        "GANDIRAKLAB YURMOQ","xuddi yiqilib tushayotgandek yurish. U shunchalik mast ediki, uyigacha gandiraklab ketdi."
      ],
      [
        "STALK","walk proudly or angrily, with long steps. The teacher turned and stalked out of the classroom.",
        "SHAHD BILAN YURMOQ","mag'rur yoki g'azablangan tarzda, katta qadamlar bilan yurish. O'qituvchi o'girilib, sinfdan chiqib ketdi."
      ],
      [
        "STRIDE","to walk with long steps. Robert strode up to the desk and demanded to see the manager.",
        "KATTA QADAM TASHLAMOQ","shaxdam qadam bilan yurish.Robert stol oldiga kelib, menejerni ko'rishni talab qildi."
      ],
      [
        "STROLL","walk for pleasure. They strolled around the park.",
        "SAYR QILMOQ","zavqlanish uchun yurish. Ular park bo'ylab sayr qilishdi."
      ],
      [
        "STRUT","walk proudly, with the chest out and trying to look important. He strutted past us, ignoring our greeting.",
        "MAG'RUR QADAM TASHLAMOQ","ko'kragini tashqariga chiqarib, muhim ko'rinishga harakat qilish. U salomlashishimizga e\u2019tibor bermay, yonimizdan o'tib ketdi."
      ],
      [
        "STUMBLE/ TRIP","(over something): to hit your foot against something when you are walking and almost fall over. He stumbled over a tree root.",
        "QOQILIB YIQILMOQ","(biror narsa ustidan): yurganingizda oyog'ingizni biror narsaga urib, yiqilib tushish. Udaraxtildizigaqoqilibqoldi."
      ],
      [
        "TEAR","run or move quickly dangerously or carelessly. When the storm started, they tore back into the house.",
        "YUGURMOQ","xavfli yoki ehtiyotsiz tarzda tez yugurish yoki harakat qilish. Bo'ron boshlanganda, ular yana uyga kirib ketishdi."
      ],
      [
        "SWAGGER","walk proudly, strut. After winning the first prize, the player swaggered about proudly.",
        "G'URURLANIB YURMOQ","g'urur bilan, tik yurish. Birinchi sovrinni qo'lga kiritgandan so'ng, o'yinchi g'urur bilan o'ynadi."
      ],
      [
        "STUMP","walk heavily and stiffly. They stumped up the hill.",
        "QIYNALIB YURMOQ","og'ir va qattiq yurish. Ular toqqa chiqishdi."
      ],
      [
        "STUMBLE","stagger. She stumbled upstairs and into bed.",
        "QOQILMOQ","qoqilish. U yuqoriga qoqilib, karavotga yotdi."
      ],
      [
        "TIPTOE","walk on the tips of one's toes. She tiptoed to the bed so as not to wake the baby.",
        "OYOQ UCHIDA YURMOQ","oyoq barmoqlarining uchida yurish. Bolani uyg'otmaslik uchun oyoq uchida karavotga bordi."
      ],
      [
        "Toddle","walk with short unsteady steps. Her two-year-old son toddled into the room.",
        "TETAPOYA QILMOQ","qisqa beqaror qadamlar bilan yuring. Uning ikki yashar o'g'li xonaga kirdi."
      ],
      [
        "TRAMP","to walk with slow heavy steps. We had a miserable afternoon tramping across the moors in pouring rain.",
        "DAYDIB YURMOQ","sekin og'ir qadamlar bilan yurish. Yomg'ir ostida tog'larda daydib qolib tushdag'amgin bo'lib qoldik.."
      ],
      [
        "TRAMPLE","to step heavily on something or someone, causing damage or injury Somebody trampled all over my flowerbeds in the night!",
        "TOPTMOQ","biror narsaga yoki kimgadir qattiq bosish, shikast etkazish yoki jarohat etkazish. Kimdir tunda gulzorlarimni oyoq osti qildi!"
      ],
      [
        "TREK/ HIKE","make a long, difficult journey on foot. For ten days she trekked across the mountains of China.",
        "UZOQ MASOFAGA SAYOHAT QILMOQ","piyoda uzoq, mashaqqatli sayohatni amalga oshirish. O'n kun davomida u Xitoy tog'lari bo'ylab sayohat qildi."
      ],
      [
        "TRIP OVER","catch one's foot on something and stumble or fall. He tripped over the step and fell.",
        "QOQILIB YIQILMOQ","bir narsaga bosib, qoqilish yoki yiqilish. U zinapoyadan qoqilib yiqildi."
      ],
      [
        "TRIP","walk with short quick steps, usually as young girls do. The little girl tripped happily up the road.",
        "SAFAR QILMOQ","odatda yosh qizlar singari qisqa qadamlar bilan yurish. Qizcha xursand bo'lib yo'lda qoqilib ketdi."
      ],
      [
        "TRUDGE","walk slowly and with effort because one is tired. We were very tired after trudging through the deep snow for two hours.",
        "BOR KUCHINI SARFLAB YURMOQ","odam charchagandasekin va kuch bilan yurish.Ikki soat davomida chuqur qorni bosib o'tganimizdan keyin juda charchadik."
      ],
      [
        "WADDLE","walk with short steps, moving the body from one side to another, especially to talk about birds or people with fat bodies. The fat man waddled off to the restaurant for lunch.",
        "VAZMIN YURMOQ","qisqa qadamlar bilan yurish, tanani bir tomondan boshqasiga o'tkazish, ayniqsa qushlar yoki yog'li tanali odamlar haqida gapirish. Semiz odam tushlik qilish uchun restoranga yo'l oldi."
      ],
      [
        "WADE","to walk with difficulty through deep water, mud, etc. The soldiers jumped out of the boat and waded ashore.",
        "KECHIB O'TMOQ","chuqur suv, loy va hokazolar orqali qiyinchilik bilan yurish. Askarlar qayiqdan sakrab, qirg'oqqa o'tishdi."
      ],
      [
        "WANDER","move without a fixed purpose or destination. They enjoy wandering through the countryside",
        "SAYR QILMOQ","aniq maqsad yoki maqsadsiz harakat qilish. Ular qishloqda sayr qilishni yaxshi ko'radilar."
      ],
      [
        "WRITHE","to twist the body in great pain.",
        "TANANI QATTIQ BURMOQ","qattiq og'riqda tanani burish."
      ],
      [
        "WRIGGLE","to twist from side to side with short quick movements.",
        "OYOQ HARAKATINI O'ZGARTIRMOQ","qisqa tezkor harakatlar bilan u yoqdan bu tomonga burish."
      ],
      [
        "FIDGET","to move one body around restlessly so that one annoys people.",
        "CHAYQALMOQ","odamlarni bezovta qilish uchun tanani harakatlantirish."
      ]

    ];
    for(int i=0; i<=379;i++){
      toDoList[i].add("false");
    }
  }

  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}
