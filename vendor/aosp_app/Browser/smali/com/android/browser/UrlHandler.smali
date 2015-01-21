.class public Lcom/android/browser/UrlHandler;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/UrlHandler$RLZTask;
    }
.end annotation


# static fields
.field private static final ACCEPTABLE_WEBSITE_SCHEMES:[Ljava/lang/String; = null

.field static final RLZ_PROVIDER:Ljava/lang/String; = "com.google.android.partnersetup.rlzappprovider"

.field static final RLZ_PROVIDER_URI:Landroid/net/Uri; = null

.field static final SCHEME_WTAI:Ljava/lang/String; = "wtai://wp/"

.field static final SCHEME_WTAI_AP:Ljava/lang/String; = "wtai://wp/ap;"

.field static final SCHEME_WTAI_MC:Ljava/lang/String; = "wtai://wp/mc;"

.field static final SCHEME_WTAI_SD:Ljava/lang/String; = "wtai://wp/sd;"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

.field mController:Lcom/android/browser/Controller;

.field private mIsProviderPresent:Ljava/lang/Boolean;

.field private mRlzUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-string v0, "content://com.google.android.partnersetup.rlzappprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/UrlHandler;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    .line 215
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "about:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javascript:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/UrlHandler;->ACCEPTABLE_WEBSITE_SCHEMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/Controller;)V
    .locals 1
    .parameter "controller"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    .line 55
    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    .line 56
    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    .line 59
    iput-object p1, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    .line 60
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/UrlHandler;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/browser/UrlHandler;->getRlzUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getRlzUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, ap:Ljava/lang/String;
    sget-object v1, Lcom/android/browser/UrlHandler;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    .line 342
    .end local v0           #ap:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    return-object v1
.end method

.method private isSpecializedHandlerAvailable(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 242
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 243
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x40

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 245
    .local v1, handlers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v5

    .line 248
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 249
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 250
    .local v0, filter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v6

    if-eqz v6, :cond_2

    .line 259
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static needsRlzString(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 349
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "http"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "https"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "q"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "rlz"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 354
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, host:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 384
    .end local v2           #host:Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 358
    .restart local v2       #host:Ljava/lang/String;
    :cond_2
    const-string v6, "\\."

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, hostComponents:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 363
    array-length v6, v3

    add-int/lit8 v1, v6, -0x2

    .line 364
    .local v1, googleComponent:I
    aget-object v0, v3, v1

    .line 365
    .local v0, component:Ljava/lang/String;
    const-string v6, "google"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 366
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    const-string v6, "co"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    :cond_3
    array-length v6, v3

    add-int/lit8 v1, v6, -0x3

    .line 371
    const-string v6, "google"

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 377
    :cond_4
    if-lez v1, :cond_5

    const-string v6, "corp"

    add-int/lit8 v7, v1, -0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 382
    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private rlzProviderPresent()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 329
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.google.android.partnersetup.rlzappprovider"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    .line 331
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static urlHasAcceptableScheme(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/browser/UrlHandler;->ACCEPTABLE_WEBSITE_SCHEMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 230
    sget-object v2, Lcom/android/browser/UrlHandler;->ACCEPTABLE_WEBSITE_SCHEMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    const/4 v1, 0x1

    goto :goto_0

    .line 229
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method handleMenuClick(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .locals 5
    .parameter "tab"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 267
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->isMenuDown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v3, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v3, p2, v0, v2, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    .line 271
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 275
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 268
    goto :goto_0

    :cond_2
    move v1, v2

    .line 275
    goto :goto_1
.end method

.method shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v2

    .line 70
    :cond_1
    const-string v4, "wtai://wp/"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    const-string v4, "wtai://wp/mc;"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wtai://wp/mc;"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->closeEmptyTab()V

    move v2, v3

    .line 83
    goto :goto_0

    .line 87
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v4, "wtai://wp/sd;"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    const-string v4, "wtai://wp/ap;"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    :cond_3
    const-string v4, "about:"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/browser/UrlHandler;->rlzProviderPresent()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    .local v1, siteUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/browser/UrlHandler;->needsRlzString(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    new-instance v4, Lcom/android/browser/UrlHandler$RLZTask;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/browser/UrlHandler$RLZTask;-><init>(Lcom/android/browser/UrlHandler;Lcom/android/browser/Tab;Landroid/net/Uri;Landroid/webkit/WebView;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 116
    goto :goto_0

    .line 120
    .end local v1           #siteUri:Landroid/net/Uri;
    :cond_4
    iget-object v4, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/mediatek/browser/ext/Extensions;->getSmallFeaturePlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/UrlHandler;->mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    .line 121
    iget-object v4, p0, Lcom/android/browser/UrlHandler;->mBrowserSmallFeatureEx:Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;

    invoke-interface {v4, p3}, Lcom/mediatek/browser/ext/IBrowserSmallFeatureEx;->redirectCustomerUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 122
    goto/16 :goto_0

    .line 126
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/browser/UrlHandler;->startActivityForUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v3

    .line 127
    goto/16 :goto_0

    .line 130
    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/android/browser/UrlHandler;->handleMenuClick(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 131
    goto/16 :goto_0
.end method

.method startActivityForUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .locals 9
    .parameter "tab"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 141
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p2, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_1

    .line 150
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, packagename:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 152
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://search?q=pname:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v5, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 160
    iget-object v5, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v5}, Lcom/android/browser/Controller;->closeEmptyTab()V

    .line 212
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #packagename:Ljava/lang/String;
    :goto_0
    return v4

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, ex:Ljava/net/URISyntaxException;
    const-string v4, "Browser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 144
    goto :goto_0

    .end local v0           #ex:Ljava/net/URISyntaxException;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #packagename:Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 163
    goto :goto_0

    .line 169
    .end local v3           #packagename:Ljava/lang/String;
    :cond_1
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 172
    if-eqz p1, :cond_3

    .line 173
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 176
    :cond_2
    const-string v6, "com.android.browser.application_id"

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :cond_3
    sget-object v6, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 182
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v1}, Lcom/android/browser/UrlHandler;->isSpecializedHandlerAvailable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 183
    goto :goto_0

    .line 187
    :cond_4
    if-eqz p2, :cond_5

    const-string v6, "https://www.google.com/calendar/event?"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 188
    const-string v4, "Browser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url is sent by google calendar to show event detail, use Browser to show event detail, url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 189
    goto/16 :goto_0

    .line 193
    :cond_5
    :try_start_1
    invoke-static {p2}, Lcom/android/browser/UrlHandler;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 196
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    :cond_6
    const-string v6, "disable_url_override"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    const/4 v7, -0x1

    invoke-virtual {v6, v1, v7}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 204
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v6}, Lcom/android/browser/Controller;->closeEmptyTab()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 207
    :catch_1
    move-exception v4

    :cond_7
    move v4, v5

    .line 212
    goto/16 :goto_0
.end method
