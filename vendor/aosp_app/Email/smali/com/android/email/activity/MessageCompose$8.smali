.class Lcom/android/email/activity/MessageCompose$8;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->loadSourceMessage(JZ)V
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
    .line 1394
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$8;->val$restoreViews:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 2

    .prologue
    .line 1463
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$8;->val$restoreViews:Z

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f08009e

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1465
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1467
    :cond_0
    return-void
.end method

.method public onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
    .locals 6
    .parameter "message"
    .parameter "body"

    .prologue
    const/4 v2, 0x0

    .line 1398
    if-nez p2, :cond_1

    move-object v1, v2

    :goto_0
    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 1399
    if-nez p2, :cond_2

    move-object v1, v2

    :goto_1
    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1401
    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 1402
    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1403
    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 1404
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v1, p1}, Lcom/android/email/activity/MessageCompose;->access$2002(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1405
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/email/activity/MessageCompose;->access$2102(Lcom/android/email/activity/MessageCompose;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1407
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose$8;->val$restoreViews:Z

    if-eqz v1, :cond_0

    .line 1408
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1409
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;)V

    .line 1410
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v2, 0x1

    #calls: Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;Z)V

    .line 1413
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageCompose$8$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageCompose$8$1;-><init>(Lcom/android/email/activity/MessageCompose$8;)V

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V

    .line 1442
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1445
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->inferAction()Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, inferredAction:Ljava/lang/String;
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_EDIT_DRAFT action inferredAction result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    if-eqz v0, :cond_3

    .line 1449
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    .line 1456
    .end local v0           #inferredAction:Ljava/lang/String;
    :goto_2
    return-void

    .line 1398
    :cond_1
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 1399
    :cond_2
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1455
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->updateActionSelector()V
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_2
.end method
