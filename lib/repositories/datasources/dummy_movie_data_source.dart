import '../../models/cast_member.dart';
import '../../models/genre.dart';
import '../../models/movie.dart';
import '../../models/review.dart';

/// Temporary in-memory data source standing in for the real TMDB API.
///
/// Every method matches the shape a `MovieRemoteDataSource` (backed by
/// [ApiClient]) would expose, and returns the same [Movie]/[Genre]
/// entities — so `MovieRepositoryImpl` can swap this out for the real
/// remote source later by changing a single constructor argument.
class DummyMovieDataSource {
  DummyMovieDataSource({String? language}) : _language = language;

  final String? _language;

  List<Genre> get _genres {
    final String lang = _language ?? 'en';
    final Map<int, String> names = switch (lang) {
      'ar' => {
          28: 'أكشن',
          12: 'مغامرة',
          16: 'رسوم متحركة',
          35: 'كوميدي',
          80: 'جريمة',
          18: 'دراما',
          14: 'فانتازيا',
          27: 'رعب',
          10749: 'رومانسي',
          878: 'خيال علمي',
          53: 'تشويق',
        },
      'de' => {
          28: 'Action',
          12: 'Abenteuer',
          16: 'Animation',
          35: 'Komödie',
          80: 'Krimi',
          18: 'Drama',
          14: 'Fantasy',
          27: 'Horror',
          10749: 'Liebesfilm',
          878: 'Science Fiction',
          53: 'Thriller',
        },
      'es' => {
          28: 'Acción',
          12: 'Aventura',
          16: 'Animación',
          35: 'Comedia',
          80: 'Crimen',
          18: 'Drama',
          14: 'Fantasía',
          27: 'Terror',
          10749: 'Romance',
          878: 'Ciencia ficción',
          53: 'Suspense',
        },
      'fr' => {
          28: 'Action',
          12: 'Aventure',
          16: 'Animation',
          35: 'Comédie',
          80: 'Crime',
          18: 'Drame',
          14: 'Fantastique',
          27: 'Horreur',
          10749: 'Romance',
          878: 'Science-Fiction',
          53: 'Thriller',
        },
      'hi' => {
          28: 'एक्शन',
          12: 'साहसिक',
          16: 'एनिमेशन',
          35: 'कॉमेडी',
          80: 'अपराध',
          18: 'ड्रामा',
          14: 'फंतासी',
          27: 'डरावनी',
          10749: 'रोमांस',
          878: 'विज्ञान कथा',
          53: 'थ्रिलर',
        },
      'it' => {
          28: 'Azione',
          12: 'Avventura',
          16: 'Animazione',
          35: 'Commedia',
          80: 'Crimine',
          18: 'Dramma',
          14: 'Fantasy',
          27: 'Horror',
          10749: 'Romance',
          878: 'Fantascienza',
          53: 'Thriller',
        },
      'ko' => {
          28: '액션',
          12: '모험',
          16: '애니메이션',
          35: '코미디',
          80: '범죄',
          18: '드라마',
          14: '판타지',
          27: '공포',
          10749: '로맨스',
          878: '공상 과학',
          53: '스릴러',
        },
      'nl' => {
          28: 'Actie',
          12: 'Avontuur',
          16: 'Animatie',
          35: 'Komedie',
          80: 'Misdaad',
          18: 'Drama',
          14: 'Fantasy',
          27: 'Horror',
          10749: 'Romantiek',
          878: 'Sciencefiction',
          53: 'Thriller',
        },
      'pt' => {
          28: 'Ação',
          12: 'Aventura',
          16: 'Animação',
          35: 'Comédia',
          80: 'Crime',
          18: 'Drama',
          14: 'Fantasia',
          27: 'Terror',
          10749: 'Romance',
          878: 'Ficção científica',
          53: 'Thriller',
        },
      'ru' => {
          28: 'Боевик',
          12: 'Приключения',
          16: 'Мультфильм',
          35: 'Комедия',
          80: 'Криминал',
          18: 'Драма',
          14: 'Фэнтези',
          27: 'Ужасы',
          10749: 'Мелодрама',
          878: 'Фантастика',
          53: 'Триллер',
        },
      'tr' => {
          28: 'Aksiyon',
          12: 'Macera',
          16: 'Animasyon',
          35: 'Komedi',
          80: 'Suç',
          18: 'Dram',
          14: 'Fantastik',
          27: 'Korku',
          10749: 'Romantik',
          878: 'Bilim-Kurgu',
          53: 'Gerilim',
        },
      'zh' => {
          28: '动作',
          12: '冒险',
          16: '动画',
          35: '喜剧',
          80: '犯罪',
          18: '剧情',
          14: '奇幻',
          27: '恐怖',
          10749: '爱情',
          878: '科幻',
          53: '惊悚',
        },
      _ => {
          28: 'Action',
          12: 'Adventure',
          16: 'Animation',
          35: 'Comedy',
          80: 'Crime',
          18: 'Drama',
          14: 'Fantasy',
          27: 'Horror',
          10749: 'Romance',
          878: 'Sci-Fi',
          53: 'Thriller',
        },
    };

    return <Genre>[
      Genre(id: 28, name: names[28]!),
      Genre(id: 12, name: names[12]!),
      Genre(id: 16, name: names[16]!),
      Genre(id: 35, name: names[35]!),
      Genre(id: 80, name: names[80]!),
      Genre(id: 18, name: names[18]!),
      Genre(id: 14, name: names[14]!),
      Genre(id: 27, name: names[27]!),
      Genre(id: 10749, name: names[10749]!),
      Genre(id: 878, name: names[878]!),
      Genre(id: 53, name: names[53]!),
    ];
  }

