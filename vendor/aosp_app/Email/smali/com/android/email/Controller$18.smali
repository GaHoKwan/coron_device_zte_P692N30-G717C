.class Lcom/android/email/Controller$18;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->deleteAccount(JLcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J

.field final synthetic val$callback:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JLcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/android/email/Controller$18;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$18;->val$accountId:J

    iput-object p4, p0, Lcom/android/email/Controller$18;->val$callback:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1978
    const-string v0, "Controller#deleteAccount"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1979
    iget-object v0, p0, Lcom/android/email/Controller$18;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$18;->val$accountId:J

    iget-object v3, p0, Lcom/android/email/Controller$18;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V

    .line 1980
    iget-object v0, p0, Lcom/android/email/Controller$18;->val$callback:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-wide v1, p0, Lcom/android/email/Controller$18;->val$accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->finishRemoveAccount(J)V

    .line 1981
    const-string v0, "Controller#deleteAccount"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1982
    return-void
.end method
