.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;
.super Landroid/os/AsyncTask;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;->onConnectService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

.field private final synthetic val$newUid:Ljava/lang/String;

.field private final synthetic val$oldUid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->val$newUid:Ljava/lang/String;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->val$oldUid:Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 452
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->val$newUid:Ljava/lang/String;

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->saveUidToSharedPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->val$newUid:Ljava/lang/String;

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->changeDataBaseByUid(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$10(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getBaiduAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, accessToken:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-static {v1, v0}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->saveAccessTokenToSharedPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->val$oldUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "wangna"

    const-string v2, "changed from unlogin to login state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v1, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-direct {v1, v2}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->parse()V

    .line 462
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 466
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->val$oldUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initViewOnConnect(Z)V
    invoke-static {v1, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$12(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Z)V

    .line 467
    return-void

    .line 466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
