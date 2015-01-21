.class Lcom/android/email/MessagingController$14;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->checkMail(JJLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$sendingMessage:Z

.field final synthetic val$sentboxId:J

.field final synthetic val$tag:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JZJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2813
    iput-object p1, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$14;->val$accountId:J

    iput-boolean p4, p0, Lcom/android/email/MessagingController$14;->val$sendingMessage:Z

    iput-wide p5, p0, Lcom/android/email/MessagingController$14;->val$sentboxId:J

    iput-wide p7, p0, Lcom/android/email/MessagingController$14;->val$tag:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2818
    const-wide/16 v4, -0x1

    .line 2819
    .local v4, inboxId:J
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$14;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 2820
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v8, :cond_1

    .line 2821
    iget-boolean v0, p0, Lcom/android/email/MessagingController$14;->val$sendingMessage:Z

    if-eqz v0, :cond_0

    .line 2822
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    iget-wide v1, p0, Lcom/android/email/MessagingController$14;->val$sentboxId:J

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/email/MessagingController;->sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/Account;J)V

    .line 2826
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$14;->val$accountId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v4

    .line 2827
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 2828
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 2830
    .local v9, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v9, :cond_1

    .line 2831
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    invoke-static {v0, v8, v9}, Lcom/android/email/MessagingController;->access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 2835
    .end local v9           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/MessagingController$14;->val$accountId:J

    iget-wide v6, p0, Lcom/android/email/MessagingController$14;->val$tag:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V

    .line 2836
    return-void
.end method
