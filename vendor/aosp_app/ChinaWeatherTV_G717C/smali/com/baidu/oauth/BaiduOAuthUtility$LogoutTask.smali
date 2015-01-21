.class Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;
.super Landroid/os/AsyncTask;
.source "BaiduOAuthUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/BaiduOAuthUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogoutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mlogoutListener:Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;

.field final synthetic this$0:Lcom/baidu/oauth/BaiduOAuthUtility;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/BaiduOAuthUtility;Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;)V
    .locals 1
    .parameter
    .parameter "il"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;->mlogoutListener:Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;

    .line 267
    iput-object p2, p0, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;->mlogoutListener:Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;

    .line 268
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, ret:Z
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 280
    new-instance v1, Lcom/baidu/oauth/BaiduOAuthUtility;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v1, v2}, Lcom/baidu/oauth/BaiduOAuthUtility;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, utility:Lcom/baidu/oauth/BaiduOAuthUtility;
    invoke-virtual {v1}, Lcom/baidu/oauth/BaiduOAuthUtility;->logout()Z

    move-result v0

    .line 284
    .end local v1           #utility:Lcom/baidu/oauth/BaiduOAuthUtility;
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "mlogout"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;->mlogoutListener:Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;->onResult(Z)V

    .line 273
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
