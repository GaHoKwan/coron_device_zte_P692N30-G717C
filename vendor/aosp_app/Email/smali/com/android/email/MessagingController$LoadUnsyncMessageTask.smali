.class public Lcom/android/email/MessagingController$LoadUnsyncMessageTask;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadUnsyncMessageTask"
.end annotation


# instance fields
.field private final HEADER:I

.field private mAccountInner:Lcom/android/emailcommon/provider/Account;

.field private mRemoteStoreInner:Lcom/android/email/mail/Store;

.field private mToMailboxInner:Lcom/android/emailcommon/provider/Mailbox;

.field private mUnsyncedMessageInner:Lcom/android/emailcommon/mail/Message;

.field final synthetic this$0:Lcom/android/email/MessagingController;


# direct methods
.method public constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 1
    .parameter
    .parameter "account"
    .parameter "remoteStore"
    .parameter "toMailbox"

    .prologue
    .line 2900
    iput-object p1, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2897
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->HEADER:I

    .line 2901
    iput-object p2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->mAccountInner:Lcom/android/emailcommon/provider/Account;

    .line 2902
    iput-object p3, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->mRemoteStoreInner:Lcom/android/email/mail/Store;

    .line 2903
    iput-object p4, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->mToMailboxInner:Lcom/android/emailcommon/provider/Mailbox;

    .line 2904
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2908
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->mRemoteStoreInner:Lcom/android/email/mail/Store;

    iget-object v3, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->mToMailboxInner:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 2909
    .local v1, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 2910
    :goto_0
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual {v2}, Lcom/android/email/MessagingController;->getUnsyncedMessages()Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->mUnsyncedMessageInner:Lcom/android/emailcommon/mail/Message;

    if-eqz v2, :cond_1

    .line 2911
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->mAccountInner:Lcom/android/emailcommon/provider/Account;

    iget-object v4, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->mUnsyncedMessageInner:Lcom/android/emailcommon/mail/Message;

    iget-object v5, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->mToMailboxInner:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/email/MessagingController;->loadUnsyncedMessage(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Mailbox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2915
    .end local v1           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    :catch_0
    move-exception v0

    .line 2916
    .local v0, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_1
    const-string v2, "LoadUnsyncMessageAsyncTask"

    invoke-static {v2, v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2918
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    #setter for: Lcom/android/email/MessagingController;->mMessagingException:Lcom/android/emailcommon/mail/MessagingException;
    invoke-static {v2, v0}, Lcom/android/email/MessagingController;->access$1402(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/MessagingException;)Lcom/android/emailcommon/mail/MessagingException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2920
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v2, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2921
    :try_start_2
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$1510(Lcom/android/email/MessagingController;)I

    .line 2922
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$1500(Lcom/android/email/MessagingController;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2923
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    iget-object v2, v2, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2925
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2927
    .end local v0           #me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_1
    return-void

    .line 2914
    .restart local v1       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2920
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v2, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2921
    :try_start_4
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$1510(Lcom/android/email/MessagingController;)I

    .line 2922
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$1500(Lcom/android/email/MessagingController;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2923
    iget-object v2, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    iget-object v2, v2, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2925
    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .end local v1           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v0       #me:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 2920
    .end local v0           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2921
    :try_start_6
    iget-object v4, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$1510(Lcom/android/email/MessagingController;)I

    .line 2922
    iget-object v4, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mRunningSyncThreadCount:I
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$1500(Lcom/android/email/MessagingController;)I

    move-result v4

    if-nez v4, :cond_3

    .line 2923
    iget-object v4, p0, Lcom/android/email/MessagingController$LoadUnsyncMessageTask;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v4, Lcom/android/email/MessagingController;->mUnsyncedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 2925
    :cond_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method
