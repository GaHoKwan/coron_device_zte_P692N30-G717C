.class Lcom/android/email/MessagingController$4;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/email/MessagingListener;Lcom/android/emailcommon/service/EmailExternalCalls;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/service/EmailExternalCalls;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p3, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p4, p0, Lcom/android/email/MessagingController$4;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/emailcommon/provider/Mailbox;

    #calls: Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/MessagingController;->access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    iget-object v0, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mSendStatus:I
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$500(Lcom/android/email/MessagingController;)I

    move-result v0

    if-nez v0, :cond_0

    .line 449
    :try_start_1
    iget-object v0, p0, Lcom/android/email/MessagingController$4;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailExternalCalls;->updateCallback(IJJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v6

    .line 452
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "Email"

    const-string v1, "synchronizeMailbox Failed"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/email/MessagingController$4;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailExternalCalls;->updateCallback(IJJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 458
    :catch_1
    move-exception v6

    .line 459
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v0, "Email"

    const-string v1, "synchronizeMailbox success"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mSendStatus:I
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$500(Lcom/android/email/MessagingController;)I

    move-result v0

    if-nez v0, :cond_1

    .line 449
    :try_start_3
    iget-object v0, p0, Lcom/android/email/MessagingController$4;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailExternalCalls;->updateCallback(IJJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 460
    :goto_1
    throw v7

    .line 451
    :catch_2
    move-exception v6

    .line 452
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v0, "Email"

    const-string v1, "synchronizeMailbox Failed"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 456
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/email/MessagingController$4;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailExternalCalls;->updateCallback(IJJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 458
    :catch_3
    move-exception v6

    .line 459
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v0, "Email"

    const-string v1, "synchronizeMailbox success"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
