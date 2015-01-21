.class public Lcom/mediatek/browser/plugin/Op09BrowserSmallFeatureEx;
.super Lcom/mediatek/browser/ext/BrowserSmallFeatureEx;
.source "Op09BrowserSmallFeatureEx.java"


# static fields
.field private static final PREF_SEARCH_ENGINE:Ljava/lang/String; = "search_engine"

.field public static final SERCH_ENGIN_GOOGLE:Ljava/lang/String; = "google"

.field private static final SITE_NAVIGATION_COUNT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "BrowserPluginEx"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOperatorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/browser/ext/BrowserSmallFeatureEx;-><init>(Landroid/content/Context;)V

    .line 28
    const/16 v0, 0x9

    iput v0, p0, Lcom/mediatek/browser/plugin/Op09BrowserSmallFeatureEx;->mOperatorId:I

    .line 35
    iput-object p1, p0, Lcom/mediatek/browser/plugin/Op09BrowserSmallFeatureEx;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public addDefaultBookmarksForCustomer(Lcom/mediatek/browser/ext/IBrowserProvider2Ex;Landroid/database/sqlite/SQLiteDatabase;JI)I
    .locals 7
    .parameter "mBrowserProvider2"
    .parameter "db"
    .parameter "id"
    .parameter "position"

    .prologue
    .line 45
    const-string v0, "BrowserPluginEx"

    const-string v1, "Enter: addDefaultBookmarksForCustomer --OP09 implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/mediatek/browser/plugin/Op09BrowserSmallFeatureEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 49
    .local v4, bookmarks:[Ljava/lang/CharSequence;
    const/16 v5, 0x9

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/browser/ext/IBrowserProvider2Ex;->addDefaultBookmarksHost(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public getCustomerHomepage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    const-string v0, "BrowserPluginEx"

    const-string v1, "Enter: getCustomerHomepage --OP09 implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/mediatek/browser/plugin/Op09BrowserSmallFeatureEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLoadPageMode()Z
    .locals 2

    .prologue
    .line 98
    const-string v0, "BrowserPluginEx"

    const-string v1, "Enter: getDefaultLoadPageMode --OP09 implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getPredefinedWebsites()[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 67
    const-string v0, "BrowserPluginEx"

    const-string v1, "Enter: getPredefinedWebsites --OP09 implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/mediatek/browser/plugin/Op09BrowserSmallFeatureEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSearchEngine(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter "mPrefs"

    .prologue
    .line 72
    const-string v0, "BrowserPluginEx"

    const-string v1, "Enter: getSearchEngine --OP09 implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "search_engine"

    const-string v1, "google"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSiteNavigationCount()I
    .locals 2

    .prologue
    .line 62
    const-string v0, "BrowserPluginEx"

    const-string v1, "Enter: getSiteNavigationCount --OP09 implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/16 v0, 0x9

    return v0
.end method

.method public redirectCustomerUrl(Ljava/lang/String;)Z
    .locals 8
    .parameter "url"

    .prologue
    const/high16 v7, 0x1000

    const/4 v3, 0x1

    .line 77
    const-string v4, "BrowserPluginEx"

    const-string v5, "Enter: redirectCustomerUrl --OP09 implement"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v4, "estore:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/browser/plugin/Op09BrowserSmallFeatureEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.eshore.ezone"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v4, p0, Lcom/mediatek/browser/plugin/Op09BrowserSmallFeatureEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "http://3g.189store.com/general"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 89
    .local v2, newUrl:Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v4, p0, Lcom/mediatek/browser/plugin/Op09BrowserSmallFeatureEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #newUrl:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public shouldChangeBookmarkMenuManner()Z
    .locals 2

    .prologue
    .line 57
    const-string v0, "BrowserPluginEx"

    const-string v1, "Enter: shouldChangeBookmarkMenuManner --OP09 implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public shouldCreateBookmarksOptionMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 52
    const-string v0, "BrowserPluginEx"

    const-string v1, "Enter: createBookmarksOptionMenu --OP09 implement"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x1

    return v0
.end method
