.class Lcom/android/email/MessagingController$12;
.super Lcom/android/email/MessagingController$CancelableRunnable;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$background:Z

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JJJZJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2411
    iput-object p1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$12;->val$accountId:J

    iput-wide p6, p0, Lcom/android/email/MessagingController$12;->val$messageId:J

    iput-boolean p8, p0, Lcom/android/email/MessagingController$12;->val$background:Z

    iput-wide p9, p0, Lcom/android/email/MessagingController$12;->val$mailboxId:J

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/MessagingController$CancelableRunnable;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/MessagingController$1;)V

    .line 2412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/MessagingController$12;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 2583
    const-string v1, "cancel loadAttachment"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;)V

    .line 2587
    :try_start_0
    iget-object v1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2588
    const-string v1, "Attachment"

    const-string v2, "Close the connection"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/MessagingController$12;->mIsCancelled:Z

    .line 2590
    iget-object v1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->closeConnection()V

    .line 2591
    iget-object v1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2592
    iget-object v1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v2, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v1, v2}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2597
    :cond_0
    :goto_0
    return-void

    .line 2594
    :catch_0
    move-exception v0

    .line 2595
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v1, "loadAttachment cancel failed"

    invoke-static {v1, v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 34

    .prologue
    .line 2417
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2418
    const-string v3, "Attachment"

    const-string v4, "Attachment downloading canceled before really starting"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    .line 2579
    :goto_0
    return-void

    .line 2577
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2424
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v21

    .line 2426
    .local v21, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v21, :cond_1

    .line 2427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$12;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "The attachment is null"

    invoke-direct {v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/MessagingController$12;->val$background:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2432
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$12;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-virtual/range {v3 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 2439
    :cond_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$accountId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v20

    .line 2440
    .local v20, account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$mailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v26

    .line 2441
    .local v26, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$messageId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v27

    .line 2444
    .local v27, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v20, :cond_3

    if-eqz v26, :cond_3

    if-nez v27, :cond_4

    .line 2445
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$12;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Account, mailbox, message or attachment are null"

    invoke-direct {v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/MessagingController$12;->val$background:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    .line 2451
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/emailcommon/TrafficFlags;->getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2454
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 2457
    .local v30, remoteServerId:Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2458
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 2460
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v31

    .line 2461
    .local v31, remoteStore:Lcom/android/email/mail/Store;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v29

    .line 2462
    .local v29, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    const-string v3, "Attachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessagingController : loadAttachment : remoteFolder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2

    .line 2466
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2467
    const-string v3, "Attachment"

    const-string v5, "Attachment downloading canceled before opening remote folder"

    invoke-static {v3, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v3

    .line 2473
    :cond_6
    :try_start_b
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v0, v29

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v0}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2476
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 2479
    :try_start_c
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v32

    .line 2480
    .local v32, storeMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v24, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v24 .. v24}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2481
    .local v24, fp:Lcom/android/emailcommon/mail/FetchProfile;
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    if-eqz v3, :cond_8

    .line 2482
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2483
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v32, v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2484
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2486
    const-string v3, "Attachment"

    const-string v4, "Abandon downloaded attachment data"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v3

    .line 2476
    .end local v24           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v32           #storeMessage:Lcom/android/emailcommon/mail/Message;
    :catchall_6
    move-exception v3

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2

    .line 2547
    .end local v20           #account:Lcom/android/emailcommon/provider/Account;
    .end local v21           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v26           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v27           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v29           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v30           #remoteServerId:Ljava/lang/String;
    .end local v31           #remoteStore:Lcom/android/email/mail/Store;
    :catch_0
    move-exception v10

    .line 2550
    .local v10, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/email/MessagingController$12;->mIsCancelled:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-eqz v3, :cond_c

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_7
    move-exception v3

    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v3

    .line 2490
    .end local v10           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v20       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v21       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v24       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .restart local v26       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v27       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v29       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v30       #remoteServerId:Ljava/lang/String;
    .restart local v31       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v32       #storeMessage:Lcom/android/emailcommon/mail/Message;
    :cond_7
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 2492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateAttachmentUriFromSourceMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 2546
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$12;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-virtual/range {v3 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJ)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_8
    move-exception v3

    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v3

    .line 2496
    :cond_8
    :try_start_14
    new-instance v33, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct/range {v33 .. v33}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 2497
    .local v33, storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v3, v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 2498
    const-string v3, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    const-string v3, "Content-Type"

    const-string v4, "%s;\n name=\"%s\""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAttachment  attachment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2504
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 2505
    .local v23, encoding:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2506
    const-string v23, "base64"

    .line 2508
    :cond_9
    const-string v3, "Content-Transfer-Encoding"

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    new-instance v28, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v28 .. v28}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 2511
    .local v28, multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v3, "mixed"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 2512
    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Multipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 2514
    const-string v3, "Content-Type"

    const-string v4, "multipart/mixed"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 2518
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    const/4 v3, 0x1

    new-array v9, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v32, v9, v3

    new-instance v3, Lcom/android/email/Controller$MessageRetrievalListenerBridge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$1300(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-direct/range {v3 .. v8}, Lcom/android/email/Controller$MessageRetrievalListenerBridge;-><init>(Lcom/android/email/Controller;JJ)V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v9, v1, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2523
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2527
    invoke-virtual/range {v33 .. v33}, Lcom/android/emailcommon/internet/MimeBodyPart;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v3

    if-nez v3, :cond_a

    .line 2528
    const-string v3, "messagingcontroller->body is null"

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2529
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Attachment not loaded."

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_2

    .line 2558
    .end local v20           #account:Lcom/android/emailcommon/provider/Account;
    .end local v21           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v23           #encoding:Ljava/lang/String;
    .end local v24           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v26           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v27           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v28           #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .end local v29           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v30           #remoteServerId:Ljava/lang/String;
    .end local v31           #remoteStore:Lcom/android/email/mail/Store;
    .end local v32           #storeMessage:Lcom/android/emailcommon/mail/Message;
    .end local v33           #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :catch_1
    move-exception v25

    .line 2559
    .local v25, ioe:Ljava/io/IOException;
    :try_start_15
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing attachment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/email/MessagingController$12;->mIsCancelled:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    if-eqz v3, :cond_e

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_9
    move-exception v3

    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v3

    .line 2535
    .end local v25           #ioe:Ljava/io/IOException;
    .restart local v20       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v21       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v23       #encoding:Ljava/lang/String;
    .restart local v24       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .restart local v26       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v27       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v28       #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .restart local v29       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v30       #remoteServerId:Ljava/lang/String;
    .restart local v31       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v32       #storeMessage:Lcom/android/emailcommon/mail/Message;
    .restart local v33       #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_a
    :try_start_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2536
    const-string v3, "Attachment"

    const-string v4, "Abandon downloaded attachment data"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_2

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    throw v3

    .line 2541
    :cond_b
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$accountId:J

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/emailcommon/utility/ConversionUtilities;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_2

    goto/16 :goto_1

    .line 2566
    .end local v20           #account:Lcom/android/emailcommon/provider/Account;
    .end local v21           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v23           #encoding:Ljava/lang/String;
    .end local v24           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v26           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v27           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v28           #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .end local v29           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v30           #remoteServerId:Ljava/lang/String;
    .end local v31           #remoteStore:Lcom/android/email/mail/Store;
    .end local v32           #storeMessage:Lcom/android/emailcommon/mail/Message;
    .end local v33           #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :catch_2
    move-exception v22

    .line 2569
    .local v22, e:Ljava/lang/NullPointerException;
    :try_start_1a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/email/MessagingController$12;->mIsCancelled:Z

    if-nez v3, :cond_f

    .line 2570
    throw v22
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 2573
    .end local v22           #e:Ljava/lang/NullPointerException;
    :catchall_b
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v4, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v6, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v5, v6}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v6, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v5, v6, v7}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v5, v5, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    throw v3

    .line 2553
    .restart local v10       #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_c
    :try_start_1c
    sget-boolean v3, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v3, :cond_d

    .line 2554
    const-string v3, "Email"

    const-string v4, ""

    invoke-static {v3, v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2556
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$12;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$12;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/MessagingController$12;->val$background:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    throw v3

    .line 2563
    .end local v10           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v25       #ioe:Ljava/io/IOException;
    :cond_e
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$12;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$12;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    move-wide/from16 v16, v0

    new-instance v18, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v3, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController$12;->val$background:Z

    move/from16 v19, v0

    invoke-virtual/range {v11 .. v19}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 2573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    throw v3

    .line 2573
    .end local v25           #ioe:Ljava/io/IOException;
    .restart local v22       #e:Ljava/lang/NullPointerException;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v4, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2574
    :try_start_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/MessagingController;->mAttachmentFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-static {v3, v5}, Lcom/android/email/MessagingController;->access$1102(Lcom/android/email/MessagingController;Lcom/android/emailcommon/mail/Folder;)Lcom/android/emailcommon/mail/Folder;

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    const-wide/16 v5, -0x1

    #setter for: Lcom/android/email/MessagingController;->mDownloadingAttachmentId:J
    invoke-static {v3, v5, v6}, Lcom/android/email/MessagingController;->access$1202(Lcom/android/email/MessagingController;J)J

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, v3, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$12;->val$attachmentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2577
    monitor-exit v4

    goto/16 :goto_0

    :catchall_e
    move-exception v3

    monitor-exit v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    throw v3

    .end local v22           #e:Ljava/lang/NullPointerException;
    :catchall_f
    move-exception v3

    :try_start_21
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    throw v3
.end method