  List<Movie> get _catalog => List<Movie>.generate(30, (int index) {
    final int id = index + 1;
    final List<Genre> genres = _genres;
    final Genre primaryGenre = genres[index % genres.length];
    final Genre secondaryGenre = genres[(index + 3) % genres.length];
    return Movie(
      id: id,
      title: _titles[index % _titles.length],
      overview: _overviews[index % _overviews.length],
      posterPath: null,
      backdropPath: null,
      releaseDate: DateTime(2016 + (index % 9), (index % 12) + 1, 10),
      voteAverage: 5.5 + ((index * 37) % 45) / 10,
      voteCount: 800 + (index * 137),
      runtimeMinutes: 95 + (index % 6) * 12,
      certification: _certifications[index % _certifications.length],
      genreIds: <int>[primaryGenre.id, secondaryGenre.id],
      genres: <Genre>[primaryGenre, secondaryGenre],
    );
  });

  List<String> get _titles {
    final String lang = _language ?? 'en';
    return switch (lang) {
      'ar' => <String>[
          'حافة مدينة الغد',
          'المنارة الأخيرة',
          'أفق صامت',
          'الصعود القرمزي',
          'همسات في السكون',
          'خلف البوابة الشمالية',
          'شروق قمر ورقي',
          'المهندس الزجاجي',
          'مقطوعة للغرباء',
          'رماد الغد',
          'ابنة رسم الخرائط',
          'موسم الحديد',
          'تردد منتصف الليل',
          'ذئاب يناير',
          'غرفة الصدى',
          'ألف حريق صغير',
          'المنشق الهادئ',
          'ملح وسكون',
          'نقطة المراقبة صفر',
          'طريق الشتاء الطويل',
        ],
      'de' => <String>[
          'Die Kante der Zukunftsstadt',
          'Der letzte Leuchtturm',
          'Stiller Horizont',
          'Purpurner Aufstieg',
          'Flüstern in der Statik',
          'Hinter dem Nordtor',
          'Papiermondaufgang',
          'Der Glasarchitekt',
          'Nachtstück für Fremde',
          'Asche von morgen',
          'Die Tochter des Kartografen',
          'Eisenzeit',
          'Mitternachtsfrequenz',
          'Die Wölfe vom Januar',
          'Echoräume',
          'Tausend kleine Feuer',
          'Der stille Überläufer',
          'Salz & Statik',
          'Aussichtspunkt Null',
          'Der lange Winterweg',
        ],
      'es' => <String>[
          'El borde de la ciudad del mañana',
          'El último faro',
          'Horizonte silencioso',
          'Ascenso carmesí',
          'Susurros en la estática',
          'Más allá de la puerta del norte',
          'Luna de papel naciente',
          'El arquitecto de cristal',
          'Nocturno para extraños',
          'Cenizas del mañana',
          'La hija del cartógrafo',
          'Temporada de hierro',
          'Frecuencia de medianoche',
          'Los lobos de enero',
          'Cámara de eco',
          'Mil pequeños fuegos',
          'El desertor silencioso',
          'Sal y estática',
          'Punto de observación cero',
          'El largo camino de invierno',
        ],
      'fr' => <String>[
          'La lisière de la cité de demain',
          'Le dernier phare',
          'Horizon silencieux',
          'Ascension pourpre',
          'Murmures dans la statique',
          'Au-delà de la porte du Nord',
          'Clair de lune de papier',
          'L\'architecte de verre',
          'Nocturne pour les étrangers',
          'Cendres de demain',
          'La fille du cartographe',
          'Saison de fer',
          'Fréquence de minuit',
          'Les loups de janvier',
          'Chambre d\'écho',
          'Mille petits feux',
          'Le défecteur silencieux',
          'Sel et statique',
          'Point de vue zéro',
          'La longue route d\'hiver',
        ],
      'hi' => <String>[
          'कल के शहर का किनारा',
          'आखिरी लाइटहाउस',
          'शांत क्षितिज',
          'गहरा लाल उदय',
          'सन्नाटे में फुसफुसाहट',
          'उत्तरी द्वार के पार',
          'कागज़ का चाँद उग रहा है',
          'कांच का वास्तुकार',
          'अजनबियों के लिए निशागीत',
          'कल की राख',
          'मानचित्रकार की बेटी',
          'लोहे का मौसम',
          'आधी रात की आवृत्ति',
          'जनवरी के भेड़िये',
          'प्रतिध्वनि कक्ष',
          'हज़ार छोटी आग',
          'शांत दल-बदलू',
          'नमक और सन्नाटा',
          'वेंटेज पॉइंट जीरो',
          'लंबी सर्दी की सड़क',
        ],
      'it' => <String>[
          'Il confine della città di domani',
          'L\'ultimo faro',
          'Orizzonte silenzioso',
          'Ascesa cremisi',
          'Sussurri nella statica',
          'Oltre la porta del nord',
          'Luna di carta nascente',
          'L\'architetto di vetro',
          'Notturno per estranei',
          'Ceneri di domani',
          'La figlia del cartografo',
          'Stagione di ferro',
          'Frequenza di mezzanotte',
          'I lupi di gennaio',
          'Camera dell\'eco',
          'Mille piccoli fuochi',
          'Il disertore silenzioso',
          'Sale e statica',
          'Punto di osservazione zero',
          'La lunga strada d\'inverno',
        ],
      'ko' => <String>[
          '내일의 도시 가장자리',
          '마지막 등대',
          '고요한 지평선',
          '진홍빛 상승',
          '정적 속의 속삭임',
          '북문 너머',
          '종이 달이 뜨다',
          '유리 건축가',
          '낯선 이를 위한 야상곡',
          '내일의 재',
          '지도 제작자의 딸',
          '철의 계절',
          '한밤의 주파수',
          '1월의 늑대들',
          '에코 챔버',
          '천 개의 작은 불꽃',
          '조용한 탈주자',
          '소금과 정적',
          '밴티지 포인트 제로',
          '긴 겨울 길',
        ],
      'nl' => <String>[
          'De rand van de stad van morgen',
          'De laatste vuurtoren',
          'Stille horizon',
          'Karmozijnrode klim',
          'Fluisteringen in de ruis',
          'Voorbij de noordelijke poort',
          'Papieren maan opkomst',
          'De glasarchitect',
          'Nachtmuziek voor vreemden',
          'As van morgen',
          'De dochter van de cartograaf',
          'IJzeren seizoen',
          'Middernachtfrequentie',
          'De wolven van januari',
          'Echokamer',
          'Duizend kleine vuurtjes',
          'De stille overloper',
          'Zout & Ruis',
          'Uitkijkpunt Nul',
          'De lange winterweg',
        ],
      'pt' => <String>[
          'A borda da cidade do amanhã',
          'O último farol',
          'Horizonte silencioso',
          'Ascensão carmesim',
          'Sussurros na estática',
          'Além do portão do norte',
          'Lua de papel nascente',
          'O arquiteto de vidro',
          'Noturno para estranhos',
          'Cinzas do amanhã',
          'A filha do cartógrafo',
          'Temporada de ferro',
          'Frequência da meia-noite',
          'Os lobos de janeiro',
          'Câmara de eco',
          'Mil pequenos fogos',
          'O desertor silencioso',
          'Sal e estática',
          'Ponto de observação zero',
          'A longa estrada de inverno',
        ],
      'ru' => <String>[
          'Грань города завтрашнего дня',
          'Последний маяк',
          'Тихий горизонт',
          'Пурпурное восхождение',
          'Шепот в помехах',
          'За северными воротами',
          'Восход бумажной луны',
          'Стеклянный архитектор',
          'Ноктюрн для незнакомцев',
          'Пепел завтрашнего дня',
          'Дочь картографа',
          'Железный сезон',
          'Полуночная частота',
          'Январские волки',
          'Эхо-камера',
          'Тысяча маленьких огней',
          'Тихий перебежчик',
          'Соль и статика',
          'Точка обзора ноль',
          'Долгая зимняя дорога',
        ],
      'tr' => <String>[
          'Yarının Şehri Kıyısı',
          'Son Fener',
          'Sessiz Ufuk',
          'Kızıl Yükseliş',
          'Statikteki Fısıltılar',
          'Kuzey Kapısının Ötesi',
          'Kağıttan Ay Doğuyor',
          'Cam Mimar',
          'Yabancılar İçin Gece Müziği',
          'Yarının Külleri',
          'Haritacının Kızı',
          'Demir Mevsimi',
          'Gece Yarısı Frekansı',
          'Ocak Kurtları',
          'Yankı Odası',
          'Bin Küçük Ateş',
          'Sessiz İlticacı',
          'Tuz ve Statik',
          'Gözlem Noktası Sıfır',
          'Uzun Kış Yolu',
        ],
      'zh' => <String>[
          '明日之城的边缘',
          '最后的灯塔',
          '寂静的视界',
          '深红崛起',
          '静电中的私语',
          '北门之外',
          '纸月升起',
          '玻璃建筑师',
          '陌生人的小夜曲',
          '明日的灰烬',
          '制图师的女儿',
          '钢铁季节',
          '午夜频率',
          '一月的狼群',
          '回声室',
          '千处微火',
          '寂静的叛逃者',
          '盐与静电',
          '零点视角',
          '漫长的冬日之路',
        ],
      _ => <String>[
          'Edge of Tomorrow City',
          'The Last Lighthouse',
          'Silent Horizon',
          'Crimson Ascent',
          'Whispers in the Static',
          'Beyond the Northern Gate',
          'Paper Moon Rising',
          'The Glass Architect',
          'Nocturne for Strangers',
          'Ashes of Tomorrow',
          'The Cartographer\'s Daughter',
          'Iron Season',
          'Midnight Frequency',
          'The Wolves of January',
          'Echo Chamber',
          'A Thousand Small Fires',
          'The Quiet Defector',
          'Salt & Static',
          'Vantage Point Zero',
          'The Long Winter Road',
        ],
    };
  }

