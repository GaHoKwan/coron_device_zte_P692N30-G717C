.class Lcom/android/email/Controller$8;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->loadMoreMessages(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$8;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1011
    const-string v5, "Controller#loadMoreMessages"

    invoke-static {v5}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1013
    iget-object v5, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/Controller$8;->val$mailboxId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 1014
    .local v3, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v3, :cond_0

    .line 1015
    const-string v5, "Controller#loadMoreMessages"

    invoke-static {v5}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1045
    :goto_0
    return-void

    .line 1018
    :cond_0
    iget v5, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 1020
    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    iget-wide v6, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v5, v6, v7}, Lcom/android/email/Controller;->searchMore(J)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_1
    const-string v5, "Controller#loadMoreMessages"

    invoke-static {v5}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v2

    .line 1023
    .local v2, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v5, "Controller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessagingException catched: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1028
    .end local v2           #e:Lcom/android/emailcommon/mail/MessagingException;
    :cond_1
    iget-object v5, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1030
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_2

    .line 1031
    const-string v5, "Controller#loadMoreMessages"

    invoke-static {v5}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1035
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1036
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "field"

    const-string v6, "visibleLimit"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v5, "add"

    const/16 v6, 0x19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/email/Controller$8;->val$mailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1039
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1041
    iget v5, v3, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    add-int/lit8 v5, v5, 0x19

    iput v5, v3, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    .line 1042
    iget-object v5, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;
    invoke-static {v5}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;
    invoke-static {v6}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v6

    invoke-virtual {v5, v0, v3, v6}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/email/MessagingListener;)V

    .line 1044
    const-string v5, "Controller#loadMoreMessages"

    invoke-static {v5}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
