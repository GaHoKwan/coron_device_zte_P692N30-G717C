.class Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;
.super Ljava/lang/Object;
.source "BaiduPcs.java"

# interfaces
.implements Lcom/baidu/oauth/BaiduOAuth$OAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->bindBaiduPcs(Ljava/lang/String;Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

.field private final synthetic val$listener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->val$listener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->val$listener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "BaiduPcs"

    const-string v1, "in bindBaiduPcs(), onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->val$listener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;->onComplete(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public onComplete(Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;)V
    .locals 4
    .parameter "oauth"

    .prologue
    .line 73
    const-string v1, "BaiduPcs"

    const-string v2, "in bindBaiduPcs(), onComplete() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {p1}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mAccessToken:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {p1}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->getExpiresIn()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mExpires:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->initBaiduPcs(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    #getter for: Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->access$0(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "baidu_access_token"

    invoke-virtual {p1}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    .end local v0           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->val$listener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->val$listener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;->onComplete(I)V

    .line 84
    :cond_1
    return-void
.end method

.method public onException(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 67
    const-string v0, "BaiduPcs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in bindBaiduPcs(), onException() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->val$listener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;->val$listener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;->onComplete(I)V

    .line 71
    :cond_0
    return-void
.end method