  List<String> get _overviews {
    final String lang = _language ?? 'en';
    return switch (lang) {
      'ar' => <String>[
          'عندما تصل إشارة غير مفسرة إلى موقع ناءٍ، يجب على طاقم صغير أن يقرر ما إذا كان سيجيب عليها - أو يخاطر بفقدان كل شيء جاءوا لحمايته.',
          'يتم سحب محققة فقدت مصداقيتها مرة أخرى إلى القضية الوحيدة التي لم تستطع إغلاقها، لتكتشف أن الحقيقة كانت أقرب مما تخيلت.',
          'يرث شقيقان منفصلان عمل والدهما الفاشل ويجب عليهما إعادة بناء الشركة وعلاقتهما قبل فوات الأوان.',
          'في مدينة مبنية على الأسرار، يكشف ساعي بريد عن مؤامرة تصل إلى القمة - والآن يريد الجميع ما يحمله.',
        ],
      'de' => <String>[
          'Wenn ein unerklärliches Signal einen abgelegenen Außenposten erreicht, muss eine kleine Crew entscheiden, ob sie antwortet – oder riskiert, alles zu verlieren, was sie zu schützen kam.',
          'Eine diskreditierte Detektivin wird in den einen Fall zurückgezogen, den sie nicht abschließen konnte, nur um festzustellen, dass die Wahrheit näher war, als sie sich jemals vorgestellt hatte.',
          'Zwei entfremdete Geschwister erben das scheiternde Geschäft ihres Vaters und müssen sowohl das Unternehmen als auch ihre Beziehung neu aufbauen, bevor es zu spät ist.',
          'In einer auf Geheimnissen erbauten Stadt deckt ein Kurier eine Verschwörung auf, die bis ganz nach oben reicht – und jetzt will jeder, was sie trägt.',
        ],
      'es' => <String>[
          'Cuando una señal inexplicable llega a un puesto remoto, un pequeño equipo debe decidir si responder, o arriesgarse a perder todo lo que vinieron a proteger.',
          'Una detective desprestigiada es arrastrada de nuevo al único caso que no pudo cerrar, solo para descubrir que la verdad estaba más cerca de lo que imaginaba.',
          'Dos hermanos distanciados heredan el negocio fallido de su padre y deben reconstruir tanto la empresa como su relación antes de que sea demasiado tarde.',
          'En una ciudad construida sobre secretos, un mensajero descubre una conspiración que llega hasta lo más alto, y ahora todos quieren lo que lleva.',
        ],
      'fr' => <String>[
          'Lorsqu\'un signal inexpliqué atteint un avant-poste isolé, une petite équipe doit décider d\'y répondre - ou risquer de perdre tout ce qu\'elle est venue protéger.',
          'Une détective en disgrâce est replongée dans la seule affaire qu\'elle n\'a pas pu clore, pour découvrir que la vérité était plus proche qu\'elle ne l\'aurait imaginé.',
          'Deux frères et sœurs séparés héritent de l\'entreprise défaillante de leur père et doivent reconstruire à la fois l\'entreprise et leur relation avant qu\'il ne soit trop tard.',
          'Dans une ville bâtie sur des secrets, un coursier découvre un complot qui atteint les plus hautes sphères - et maintenant, tout le monde veut ce qu\'il transporte.',
        ],
      'hi' => <String>[
          'जब एक अस्पष्ट संकेत एक दूरस्थ चौकी तक पहुँचता है, तो एक छोटे चालक दल को यह तय करना होगा कि इसका उत्तर दिया जाए या उन सभी चीजों को खोने का जोखिम उठाया जाए जिनकी वे रक्षा करने आए थे।',
          'एक बदनाम जासूस को उस एक मामले में वापस खींच लिया जाता है जिसे वह बंद नहीं कर पाई थी, केवल यह पता लगाने के लिए कि सच्चाई उसकी कल्पना से भी करीब थी।',
          'दो अलग हुए भाई-बहन अपने पिता के असफल व्यवसाय को विरासत में पाते हैं और इससे पहले कि बहुत देर हो जाए, उन्हें कंपनी और अपने रिश्ते दोनों को फिर से बनाना होगा।',
          'रहस्यों पर बने शहर में, एक कूरियर एक ऐसी साजिश का खुलासा करता है जो शीर्ष तक पहुँचती है - और अब हर कोई वह चाहता है जो वह ले जा रहा है।',
        ],
      'it' => <String>[
          'Quando un segnale inspiegabile raggiunge un avamposto remoto, un piccolo equipaggio deve decidere se rispondere o rischiare di perdere tutto ciò che sono venuti a proteggere.',
          'Una detective caduta in disgrazia viene richiamata nell\'unico caso che non era riuscita a chiudere, solo per scoprire che la verità era più vicina di quanto avesse mai immaginato.',
          'Due fratelli estraniati ereditano l\'attività fallimentare del padre e devono ricostruire sia l\'azienda che il loro rapporto prima che sia troppo tardi.',
          'In una città costruita sui segreti, un corriere scopre una cospirazione che arriva fino ai vertici, e ora tutti vogliono quello che trasporta.',
        ],
      'ko' => <String>[
          '설명할 수 없는 신호가 외딴 기지에 도달했을 때, 소규모 승무원은 그 신호에 응답할 것인지, 아니면 보호하러 온 모든 것을 잃을 위험을 감수할 것인지 결정해야 합니다.',
          '명예가 실추된 형사가 해결하지 못한 유일한 사건에 다시 끌려들어가 진실이 상상했던 것보다 더 가까이 있었다는 것을 발견하게 됩니다.',
          '소원해진 두 남매가 아버지의 망해가는 사업을 물려받아 너무 늦기 전에 회사와 그들의 관계를 재건해야 합니다.',
          '비밀 위에 세워진 도시에서 한 배달원이 최고위층까지 닿는 음모를 폭로하게 되고, 이제 모두가 그녀가 가진 것을 원합니다.',
        ],
      'nl' => <String>[
          'Wanneer een onverklaarbaar signaal een afgelegen buitenpost bereikt, moet een kleine bemanning beslissen of ze antwoorden - of het risico lopen alles te verliezen wat ze kwamen beschermen.',
          'Een in ongenade gevallen detective wordt teruggezogen in de enige zaak die ze niet kon sluiten, om erachter te komen dat de waarheid dichterbij was dan ze ooit had gedacht.',
          'Twee vervreemde broers en zussen erven het falende bedrijf van hun vader en moeten zowel het bedrijf als hun relatie herbouwen voordat het te laat is.',
          'In een stad gebouwd op geheimen, onthult een koerier een samenzwering die de top bereikt - en nu wil iedereen wat ze bij zich draagt.',
        ],
      'pt' => <String>[
          'Quando um sinal inexplicável chega a um posto avançado remoto, uma pequena tripulação deve decidir se responde — ou corre o risco de perder tudo o que veio proteger.',
          'Uma detetive desacreditada é puxada de volta para o único caso que ela não conseguiu encerrar, apenas para descobrir que la verdade estava mais perto do que ela jamais imaginou.',
          'Dois irmãos distanciados herdam o negócio falido do pai e devem reconstruir tanto a empresa quanto o relacionamento antes que seja tarde demais.',
          'Em uma cidade construída sobre segredos, um mensageiro descobre uma conspiração que chega ao topo — e agora todos querem o que ele carrega.',
        ],
      'ru' => <String>[
          'Когда необъяснимый сигнал достигает отдаленного аванпоста, небольшой экипаж должен решить, отвечать ли на него — или рискнуть потерять все, что они пришли защищать.',
          'Опальный детектив возвращается к единственному делу, которое она не смогла закрыть, только чтобы обнаружить, что правда была ближе, чем она когда-либо воображала.',
          'Двое разлученных братьев и сестер наследуют неудачный бизнес своего отца и должны восстановить как компанию, так и свои отношения, пока не стало слишком поздно.',
          'В городе, построенном на секретах, курьер раскрывает заговор, который доходит до самого верха — и теперь каждый хочет то, что она несет.',
        ],
      'tr' => <String>[
          'Açıklanamayan bir sinyal uzak bir karakola ulaştığında, küçük bir mürettebat buna cevap verip vermemeye karar vermelidir - yoksa korumaya geldikleri her şeyi kaybetme riskini göze almalıdırlar.',
          'Gözden düşmüş bir dedektif, kapatamadığı tek vakaya geri çekilir, ancak gerçeğin hayal ettiğinden daha yakın olduğunu keşfeder.',
          'Birbirinden uzaklaşmış iki kardeş, babalarının iflas etmek üzere olan işini devralır ve çok geç olmadan hem şirketi hem de ilişkilerini yeniden inşa etmelidirler.',
          'Sırlar üzerine kurulu bir şehirde, bir kurye en tepeye kadar uzanan bir komployu açığa çıkarır - ve ahora herkes onun taşıdığı şeyi istemektedir.',
        ],
      'zh' => <String>[
          '当一个无法解释的信号到达遥远的前哨站时，一小群船员必须决定是否回答它——否则就有可能失去他们前来保护的一切。',
          '一名名誉扫地的女侦探被拉回了她唯一未能结案的案子，却发现真相比她想象的还要近。',
          '两名疏远的兄弟姐妹继承了父亲失败的生意，必须在为时已晚之前重建公司和他们的关系。',
          '在一座建立在秘密之上的城市里，一名信使揭露了一个直达顶层的阴谋——现在每个人都想要她携带的东西。',
        ],
      _ => <String>[
          'When an unexplained signal reaches a remote outpost, a small crew '
              'must decide whether to answer it — or risk losing everything they '
              'came to protect.',
          'A disgraced detective is pulled back into the one case she couldn\'t '
              'close, only to discover the truth was closer than she ever '
              'imagined.',
          'Two estranged siblings inherit their father\'s failing business and '
              'must rebuild both the company and their relationship before it\'s '
              'too late.',
          'In a city built on secrets, a courier uncovers a conspiracy that '
              'reaches the very top — and now everyone wants what she carries.',
        ],
    };
  }

