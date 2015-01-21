.class Lcom/android/email/activity/MessageCompose$7;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->resumeDraft(JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$restoreViews:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$7;->val$restoreViews:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f08009e

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1356
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1357
    return-void
.end method

.method public onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
    .locals 9
    .parameter "message"
    .parameter "body"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v3, 0x0

    .line 1294
    if-nez p2, :cond_3

    move-object v2, v3

    :goto_0
    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 1295
    if-nez p2, :cond_4

    move-object v2, v3

    :goto_1
    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1296
    if-nez p2, :cond_5

    move-object v2, v3

    :goto_2
    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 1297
    if-nez p2, :cond_6

    move-object v2, v3

    :goto_3
    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1298
    if-nez p2, :cond_7

    :goto_4
    iput-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 1299
    if-nez p2, :cond_8

    const-wide/16 v2, 0x0

    :goto_5
    iput-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 1301
    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-nez v2, :cond_0

    .line 1302
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->updateReadFlag(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    invoke-static {v2, p1}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1305
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2, p1}, Lcom/android/email/activity/MessageCompose;->access$1502(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1306
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose$7;->val$restoreViews:Z

    invoke-virtual {v2, p1, v3}, Lcom/android/email/activity/MessageCompose;->processDraftMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 1309
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/MessageCompose$7$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageCompose$7$1;-><init>(Lcom/android/email/activity/MessageCompose$7;)V

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V

    .line 1325
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageCompose$7$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$7$2;-><init>(Lcom/android/email/activity/MessageCompose$7;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1336
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v2, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1337
    .local v0, sourceMessageId:J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_2

    const-string v2, "com.android.email.intent.action.REPLY"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.email.intent.action.REPLY_ALL"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.email.intent.action.FORWARD"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1340
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v3, 0x0

    #calls: Lcom/android/email/activity/MessageCompose;->loadSourceMessage(JZ)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/email/activity/MessageCompose;->access$1900(Lcom/android/email/activity/MessageCompose;JZ)V

    .line 1351
    :cond_2
    return-void

    .line 1294
    .end local v0           #sourceMessageId:J
    :cond_3
    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 1295
    :cond_4
    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1296
    :cond_5
    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    goto/16 :goto_2

    .line 1297
    :cond_6
    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    goto/16 :goto_3

    .line 1298
    :cond_7
    iget-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    goto/16 :goto_4

    .line 1299
    :cond_8
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    goto/16 :goto_5
.end method
