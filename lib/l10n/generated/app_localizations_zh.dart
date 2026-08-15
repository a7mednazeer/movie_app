// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTagline => '您的电影世界';

  @override
  String get navHome => '首页';

  @override
  String get navSearch => '搜索';

  @override
  String get navBrowse => '浏览';

  @override
  String get navWatchlist => '待播清单';

  @override
  String get navProfile => '个人资料';

  @override
  String get sectionTrending => '正在流行';

  @override
  String get sectionPopular => '热门电影';

  @override
  String get sectionTopRated => '高分榜单';

  @override
  String get sectionUpcoming => '即将上映';

  @override
  String get sectionRecommended => '为你推荐';

  @override
  String get sectionCategories => '分类';

  @override
  String get seeAll => '查看全部';

  @override
  String get moreLikeThis => '更多相似电影';

  @override
  String get cast => '演员阵容';

  @override
  String get reviews => '影评';

  @override
  String get noReviewsYet => '暂无影评 — 快来发表第一条评论吧。';

  @override
  String get overview => '剧情简介';

  @override
  String get watchTrailer => '观看预告片';

  @override
  String get noTrailerAvailable => '该片暂无预告片。';

  @override
  String get trailerOpenFailed => '无法打开预告片。';

  @override
  String get addToWatchlist => '清单';

  @override
  String get removedFromWatchlist => '已从待播清单中移除';

  @override
  String get addedToWatchlist => '已添加到待播清单';

  @override
  String get share => '分享';

  @override
  String get readMore => '更多';

  @override
  String get readLess => '收起';

  @override
  String get searchHint => '搜索电影、演员、类型…';

  @override
  String get recentSearches => '最近搜索';

  @override
  String get trendingSearches => '热门搜索';

  @override
  String get clearAll => '全部清除';

  @override
  String get clearRecentSearchesMessage => '确认移除所有最近搜索记录吗？此操作无法撤销。';

  @override
  String get noResultsFound => '未找到相关电影';

  @override
  String get noResultsSubtitle => '请尝试搜索其他片名、演员或类型。';

  @override
  String get startSearching => '搜索你喜欢的电影';

  @override
  String get startSearchingSubtitle => '查找影片、查看演员、发现惊喜。';

  @override
  String get browseCategory => '浏览分类';

  @override
  String get noCategoriesAvailable => '暂无分类';

  @override
  String get checkBackLaterGenres => '请稍后再来查看分类信息。';

  @override
  String get noMoviesInGenre => '暂无电影';

  @override
  String get checkBackSoonGenre => '该分类目前没有内容 — 请稍后查看。';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '待播清单 ($count)',
      zero: '待播清单',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => '清单是空的';

  @override
  String get watchlistEmptySubtitle => '保存的电影将显示在这里，方便你随时观看。';

  @override
  String removedFromWatchlistSnack(String title) {
    return '已移除 \"$title\"';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '收藏夹 ($count)',
      zero: '收藏夹',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => '暂无收藏';

  @override
  String get favoritesEmptySubtitle => '你在详情页标记为收藏的电影会出现在这里。';

  @override
  String removedFromFavoritesSnack(String title) {
    return '已从收藏夹中移除 \"$title\"';
  }

  @override
  String get undo => '撤销';

  @override
  String get retry => '重试';

  @override
  String get genericErrorSubtitle => '内容加载失败，请重试。';

  @override
  String get noInternetSubtitle => '请检查你的网络连接并重试。';

  @override
  String get profileTitle => '个人资料';

  @override
  String get yourLibrary => '你的媒体库';

  @override
  String get everythingSaved => '你保存的所有内容，尽在一处';

  @override
  String get favoritesLabel => '收藏夹';

  @override
  String get watchlistLabel => '清单';

  @override
  String get settingsLabel => '设置';

  @override
  String get settingsSubtitle => '主题、语言及关于';

  @override
  String get settingsTitle => '设置';

  @override
  String get appearance => '外观设置';

  @override
  String get preferences => '偏好设置';

  @override
  String get languageLabel => '语言';

  @override
  String get aboutSection => '关于';

  @override
  String get aboutThisApp => '关于此应用';

  @override
  String versionLabel(String version) {
    return '版本 $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return '关于 $appName';
  }

  @override
  String get aboutDescription => '一款优质的电影探索应用 — 浏览流行、热门和高分影片，搜索并管理你的观看计划。';

  @override
  String get tmdbAttribution => '本产品使用 TMDB API，但未经 TMDB 背书或认证。';

  @override
  String get visitTmdb => '访问 TMDB';

  @override
  String get close => '关闭';

  @override
  String get comingSoon => '敬请期待';

  @override
  String get themeLight => '浅色模式';

  @override
  String get themeDark => '深色模式';

  @override
  String get themeAuto => '跟随系统';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '确认';

  @override
  String get removeLabel => '移除';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — 查看预告片: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return '在 Movies 上查看 \"$title\"！';
  }

  @override
  String get notificationsLabel => '通知';

  @override
  String get notificationsSubtitle => '管理你接收的通知';

  @override
  String get helpCenterLabel => '帮助中心';

  @override
  String get helpCenterSubtitle => '常见问题、联系我们等';

  @override
  String get systemDefault => '系统默认';

  @override
  String get back => '返回';

  @override
  String get clear => '清除';

  @override
  String get editInformation => '编辑信息';

  @override
  String get save => '保存';

  @override
  String get displayName => '显示名称';

  @override
  String get photoUrl => '头像链接';

  @override
  String get enterName => '输入你的姓名';

  @override
  String get profileUpdated => '个人资料更新成功';

  @override
  String get signIn => '登录';

  @override
  String get signUp => '注册';

  @override
  String get welcomeBack => '欢迎回来';

  @override
  String get signInSubtitle => '登录以在不同设备间同步你的清单和收藏。';

  @override
  String get createAccount => '创建账号';

  @override
  String get signUpSubtitle => '注册账号以保存你的待播清单和收藏。';

  @override
  String get emailLabel => '电子邮件';

  @override
  String get passwordLabel => '密码';

  @override
  String get confirmPasswordLabel => '确认密码';

  @override
  String get nameLabel => '姓名';

  @override
  String get forgotPassword => '忘记密码？';

  @override
  String get noAccountYet => '还没有账号？ ';

  @override
  String get alreadyHaveAccount => '已经有账号了？ ';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String get authErrorFieldRequired => '此项为必填。';

  @override
  String get authErrorInvalidEmail => '请输入有效的电子邮件地址。';

  @override
  String get authErrorUserDisabled => '此账号已被禁用。';

  @override
  String get authErrorUserNotFound => '未找到与此邮件关联的账号。';

  @override
  String get authErrorWrongPassword => '邮件地址或密码错误。';

  @override
  String get authErrorEmailInUse => '该邮件地址已被注册。';

  @override
  String get authErrorWeakPassword => '密码强度太弱。';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return '密码长度至少为 $minLength 个字符。';
  }

  @override
  String get authErrorTooManyRequests => '尝试次数过多，请稍后再试。';

  @override
  String get authErrorNotConfigured => '此应用尚未配置登录功能。';

  @override
  String get authErrorRequiresRecentLogin => '请重新登录以继续操作。';

  @override
  String get authErrorPasswordMismatch => '两次输入的密码不一致。';

  @override
  String get authEnterEmailFirst => '请先在上方输入电子邮件。';

  @override
  String authResetEmailSent(String email) {
    return '重置密码的邮件已发送至 $email。';
  }

  @override
  String get authSyncBannerTitle => '登录以同步数据';

  @override
  String get authSyncBannerSubtitle => '将你的清单和收藏保存到账号，并在任何设备上访问。';

  @override
  String get signOut => '退出登录';

  @override
  String get signOutConfirmTitle => '确定退出登录吗？';

  @override
  String get signOutConfirmMessage => '你可以随时重新登录。你的清单和收藏将保留在账号中。';

  @override
  String get signedOutSnack => '已退出登录';

  @override
  String get guestBadge => '访客';

  @override
  String get syncedToAccount => '已同步到账号';

  @override
  String get localOnlyBanner => '仅保存在此设备上 — 登录以实现多端同步';

  @override
  String get editProfile => '编辑个人资料';

  @override
  String get photoUrlLabel => '头像链接';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint => '粘贴图片链接。留空可移除头像。';

  @override
  String get invalidUrlError => '请输入以 http:// 或 https:// 开头的有效图片链接。';

  @override
  String get saveChanges => '保存更改';

  @override
  String get profileUpdatedSnack => '资料已更新';

  @override
  String get deleteAccountAction => '注销账号';

  @override
  String get deleteAccountConfirmTitle => '确定注销账号吗？';

  @override
  String get deleteAccountConfirmMessage =>
      '这将永久删除你的账号信息。你的清单和收藏将保留在此设备上，但不再同步。此操作不可撤销。';

  @override
  String get accountDeletedSnack => '账号已注销';

  @override
  String get chatbotEntrySubtitle => '通过 FAQ 助手快速获取答案';

  @override
  String get faqEntrySubtitle => '查看常见问题和解答';

  @override
  String get contactUsEntrySubtitle => '给我们留言';

  @override
  String get feedbackEntrySubtitle => '为应用评分并告诉我们你的想法';

  @override
  String get aboutEntrySubtitle => '版本、致谢及法律信息';

  @override
  String get chatbotTitle => '帮助助手';

  @override
  String get chatbotGreeting => '你好！关于应用的使用有什么问题都可以问我，我会尽力帮忙。';

  @override
  String get chatbotInputHint => '输入你的问题…';

  @override
  String get chatbotNoMatch => '我不确定这个问题。请换种问法，或者查看常见问题，也可以直接联系我们。';

  @override
  String get chatbotContactHumanPrompt => '需要人工帮助？联系我们';

  @override
  String get faqTitle => '常见问题';

  @override
  String get faqSearchHint => '搜索常见问题…';

  @override
  String get faqNoResultsSubtitle => '尝试其他搜索词，或询问在线助手。';

  @override
  String get faqQAboutApp => '这是什么应用？';

  @override
  String get faqAAboutApp =>
      'MOVIES 是一款电影发现应用 — 你可以浏览流行、热门、高分影片，搜索感兴趣的内容并管理观看计划。';

  @override
  String get faqQSearch => '如何搜索电影？';

  @override
  String get faqASearch => '点击底部导航的搜索，然后输入片名、演员或类型。结果会实时更新。';

  @override
  String get faqQWatchlistVsFavorites => '清单和收藏有什么区别？';

  @override
  String get faqAWatchlistVsFavorites => '清单用于你想看的电影。收藏用于你已经喜欢的电影。它们是分开管理的。';

  @override
  String get faqQSaveMovie => '如何保存电影？';

  @override
  String get faqASaveMovie => '点击电影卡片上的书签图标，或使用详情页的清单/收藏按钮。';

  @override
  String get faqQNeedAccount => '我需要账号才能使用应用吗？';

  @override
  String get faqANeedAccount => '不一定 — 访客模式也可以使用所有功能并保存在本地。登录后可以实现多设备同步。';

  @override
  String get faqQSignIn => '如何登录或注册？';

  @override
  String get faqASignIn => '在“个人资料”页面点击登录横幅。注册只需姓名、邮箱和密码。';

  @override
  String get faqQSyncDevices => '多设备同步如何工作？';

  @override
  String get faqASyncDevices => '登录后，你的数据会自动同步到账号，并在登录同一账号的其他设备上实时更新。';

  @override
  String get faqQOffline => '应用可以在离线状态下使用吗？';

  @override
  String get faqAOffline => '待播清单和收藏保存在本地，因此离线可用。浏览新影片需要联网。';

  @override
  String get faqQChangeLanguage => '如何更改应用语言？';

  @override
  String get faqAChangeLanguage => '前往 设置 → 语言，从 12 种支持的语言中选择，或选择“系统默认”。';

  @override
  String get faqQChangeTheme => '如何切换深浅模式？';

  @override
  String get faqAChangeTheme => '前往 设置 → 外观设置，选择 浅色、深色 或 自动。';

  @override
  String get faqQWatchTrailer => '如何观看预告片？';

  @override
  String get faqAWatchTrailer => '在电影详情页点击“观看预告片”。如果有资源，会跳转至 YouTube 播放。';

  @override
  String get faqQDeleteAccount => '如何注销账号？';

  @override
  String get faqADeleteAccount => '前往 个人资料 → 编辑个人资料，滑动到底部选择“注销账号”。云端数据将被永久删除。';

  @override
  String get faqQContactSupport => '如何联系客服？';

  @override
  String get faqAContactSupport => '前往 帮助中心 → 联系我们 并发送消息；这将自动打开你的邮件应用。';

  @override
  String get contactUsTitle => '联系我们';

  @override
  String get contactUsSubtitle => '有问题或遇到故障？给我们发消息，我们会尽快回复。';

  @override
  String get contactSubjectLabel => '主题';

  @override
  String get contactMessageLabel => '内容';

  @override
  String get contactSendAction => '发送消息';

  @override
  String get contactMailAppUnavailable => '该设备未找到邮件应用。';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return '姓名: $name\n邮箱: $email\n\n内容: $message';
  }

  @override
  String get feedbackTitle => '意见反馈';

  @override
  String get feedbackSubtitle => '你对应用目前的体验如何？';

  @override
  String get feedbackCommentHint => '告诉我们更多（可选）…';

  @override
  String get feedbackSendAction => '提交反馈';

  @override
  String get feedbackRatingRequired => '请先选择星级评分。';

  @override
  String get feedbackThanks => '感谢你的反馈！';

  @override
  String get feedbackNoComment => '(未提供具体评论)';

  @override
  String get feedbackEmailSubject => '应用反馈';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return '评分: $rating/5\n\n内容: $comment';
  }

  @override
  String get termsTitle => '服务条款';

  @override
  String get privacyTitle => '隐私政策';

  @override
  String get legalLastUpdated => '最后更新：2026年1月';

  @override
  String get termsSection1Title => '1. 接受条款';

  @override
  String get termsSection1Body => '使用此应用即表示你同意本服务条款。如果你不同意，请勿使用本应用。';

  @override
  String get termsSection2Title => '2. 服务内容';

  @override
  String get termsSection2Body =>
      '本应用提供来自 TMDB 的电影信息浏览、搜索和保存功能。我们本身不托管、流式传输或分发任何视频内容。';

  @override
  String get termsSection3Title => '3. 账号管理';

  @override
  String get termsSection3Body => '你可以作为访客使用大部分功能。创建账号可实现同步。你需负责维护密码安全。';

  @override
  String get termsSection4Title => '4. 你的内容';

  @override
  String get termsSection4Body => '你的清单、收藏、名称和头像归你所有。我们存储它们是为了提供服务，不会出售或用于广告。';

  @override
  String get termsSection5Title => '5. 第三方数据';

  @override
  String get termsSection5Body =>
      '电影信息由 TMDB 提供，可能存在误差或在未通知的情况下更改。本产品使用 TMDB API 但未获得 TMDB 认证。';

  @override
  String get termsSection6Title => '6. 账号终止';

  @override
  String get termsSection6Body =>
      '你可以随时在“编辑个人资料”中注销账号。对于违反条款的行为，我们可能会暂停你的访问权限。';

  @override
  String get termsSection7Title => '7. 条款变更';

  @override
  String get termsSection7Body => '我们可能会不时更新条款。变更后继续使用应用即视为你接受更新后的条款。';

  @override
  String get privacySection1Title => '1. 信息收集';

  @override
  String get privacySection1Body => '访客模式不收集个人数据。注册账号时，我们会收集你的姓名、邮箱和头像链接（可选）。';

  @override
  String get privacySection2Title => '2. 数据存储';

  @override
  String get privacySection2Body => '登录后，你的数据存储在 Firestore 中，仅限你自己访问。';

  @override
  String get privacySection3Title => '3. 第三方服务';

  @override
  String get privacySection3Body =>
      '我们使用 TMDB 获取电影信息，使用 Firebase 进行身份验证和数据存储。它们有各自的隐私政策。';

  @override
  String get privacySection4Title => '4. 本地存储';

  @override
  String get privacySection4Body => '你的偏好设置存储在设备本地（通过 Hive），以确保离线也能快速运行。';

  @override
  String get privacySection5Title => '5. 数据注销';

  @override
  String get privacySection5Body => '你可以随时注销账号。本地数据会保留在设备上，直到你清除应用缓存。';

  @override
  String get privacySection6Title => '6. 联系方式';

  @override
  String get privacySection6Body => '关于政策的问题？请通过 帮助中心 → 联系我们 咨询。';
}