  static const List<String> _certifications = <String>[
    'PG', 'PG-13', 'R', 'PG-13', 'G',
  ];

  List<CastMember> get _castPool {
    final String lang = _language ?? 'en';
    return switch (lang) {
      'ar' => <CastMember>[
          CastMember(id: 101, name: 'إيلينا مارش', character: 'د. آفا كيسلر'),
          CastMember(id: 102, name: 'ثيو ويتفيلد', character: 'القبطان رييس'),
          CastMember(id: 103, name: 'بريا أناند', character: 'سناء فوس'),
          CastMember(id: 104, name: 'ماركوس ديلجادو', character: 'رسم الخرائط'),
          CastMember(id: 105, name: 'إنغريد سولبرغ', character: 'المفوض هيل'),
          CastMember(id: 106, name: 'جوناه بيرس', character: 'ميلو أندرادي'),
          CastMember(id: 107, name: 'يوكي تاناكا', character: 'د. ريناتا تشو'),
          CastMember(id: 108, name: 'مالك أوساي', character: 'المحقق فارو'),
        ],
      'de' => <CastMember>[
          CastMember(id: 101, name: 'Lukas Schmidt', character: 'Dr. Ava Kessler'),
          CastMember(id: 102, name: 'Sophie Meyer', character: 'Captain Reyes'),
          CastMember(id: 103, name: 'Maximilian Weber', character: 'Sana Voss'),
          CastMember(id: 104, name: 'Hannah Wagner', character: 'Die Kartografin'),
          CastMember(id: 105, name: 'Leon Becker', character: 'Kommissar Hale'),
          CastMember(id: 106, name: 'Mia Hoffmann', character: 'Milo Andrade'),
          CastMember(id: 107, name: 'Elias Koch', character: 'Dr. Renata Cho'),
          CastMember(id: 108, name: 'Clara Richter', character: 'Detective Farrow'),
        ],
      'es' => <CastMember>[
          CastMember(id: 101, name: 'Carlos Ruiz', character: 'Dra. Ava Kessler'),
          CastMember(id: 102, name: 'Lucía García', character: 'Capitán Reyes'),
          CastMember(id: 103, name: 'Javier Hernández', character: 'Sana Voss'),
          CastMember(id: 104, name: 'Sofía Martínez', character: 'La Cartógrafa'),
          CastMember(id: 105, name: 'Diego López', character: 'Comisionado Hale'),
          CastMember(id: 106, name: 'Elena Fernández', character: 'Milo Andrade'),
          CastMember(id: 107, name: 'Mateo Sánchez', character: 'Dr. Renata Cho'),
          CastMember(id: 108, name: 'Valentina Gómez', character: 'Detective Farrow'),
        ],
      'fr' => <CastMember>[
          CastMember(id: 101, name: 'Thomas Laurent', character: 'Dr Ava Kessler'),
          CastMember(id: 102, name: 'Julie Morel', character: 'Capitaine Reyes'),
          CastMember(id: 103, name: 'Nicolas Lefebvre', character: 'Sana Voss'),
          CastMember(id: 104, name: 'Sarah Bernard', character: 'La Cartographe'),
          CastMember(id: 105, name: 'Antoine Petit', character: 'Commissaire Hale'),
          CastMember(id: 106, name: 'Chloé Richard', character: 'Milo Andrade'),
          CastMember(id: 107, name: 'Maxime Durand', character: 'Dr Renata Cho'),
          CastMember(id: 108, name: 'Léa Leroy', character: 'Inspecteur Farrow'),
        ],
      'hi' => <CastMember>[
          CastMember(id: 101, name: 'राजेश कुमार', character: 'डॉ. एवा केसलर'),
          CastMember(id: 102, name: 'प्रिया शर्मा', character: 'कैप्टन रेयेस'),
          CastMember(id: 103, name: 'अमित सिंह', character: 'सना वॉस'),
          CastMember(id: 104, name: 'अंजली वर्मा', character: 'कार्टोग्राफर'),
          CastMember(id: 105, name: 'विक्रम मेहता', character: 'कमिश्नर हेल'),
          CastMember(id: 106, name: 'नेहा गुप्ता', character: 'मिलो एंड्राडे'),
          CastMember(id: 107, name: 'राहुल खन्ना', character: 'डॉ. रेनाटा चो'),
          CastMember(id: 108, name: 'पूजा रेड्डी', character: 'डिटेक्टिव फैरो'),
        ],
      'it' => <CastMember>[
          CastMember(id: 101, name: 'Alessandro Riva', character: 'Dott.ssa Ava Kessler'),
          CastMember(id: 102, name: 'Giulia Ferrari', character: 'Capitano Reyes'),
          CastMember(id: 103, name: 'Marco Bianchi', character: 'Sana Voss'),
          CastMember(id: 104, name: 'Francesca Romano', character: 'La Cartografa'),
          CastMember(id: 105, name: 'Matteo Ricci', character: 'Commissario Hale'),
          CastMember(id: 106, name: 'Sofia Moretti', character: 'Milo Andrade'),
          CastMember(id: 107, name: 'Luca Conti', character: 'Dott. Renata Cho'),
          CastMember(id: 108, name: 'Elena Esposito', character: 'Detective Farrow'),
        ],
      'ko' => <CastMember>[
          CastMember(id: 101, name: '김철수', character: '에바 케슬러 박사'),
          CastMember(id: 102, name: '이영희', character: '레예스 선장'),
          CastMember(id: 103, name: '박지민', character: '사나 보스'),
          CastMember(id: 104, name: '최수연', character: '지도 제작자'),
          CastMember(id: 105, name: '정우성', character: '헤일 위원'),
          CastMember(id: 106, name: '한지혜', character: '밀로 안드라데'),
          CastMember(id: 107, name: '강동원', character: '레나타 초 박사'),
          CastMember(id: 108, name: '윤아름', character: '패로우 형사'),
        ],
      'nl' => <CastMember>[
          CastMember(id: 101, name: 'Bram van Dijk', character: 'Dr. Ava Kessler'),
          CastMember(id: 102, name: 'Sanne de Vries', character: 'Kapitein Reyes'),
          CastMember(id: 103, name: 'Thijs Bakker', character: 'Sana Voss'),
          CastMember(id: 104, name: 'Lotte Janssen', character: 'De Cartograaf'),
          CastMember(id: 105, name: 'Daan de Boer', character: 'Commissaris Hale'),
          CastMember(id: 106, name: 'Emma Visser', character: 'Milo Andrade'),
          CastMember(id: 107, name: 'Lars Smit', character: 'Dr. Renata Cho'),
          CastMember(id: 108, name: 'Tess Mulder', character: 'Detective Farrow'),
        ],
      'pt' => <CastMember>[
          CastMember(id: 101, name: 'João Silva', character: 'Dra. Ava Kessler'),
          CastMember(id: 102, name: 'Maria Santos', character: 'Capitão Reyes'),
          CastMember(id: 103, name: 'Pedro Oliveira', character: 'Sana Voss'),
          CastMember(id: 104, name: 'Ana Costa', character: 'A Cartógrafa'),
          CastMember(id: 105, name: 'Ricardo Pereira', character: 'Comissário Hale'),
          CastMember(id: 106, name: 'Sofia Martins', character: 'Milo Andrade'),
          CastMember(id: 107, name: 'Lucas Ferreira', character: 'Dr. Renata Cho'),
          CastMember(id: 108, name: 'Beatriz Rodrigues', character: 'Detetive Farrow'),
        ],
      'ru' => <CastMember>[
          CastMember(id: 101, name: 'Александр Иванов', character: 'Д-р Ава Кесслер'),
          CastMember(id: 102, name: 'Мария Петрова', character: 'Капитан Рейес'),
          CastMember(id: 103, name: 'Дмитрий Соколов', character: 'Сана Восс'),
          CastMember(id: 104, name: 'Анна Кузнецова', character: 'Картограф'),
          CastMember(id: 105, name: 'Сергей Попов', character: 'Комиссар Хейл'),
          CastMember(id: 106, name: 'Елена Васильева', character: 'Майло Андраде'),
          CastMember(id: 107, name: 'Андрей Волков', character: 'Д-р Рената Чо'),
          CastMember(id: 108, name: 'Ольга Михайлова', character: 'Детектив Фэрроу'),
        ],
      'tr' => <CastMember>[
          CastMember(id: 101, name: 'Can Yılmaz', character: 'Dr. Ava Kessler'),
          CastMember(id: 102, name: 'Elif Demir', character: 'Kaptan Reyes'),
          CastMember(id: 103, name: 'Mert Kaya', character: 'Sana Voss'),
          CastMember(id: 104, name: 'Zeynep Şahin', character: 'Haritacı'),
          CastMember(id: 105, name: 'Burak Aydın', character: 'Komiser Hale'),
          CastMember(id: 106, name: 'Selin Özdemir', character: 'Milo Andrade'),
          CastMember(id: 107, name: 'Emre Çelik', character: 'Dr. Renata Cho'),
          CastMember(id: 108, name: 'Aslı Yıldız', character: 'Dedektif Farrow'),
        ],
      'zh' => <CastMember>[
          CastMember(id: 101, name: '张伟', character: '艾娃·凯斯勒博士'),
          CastMember(id: 102, name: '王芳', character: '雷耶斯船长'),
          CastMember(id: 103, name: '李明', character: '萨娜·沃斯'),
          CastMember(id: 104, name: '刘洋', character: '制图师'),
          CastMember(id: 105, name: '陈静', character: '海尔专员'),
          CastMember(id: 106, name: '杨建国', character: '米洛·安德拉德'),
          CastMember(id: 107, name: '赵丽', character: '雷娜塔·卓博士'),
          CastMember(id: 108, name: '周强', character: '法罗侦探'),
        ],
      _ => <CastMember>[
          CastMember(id: 101, name: 'Elena Marsh', character: 'Dr. Ava Kessler'),
          CastMember(id: 102, name: 'Theo Whitfield', character: 'Captain Reyes'),
          CastMember(id: 103, name: 'Priya Anand', character: 'Sana Voss'),
          CastMember(id: 104, name: 'Marcus Delgado', character: 'The Cartographer'),
          CastMember(id: 105, name: 'Ingrid Solberg', character: 'Commissioner Hale'),
          CastMember(id: 106, name: 'Jonah Pierce', character: 'Milo Andrade'),
          CastMember(id: 107, name: 'Yuki Tanaka', character: 'Dr. Renata Cho'),
          CastMember(id: 108, name: 'Malik Osei', character: 'Detective Farrow'),
        ],
    };
  }

