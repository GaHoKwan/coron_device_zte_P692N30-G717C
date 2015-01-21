.class Lcom/baidu/oauth/BaiduOAuthViaDialog;
.super Lcom/baidu/oauth/BaiduOAuthBase;
.source "BaiduOAuthViaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;,
        Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;
    }
.end annotation


# instance fields
.field private mAuthDialogListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerKey"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/baidu/oauth/BaiduOAuthBase;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "consumerKey"
    .parameter "accessToken"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/baidu/oauth/BaiduOAuthBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/oauth/BaiduOAuthViaDialog;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/baidu/oauth/BaiduOAuthViaDialog;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog;->mAuthDialogListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    return-object v0
.end method

.method private decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 323
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v3, params:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 325
    const-string v6, "&"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, array:[Ljava/lang/String;
    array-length v6, v0

    :goto_0
    if-lt v5, v6, :cond_1

    .line 335
    .end local v0           #array:[Ljava/lang/String;
    :cond_0
    return-object v3

    .line 326
    .restart local v0       #array:[Ljava/lang/String;
    :cond_1
    aget-object v2, v0, v5

    .line 327
    .local v2, parameter:Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, v:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private dialog(Landroid/content/Context;[Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)V
    .locals 1
    .parameter "context"
    .parameter "permissions"
    .parameter "listener"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->dialog(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)V

    .line 131
    return-void
.end method

.method private dialog(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)V
    .locals 5
    .parameter "context"
    .parameter "permissions"
    .parameter "thirdAccessToken"
    .parameter "listener"

    .prologue
    .line 136
    const-string v0, ""

    .line 137
    .local v0, scope:Ljava/lang/String;
    const-string v1, ""

    .line 138
    .local v1, third:Ljava/lang/String;
    const-string v2, ""

    .line 139
    .local v2, url:Ljava/lang/String;
    array-length v3, p2

    if-lez v3, :cond_0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&scope="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&third_access_token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/baidu/oauth/BaiduOAuthViaDialog;->EXPLICIT_AUTH_URL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&client_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->getConsumerKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 149
    :goto_1
    new-instance v3, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    invoke-direct {v3, p0, p1, v2, p4}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;-><init>(Lcom/baidu/oauth/BaiduOAuthViaDialog;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)V

    invoke-virtual {v3}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->show()V

    .line 151
    return-void

    .line 146
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/baidu/oauth/BaiduOAuthViaDialog;->AUTH_URL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&client_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->getConsumerKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 148
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "url"

    .prologue
    .line 312
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 313
    .local v2, u:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 314
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #u:Ljava/net/URL;
    :goto_0
    return-object v0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, e:Ljava/net/MalformedURLException;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public startDialogAuth(Landroid/content/Context;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)Z
    .locals 1
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 110
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->startDialogAuth(Landroid/content/Context;[Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)Z

    move-result v0

    return v0
.end method

.method public startDialogAuth(Landroid/content/Context;[Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)Z
    .locals 3
    .parameter "activity"
    .parameter "permissions"
    .parameter "listener"

    .prologue
    .line 54
    if-nez p3, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    .line 60
    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 61
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 63
    .local v0, cookieManager:Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 64
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 66
    iput-object p3, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog;->mAuthDialogListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    .line 69
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog;->mAuthDialogListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    const-string v2, "Application requires permission to access the Internet"

    invoke-interface {v1, v2}, Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;->onException(Ljava/lang/String;)V

    .line 75
    :cond_1
    new-instance v1, Lcom/baidu/oauth/BaiduOAuthViaDialog$1;

    invoke-direct {v1, p0, p3}, Lcom/baidu/oauth/BaiduOAuthViaDialog$1;-><init>(Lcom/baidu/oauth/BaiduOAuthViaDialog;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->dialog(Landroid/content/Context;[Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)V

    .line 105
    const/4 v1, 0x1

    goto :goto_0
.end method
