.class Lcom/android/email/Controller$4;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->updateMailbox(JJLcom/android/emailcommon/service/EmailExternalCalls;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J

.field final synthetic val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JJLcom/android/emailcommon/service/EmailExternalCalls;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/email/Controller$4;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$4;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/Controller$4;->val$mailboxId:J

    iput-object p6, p0, Lcom/android/email/Controller$4;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/email/Controller$4;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$4;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 713
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    iget-object v0, p0, Lcom/android/email/Controller$4;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$4;->val$mailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v8

    .line 714
    .local v8, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v6, :cond_0

    if-nez v8, :cond_1

    .line 716
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/email/Controller$4;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/email/Controller$4;->val$accountId:J

    iget-wide v4, p0, Lcom/android/email/Controller$4;->val$mailboxId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailExternalCalls;->updateCallback(IJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v7

    .line 720
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException catched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/android/email/Controller$4;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;
    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$4;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;
    invoke-static {v1}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/Controller$4;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    invoke-virtual {v0, v6, v8, v1, v2}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/email/MessagingListener;Lcom/android/emailcommon/service/EmailExternalCalls;)V

    goto :goto_0
.end method