  List<Review> get _reviewPool {
    final String lang = _language ?? 'en';
    return switch (lang) {
      'ar' => <Review>[
          Review(
            id: 'r1',
            author: 'جولة_السينما',
            content: 'رحلة واثقة وممتعة تثق في جمهورها - وتيرة الأحداث تتباطأ قليلاً في الفصل الثاني، لكن العشرين دقيقة الأخيرة تعوض عن ذلك تماماً.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'مراجعات_الليل',
            content: 'رائع للمشاهدة، والأداء الرئيسي يحمل المشاهد التي قد تبدو ضعيفة لولا ذلك. يستحق المشاهدة من أجل التصوير السينمائي وحده.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'نثر_الفشار',
            content: 'لم ينسجم معي تماماً - البداية تعد بأكثر مما تقدمه النهاية - لكنه عمل جيد للمشاهدة لمرة واحدة في أمسية هادئة.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'de' => <Review>[
          Review(
            id: 'r1',
            author: 'KinoWanderer',
            content: 'Eine selbstbewusste, atmosphärische Fahrt, die ihrem Publikum vertraut – das Tempo lässt im zweiten Akt etwas nach, aber die letzten zwanzig Minuten machen das mehr als wett.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'Nachtscreen_Kritik',
            content: 'Wunderschön anzusehen, und die Hauptrolle trägt Szenen, die sonst dünn wirken würden. Allein wegen der Kameraführung sehenswert.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'Popcorn_und_Prosa',
            content: 'Hat bei mir nicht ganz gezündet – der Aufbau verspricht mehr, als das Ende hält – aber ein solider Film für einen ruhigen Abend.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'es' => <Review>[
          Review(
            id: 'r1',
            author: 'CineViajero',
            content: 'Un viaje seguro y atmosférico que confía en su audiencia; el ritmo decae un poco en el segundo acto, pero los últimos veinte minutos lo compensan con creces.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'ReseñasNocturnas',
            content: 'Hermoso de ver, y la actuación principal sostiene escenas que de otro modo parecerían flojas. Vale la pena verla solo por la cinematografía.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'PalomitasYProsa',
            content: 'No me convenció del todo (el planteamiento promete más de lo que ofrece el final), pero es una película sólida para una noche tranquila.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'fr' => <Review>[
          Review(
            id: 'r1',
            author: 'CineFlaneur',
            content: 'Un voyage confiant et atmosphérique qui fait confiance à son public - le rythme ralentit un peu dans le deuxième acte, mais les vingt dernières minutes font plus que compenser.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'CritiqueNocturne',
            content: 'Magnifique à regarder, et la performance principale porte des scènes qui sembleraient autrement légères. Vaut le détour rien que pour la cinématographie.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'PopcornEtProse',
            content: 'Ça n\'a pas tout à fait cliqué pour moi - l\'intrigue promet plus que ce que la fin délivre - mais c\'est un visionnage solide pour une soirée tranquille.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'hi' => <Review>[
          Review(
            id: 'r1',
            author: 'सिनेमा_भ्रमण',
            content: 'एक आत्मविश्वासी, वायुमंडलीय सवारी जो अपने दर्शकों पर भरोसा करती है - दूसरे भाग में गति थोड़ी धीमी हो जाती है, लेकिन अंतिम बीस मिनट इसकी पूरी भरपाई कर देते हैं।',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'नाइटस्क्रीन_रिव्यूज',
            content: 'देखने में भव्य, और मुख्य प्रदर्शन उन दृश्यों को संभालता है जो अन्यथा फीके लगते। केवल सिनेमैटोग्राफी के लिए देखने लायक।',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'पॉपकॉर्न_और_गद्य',
            content: 'मेरे लिए पूरी तरह से सही नहीं रहा - सेटअप जितना वादा करता है, अंत उतना नहीं दे पाता - लेकिन एक शांत शाम के लिए एक ठोस वन-टाइम वॉच है।',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'it' => <Review>[
          Review(
            id: 'r1',
            author: 'VagabondoDelCinema',
            content: 'Un viaggio sicuro e suggestivo che si fida del suo pubblico: il ritmo cala un po\' nel secondo atto, ma gli ultimi venti minuti compensano ampiamente.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'RecensioniNotturne',
            content: 'Splendido da vedere, e l\'interpretazione principale regge scene che altrimenti sembrerebbero scialbe. Vale la pena guardarlo solo per la fotografia.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'PopcornEProsa',
            content: 'Non mi ha convinto del tutto - la premessa promette più di quanto il finale mantenga - ma è una visione solida per una serata tranquilla.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'ko' => <Review>[
          Review(
            id: 'r1',
            author: '시네마방랑자',
            content: '관객을 신뢰하는 자신감 있고 분위기 있는 여정입니다. 두 번째 장에서 속도가 다소 처지지만, 마지막 20분이 이를 충분히 보상하고도 남습니다.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: '야간스크린리뷰',
            content: '보기에 아름답고, 주연의 연기가 자칫 밋밋할 수 있는 장면들을 잘 살려줍니다. 촬영 기법만으로도 볼 가치가 충분합니다.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: '팝콘과산문',
            content: '저에게는 완전히 와닿지 않았습니다. 설정은 거창하지만 결말이 그에 미치지 못합니다. 하지만 조용한 저녁에 한 번쯤 볼만한 견고한 작품입니다.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'nl' => <Review>[
          Review(
            id: 'r1',
            author: 'CinemaZwerver',
            content: 'Een zelfverzekerde, sfeervolle rit die zijn publiek vertrouwt - het tempo verslapt wat in de tweede akte, maar de laatste twintig minuten maken dat meer dan goed.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'NachtschermRecensies',
            content: 'Prachtig om naar te kijken, en de hoofdrolspeler draagt scènes die anders dun zouden aanvoelen. Alleen al de moeite waard voor de cinematografie.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'PopcornEnProza',
            content: 'Het klikte nicht helemaal voor mij - de opzet belooft meer dan het einde waarmaakt - maar het is een prima film voor een rustige avond.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'pt' => <Review>[
          Review(
            id: 'r1',
            author: 'ViajanteDoCinema',
            content: 'Uma viagem confiante e atmosférica que confia no seu público — o ritmo cai um pouco no segundo ato, mas os vinte minutos finais compensam com sobra.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'CriticasNoturnas',
            content: 'Lindo de ver, e a atuação principal sustenta cenas que, de outra forma, pareceriam vazias. Vale a pena assistir apenas pela cinematografia.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'PipocaEProsa',
            content: 'Não me convenceu totalmente — a premissa promete mais do que o final entrega — mas é uma boa opção para uma noite tranquila.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'ru' => <Review>[
          Review(
            id: 'r1',
            author: 'КиноСтранник',
            content: 'Уверенная, атмосферная поездка, которая доверяет своей аудитории — темп немного замедляется во втором акте, но последние двадцать минут с лихвой это окупают.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'НочнойЭкран',
            content: 'Великолепно смотрится, и игра главного героя вытягивает сцены, которые иначе казались бы слабыми. Стоит посмотреть хотя бы ради операторской работы.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'ПопкорнИПроза',
            content: 'Не совсем зацепило — завязка обещает больше, чем дает финал, — но это добротный фильм на один раз для спокойного вечера.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'tr' => <Review>[
          Review(
            id: 'r1',
            author: 'SinemaGezgini',
            content: 'İzleyicisine güvenen, özgüvenli ve atmosferik bir yolculuk - ikinci perdede tempo biraz düşüyor ancak son yirmi dakika bunu fazlasıyla telafi ediyor.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'GeceEkranıYorumları',
            content: 'Görsel olarak muhteşem ve başrol oyuncusu, aksi takdirde zayıf kalacak sahneleri başarıyla taşıyor. Sadece sinematografi için bile izlemeye değer.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'PopcornVeNesir',
            content: 'Benim için tam olarak oturmadı - başlangıç sonun getirdiğinden fazlasını vaat ediyor - ama sakin bir akşamda izlenebilecek sağlam bir yapım.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      'zh' => <Review>[
          Review(
            id: 'r1',
            author: '影迷流浪者',
            content: '一次自信、大气、信任观众的旅程——第二幕的节奏略显拖沓，但最后二十分钟完全弥补了这一点。',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: '午夜影评',
            content: '画面精美，主角的表演支撑起了原本可能显得单薄的场景。仅凭摄影就值得一看。',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: '爆米花与散文',
            content: '对我来说并不完全契合——铺垫许诺的比结局交付的更多——但对于一个安静的夜晚来说，这是一部扎实的一次性观影作品。',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
      _ => <Review>[
          Review(
            id: 'r1',
            author: 'CinemaWanderer',
            content:
                'A confident, atmospheric ride that trusts its audience — the '
                'pacing lags a little in the second act, but the final twenty '
                'minutes more than make up for it.',
            rating: 8.5,
            createdAt: DateTime(2024, 3, 2),
          ),
          Review(
            id: 'r2',
            author: 'nightscreen_reviews',
            content:
                'Gorgeous to look at, and the lead performance carries scenes '
                'that would otherwise feel thin. Worth watching for the '
                'cinematography alone.',
            rating: 7.2,
            createdAt: DateTime(2024, 1, 18),
          ),
          Review(
            id: 'r3',
            author: 'popcorn_and_prose',
            content:
                'Didn\'t fully click for me — the setup promises more than the '
                'ending delivers — but it\'s a solid one-time watch on a quiet '
                'evening.',
            rating: 6.0,
            createdAt: DateTime(2023, 11, 27),
          ),
        ],
    };
  }

  /// Simulates realistic network latency so loading/shimmer states are
  /// visible during development — remove once backed by a real API call.
  Future<void> _simulateLatency() =>
      Future<void>.delayed(const Duration(milliseconds: 650));

  Future<List<Movie>> fetchTrending() async {
    await _simulateLatency();
    return _catalog.sublist(0, 10);
  }

  Future<List<Movie>> fetchPopular({int page = 1}) async {
    await _simulateLatency();
    return _catalog.sublist(4, 16);
  }

  Future<List<Movie>> fetchTopRated({int page = 1}) async {
    await _simulateLatency();
    final List<Movie> sorted = List<Movie>.of(_catalog)
      ..sort((Movie a, Movie b) => b.voteAverage.compareTo(a.voteAverage));
    return sorted.take(12).toList();
  }

  Future<List<Movie>> fetchUpcoming({int page = 1}) async {
    await _simulateLatency();
    return _catalog.sublist(10, 20);
  }

  Future<List<Movie>> fetchRecommended() async {
    await _simulateLatency();
    return _catalog.sublist(6, 14);
  }

  Future<List<Movie>> fetchByGenre(int genreId, {int page = 1}) async {
    await _simulateLatency();
    return _catalog
        .where((Movie movie) => movie.genreIds.contains(genreId))
        .toList();
  }

  Future<List<Movie>> search(String query, {int page = 1}) async {
    await _simulateLatency();
    final String normalized = query.trim().toLowerCase();
    if (normalized.isEmpty) return const <Movie>[];
    return _catalog
        .where((Movie movie) => movie.title.toLowerCase().contains(normalized))
        .toList();
  }

  Future<Movie> fetchDetails(int movieId) async {
    await _simulateLatency();
    return _catalog.firstWhere(
      (Movie movie) => movie.id == movieId,
      orElse: () => _catalog.first,
    );
  }

  Future<List<Movie>> fetchSimilar(int movieId) async {
    await _simulateLatency();
    return _catalog.where((Movie movie) => movie.id != movieId).take(10).toList();
  }

  Future<List<CastMember>> fetchCredits(int movieId) async {
    await _simulateLatency();
    // Rotate the pool slightly per movie so different titles show a
    // slightly different cast order, mirroring how a real API response
    // would vary.
    final int offset = movieId % _castPool.length;
    return <CastMember>[
      ..._castPool.sublist(offset),
      ..._castPool.sublist(0, offset),
    ];
  }

  Future<List<Review>> fetchReviews(int movieId) async {
    await _simulateLatency();
    return _reviewPool;
  }

  Future<List<Genre>> fetchGenres() async {
    await _simulateLatency();
    return _genres;
  }
}
