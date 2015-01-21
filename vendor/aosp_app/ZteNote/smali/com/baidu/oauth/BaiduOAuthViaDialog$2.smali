.class Lcom/baidu/oauth/BaiduOAuthViaDialog$2;
.super Ljava/lang/Object;
.source "BaiduOAuthViaDialog.java"

# interfaces
.implements Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/oauth/BaiduOAuthViaDialog;->startDialogExplicitAuth(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

.field private final synthetic val$listener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/BaiduOAuthViaDialog;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

    iput-object p2, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->val$listener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->val$listener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    invoke-interface {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;->onCancel()V

    .line 162
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 139
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 141
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->setAccessToken(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->setAccessExpiresIn(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

    const-string v1, "session_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->setmSessionKey(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

    const-string v1, "session_secret"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->setmSessionSecret(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

    invoke-virtual {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->IsSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->val$listener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    invoke-interface {v0, p1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->val$listener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    const-string v1, "access_token not valid"

    invoke-interface {v0, v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;->onException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$2;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog;->mAuthDialogListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
    invoke-static {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->access$1(Lcom/baidu/oauth/BaiduOAuthViaDialog;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;->onException(Ljava/lang/String;)V

    .line 157
    return-void
.end method
