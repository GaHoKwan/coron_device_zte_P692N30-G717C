.class public Lcom/android/browser/IntentHandler;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/IntentHandler$UrlData;
    }
.end annotation


# static fields
.field static final EMPTY_URL_DATA:Lcom/android/browser/IntentHandler$UrlData; = null

.field static final GOOGLE_SEARCH_SOURCE_SUGGEST:Ljava/lang/String; = "browser-suggest"

.field static final GOOGLE_SEARCH_SOURCE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final XLOGTAG:Ljava/lang/String; = "browser/IntentHandler"

.field private static sBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mController:Lcom/android/browser/Controller;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mTabControl:Lcom/android/browser/TabControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    new-instance v0, Lcom/android/browser/IntentHandler$UrlData;

    invoke-direct {v0, v1}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/IntentHandler;->EMPTY_URL_DATA:Lcom/android/browser/IntentHandler$UrlData;

    .line 67
    sput-object v1, Lcom/android/browser/IntentHandler;->sBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V
    .locals 1
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    .line 72
    iget-object v0, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    .line 73
    invoke-virtual {p2}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 74
    return-void
.end method

.method protected static getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;
    .locals 14
    .parameter "intent"

    .prologue
    .line 240
    const-string v1, ""

    .line 241
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x0

    .line 242
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 243
    .local v4, preloaded:Lcom/android/browser/PreloadedTabControl;
    const/4 v5, 0x0

    .line 244
    .local v5, preloadedSearchBoxQuery:Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x10

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    .line 246
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_1

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const-string v0, "com.android.browser.headers"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 253
    .local v11, pairs:Landroid/os/Bundle;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 255
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 256
    .restart local v2       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 258
    .local v10, key:Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #pairs:Landroid/os/Bundle;
    :cond_1
    const-string v0, "preload_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    const-string v0, "preload_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, id:Ljava/lang/String;
    const-string v0, "searchbox_query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-static {}, Lcom/android/browser/Preloader;->getInstance()Lcom/android/browser/Preloader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/browser/Preloader;->getPreloadedTab(Ljava/lang/String;)Lcom/android/browser/PreloadedTabControl;

    move-result-object v4

    .line 292
    .end local v6           #action:Ljava/lang/String;
    .end local v8           #id:Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/browser/IntentHandler$UrlData;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)V

    return-object v0

    .line 268
    .restart local v6       #action:Ljava/lang/String;
    :cond_3
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    :cond_4
    const-string v0, "query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_2

    .line 275
    invoke-static {v1}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    const-string v12, "&source=android-browser-suggest&"

    .line 278
    .local v12, searchSource:Ljava/lang/String;
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    const/4 v13, 0x0

    .line 280
    .local v13, source:Ljava/lang/String;
    const-string v0, "app_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 281
    .local v7, appData:Landroid/os/Bundle;
    if-eqz v7, :cond_5

    .line 282
    const-string v0, "source"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 284
    :cond_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 285
    const-string v13, "unknown"

    .line 287
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&source=android-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z
    .locals 6
    .parameter "activity"
    .parameter "controller"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 302
    if-nez p2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v4

    .line 304
    :cond_1
    const/4 v3, 0x0

    .line 305
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 308
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    :cond_2
    if-eqz v3, :cond_3

    const-string v5, "content://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    :cond_3
    if-eqz p1, :cond_4

    const-string v5, "inputUrl"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 314
    invoke-virtual {p1}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v2

    check-cast v2, Lcom/android/browser/BaseUi;

    .line 315
    .local v2, ui:Lcom/android/browser/BaseUi;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/browser/BaseUi;->setInputUrlFlag(Z)V

    .line 316
    const-string v4, "browser/IntentHandler"

    const-string v5, "handleWebSearchIntent inputUrl setInputUrlFlag"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v1           #data:Landroid/net/Uri;
    .end local v2           #ui:Lcom/android/browser/BaseUi;
    :cond_4
    :goto_1
    const-string v4, "app_data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "intent_extra_data_key"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/browser/IntentHandler;->handleWebSearchRequest(Landroid/app/Activity;Lcom/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 319
    :cond_5
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    :cond_6
    const-string v4, "query"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private static handleWebSearchRequest(Landroid/app/Activity;Lcom/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 7
    .parameter "activity"
    .parameter "controller"
    .parameter "inUrl"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    const/4 v4, 0x0

    .line 337
    if-nez p2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v4

    .line 341
    :cond_1
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 346
    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 351
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, v3

    .line 353
    .local v1, newUrl:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 357
    :cond_2
    new-instance v5, Lcom/android/browser/IntentHandler$1;

    invoke-direct {v5, v0, v1}, Lcom/android/browser/IntentHandler$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-array v6, v4, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 366
    :cond_3
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    .line 367
    .local v2, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v2, :cond_0

    .line 368
    invoke-interface {v2, p0, v3, p3, p4}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 370
    invoke-static {p0}, Lcom/mediatek/browser/ext/Extensions;->getSmallFeaturePlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    move-result-object v4

    sput-object v4, Lcom/android/browser/IntentHandler;->sBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    .line 371
    sget-object v4, Lcom/android/browser/IntentHandler;->sBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    invoke-interface {v4}, Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;->shouldTransferToWapBrowser()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 372
    invoke-static {p0, v3, v2}, Lcom/android/browser/IntentHandler;->isTransferToWapBrowser(Landroid/app/Activity;Ljava/lang/String;Lcom/android/browser/search/SearchEngine;)Z

    move-result v4

    goto :goto_0

    .line 375
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isTransferToWapBrowser(Landroid/app/Activity;Ljava/lang/String;Lcom/android/browser/search/SearchEngine;)Z
    .locals 1
    .parameter "activity"
    .parameter "url"
    .parameter "searchEngine"

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 77
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v10}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 80
    .local v3, current:Lcom/android/browser/Tab;
    if-nez v3, :cond_2

    .line 82
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    .line 83
    if-nez v3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v3}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 89
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 91
    .local v4, flags:I
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const/high16 v10, 0x10

    and-int/2addr v10, v4

    if-nez v10, :cond_0

    .line 96
    const-string v10, "show_bookmarks"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 97
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    sget-object v11, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {v10, v11}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    const-string v11, "search"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/SearchManager;

    invoke-virtual {v10}, Landroid/app/SearchManager;->stopSearch()V

    .line 104
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "android.intent.action.SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 111
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 113
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_5

    .line 114
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, urlCookie:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 116
    const-string v10, "url-cookie"

    invoke-virtual {p1, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    .end local v8           #urlCookie:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "rtsp://"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "tel:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 122
    :cond_6
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 129
    :cond_7
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-static {v10, v11, p1}, Lcom/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 133
    invoke-static {p1}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v9

    .line 134
    .local v9, urlData:Lcom/android/browser/IntentHandler$UrlData;
    invoke-virtual {v9}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 135
    new-instance v9, Lcom/android/browser/IntentHandler$UrlData;

    .end local v9           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v10}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v9       #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_8
    const-string v10, "create_new_tab"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v9}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 140
    :cond_9
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v9}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v5

    .line 141
    .local v5, t:Lcom/android/browser/Tab;
    goto/16 :goto_0

    .line 150
    .end local v5           #t:Lcom/android/browser/Tab;
    :cond_a
    const-string v10, "com.android.browser.application_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, appId:Ljava/lang/String;
    iget-object v10, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    const-string v11, "javascript:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 155
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v9}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 158
    :cond_b
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    if-eqz v1, :cond_c

    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 161
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v10, v1}, Lcom/android/browser/TabControl;->getTabFromAppId(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    .line 162
    .local v2, appTab:Lcom/android/browser/Tab;
    if-eqz v2, :cond_c

    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v10

    if-ne v2, v10, :cond_c

    .line 163
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v2}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 164
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v2, v9}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0

    .line 168
    .end local v2           #appTab:Lcom/android/browser/Tab;
    :cond_c
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 170
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v10}, Lcom/android/browser/BrowserSettings;->allowAppTabs()Z

    move-result v10

    if-nez v10, :cond_d

    .line 172
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v10, v1}, Lcom/android/browser/TabControl;->getTabFromAppId(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    .line 173
    .restart local v2       #appTab:Lcom/android/browser/Tab;
    if-eqz v2, :cond_d

    .line 174
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v2, v9}, Lcom/android/browser/Controller;->reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0

    .line 180
    .end local v2           #appTab:Lcom/android/browser/Tab;
    :cond_d
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v11, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/browser/TabControl;->findTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    .line 181
    .restart local v2       #appTab:Lcom/android/browser/Tab;
    if-eqz v2, :cond_e

    .line 183
    invoke-virtual {v2, v1}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 184
    if-eq v3, v2, :cond_0

    .line 185
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v2}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto/16 :goto_0

    .line 194
    :cond_e
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v9}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v6

    .line 195
    .local v6, tab:Lcom/android/browser/Tab;
    if-eqz v6, :cond_0

    .line 196
    invoke-virtual {v6, v1}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x40

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 198
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/browser/Tab;->setCloseOnBack(Z)V

    goto/16 :goto_0

    .line 203
    .end local v2           #appTab:Lcom/android/browser/Tab;
    .end local v6           #tab:Lcom/android/browser/Tab;
    :cond_f
    invoke-virtual {v9}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_18

    iget-object v10, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    const-string v11, "about:debug"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 205
    const-string v10, "about:debug.dom"

    iget-object v11, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 206
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 207
    :cond_10
    const-string v10, "about:debug.dom.file"

    iget-object v11, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 208
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 209
    :cond_11
    const-string v10, "about:debug.render"

    iget-object v11, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 210
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 211
    :cond_12
    const-string v10, "about:debug.render.file"

    iget-object v11, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 212
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 213
    :cond_13
    const-string v10, "about:debug.display"

    iget-object v11, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 214
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->dumpDisplayTree()V

    goto/16 :goto_0

    .line 215
    :cond_14
    const-string v10, "about:debug.nav"

    iget-object v11, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 216
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_0

    .line 217
    :cond_15
    const-string v10, "about:debug.dumpmem"

    iget-object v11, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 219
    new-instance v10, Lcom/android/browser/OutputMemoryInfo;

    invoke-direct {v10}, Lcom/android/browser/OutputMemoryInfo;-><init>()V

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/android/browser/TabControl;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 220
    :cond_16
    const-string v10, "about:debug.dumpmem.file"

    iget-object v11, v9, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 222
    new-instance v10, Lcom/android/browser/OutputMemoryInfo;

    invoke-direct {v10}, Lcom/android/browser/OutputMemoryInfo;-><init>()V

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/android/browser/TabControl;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 224
    :cond_17
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v10}, Lcom/android/browser/BrowserSettings;->toggleDebugSettings()V

    goto/16 :goto_0

    .line 229
    :cond_18
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v3}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 233
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 234
    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v10, v3, v9}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0
.end method
