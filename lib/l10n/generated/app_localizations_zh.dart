// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTagline => '你的电影世界';

  @override
  String get navHome => '首页';

  @override
  String get navSearch => '搜索';

  @override
  String get navBrowse => '浏览';

  @override
  String get navWatchlist => '片单';

  @override
  String get navProfile => '我的';

  @override
  String get sectionTrending => '热门趋势';

  @override
  String get sectionPopular => '热门电影';

  @override
  String get sectionTopRated => '高分口碑';

  @override
  String get sectionUpcoming => '即将上映';

  @override
  String get sectionRecommended => '为你推荐';

  @override
  String get sectionCategories => '分类';

  @override
  String get seeAll => '查看全部';

  @override
  String get moreLikeThis => '相似影片';

  @override
  String get cast => '演员阵容';

  @override
  String get reviews => '评论';

  @override
  String get noReviewsYet => '暂无评论 — 快来发表第一条评论吧。';

  @override
  String get overview => '剧情简介';

  @override
  String get watchTrailer => '观看预告片';

  @override
  String get noTrailerAvailable => '该片暂无预告片。';

  @override
  String get trailerOpenFailed => '无法打开预告片。';

  @override
  String get addToWatchlist => '片单';

  @override
  String get removedFromWatchlist => '已从片单移除';

  @override
  String get addedToWatchlist => '已加入片单';

  @override
  String get share => '分享';

  @override
  String get readMore => '展开';

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
  String get clearRecentSearchesMessage => '确定要清除所有最近搜索吗？此操作无法撤销。';

  @override
  String get noResultsFound => '未找到相关电影';

  @override
  String get noResultsSubtitle => '请尝试其他片名、演员或类型。';

  @override
  String get startSearching => '搜索你喜爱的电影';

  @override
  String get startSearchingSubtitle => '查找片名，浏览演员阵容，发现新内容。';

  @override
  String get browseCategory => '浏览分类';

  @override
  String get noCategoriesAvailable => '暂无可用分类';

  @override
  String get checkBackLaterGenres => '请稍后再来查看可浏览的类型。';

  @override
  String get noMoviesInGenre => '暂时没有电影';

  @override
  String get checkBackSoonGenre => '该类型下暂时没有内容，请稍后再来看看。';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '我的片单（$count）',
      zero: '我的片单',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => '你的片单还是空的';

  @override
  String get watchlistEmptySubtitle => '你保存的电影会显示在这里，方便你随时查看。';

  @override
  String removedFromWatchlistSnack(String title) {
    return '已移除“$title”';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '收藏（$count）',
      zero: '收藏',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => '还没有收藏';

  @override
  String get favoritesEmptySubtitle => '在电影详情页标记为收藏的电影会显示在这里。';

  @override
  String removedFromFavoritesSnack(String title) {
    return '已将“$title”从收藏中移除';
  }

  @override
  String get undo => '撤销';

  @override
  String get retry => '重试';

  @override
  String get genericErrorSubtitle => '加载内容时出了点问题，请重试。';

  @override
  String get noInternetSubtitle => '请检查网络连接后重试。';

  @override
  String get profileTitle => '我的';

  @override
  String get yourLibrary => '我的收藏库';

  @override
  String get everythingSaved => '所有保存的内容，尽在一处';

  @override
  String get favoritesLabel => '收藏';

  @override
  String get watchlistLabel => '片单';

  @override
  String get settingsLabel => '设置';

  @override
  String get settingsSubtitle => '主题、语言等';

  @override
  String get settingsTitle => '设置';

  @override
  String get appearance => '外观';

  @override
  String get preferences => '偏好设置';

  @override
  String get languageLabel => '语言';

  @override
  String get aboutSection => '关于';

  @override
  String get aboutThisApp => '关于本应用';

  @override
  String versionLabel(String version) {
    return '版本 $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return '关于 $appName';
  }

  @override
  String get aboutDescription => '一款优质的电影发现应用——浏览热门趋势、热门电影和高分口碑影片，搜索并追踪你想看的内容。';

  @override
  String get tmdbAttribution => '本产品使用了 TMDB API，但未获得 TMDB 的认可或认证。';

  @override
  String get visitTmdb => '访问 TMDB';

  @override
  String get close => '关闭';

  @override
  String get comingSoon => '即将推出';

  @override
  String get themeLight => '浅色';

  @override
  String get themeDark => '深色';

  @override
  String get themeAuto => '自动';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '确认';

  @override
  String get removeLabel => '移除';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — 观看预告片：$trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return '快来 Movies 看看《$title》吧！';
  }

  @override
  String get notificationsLabel => '通知';

  @override
  String get notificationsSubtitle => '管理你希望接收的通知内容';

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
  String get photoUrl => '照片 URL';

  @override
  String get photoUrlHint => 'https://example.com/avatar.jpg';

  @override
  String get enterName => '输入您的姓名';

  @override
  String get profileUpdated => '个人资料更新成功';

  @override
  String get signIn => '登录';

  @override
  String get signUp => '注册';

  @override
  String get welcomeBack => '欢迎回来';

  @override
  String get signInSubtitle => '登录以在设备间同步你的片单和收藏。';

  @override
  String get createAccount => '创建账户';

  @override
  String get signUpSubtitle => '注册以将你的片单和收藏保存到账户中。';

  @override
  String get emailLabel => '电子邮箱';

  @override
  String get passwordLabel => '密码';

  @override
  String get confirmPasswordLabel => '确认密码';

  @override
  String get nameLabel => '姓名';

  @override
  String get forgotPassword => '忘记密码？';

  @override
  String get noAccountYet => '还没有账户？';

  @override
  String get alreadyHaveAccount => '已有账户？';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String get authErrorFieldRequired => '此字段为必填项。';

  @override
  String get authErrorInvalidEmail => '请输入有效的电子邮箱地址。';

  @override
  String get authErrorUserDisabled => '该账户已被禁用。';

  @override
  String get authErrorUserNotFound => '未找到使用该邮箱的账户。';

  @override
  String get authErrorWrongPassword => '邮箱或密码错误。';

  @override
  String get authErrorEmailInUse => '该邮箱已被注册。';

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
  String get authErrorRequiresRecentLogin => '请重新登录以继续。';

  @override
  String get authErrorPasswordMismatch => '两次输入的密码不一致。';

  @override
  String get authEnterEmailFirst => '请先在上方输入你的电子邮箱。';

  @override
  String authResetEmailSent(String email) {
    return '密码重置邮件已发送至 $email。';
  }

  @override
  String get authSyncBannerTitle => '登录以同步';

  @override
  String get authSyncBannerSubtitle => '将片单和收藏保存到账户，在任意设备上访问。';

  @override
  String get signOut => '退出登录';

  @override
  String get signOutConfirmTitle => '要退出登录吗？';

  @override
  String get signOutConfirmMessage => '你可以随时重新登录。你的片单和收藏会继续保存在账户中。';

  @override
  String get signedOutSnack => '已退出登录';

  @override
  String get guestBadge => '访客';

  @override
  String get syncedToAccount => '已同步到你的账户';

  @override
  String get localOnlyBanner => '仅保存在此设备上 — 登录以在设备间同步';
}
