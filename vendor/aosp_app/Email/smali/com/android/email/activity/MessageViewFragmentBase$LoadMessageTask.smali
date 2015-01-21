.class Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Message;",
        ">;"
    }
.end annotation


# instance fields
.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private final mOkToFetch:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 1
    .parameter
    .parameter "okToFetch"

    .prologue
    .line 1604
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1605
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1606
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    .line 1607
    const/4 v0, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageLoading:Z
    invoke-static {p1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 1608
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 5
    .parameter "params"

    .prologue
    .line 1618
    const-string v2, "LoadMessageTask#doInBackground"

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1619
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1620
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 1621
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 1622
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1624
    :cond_0
    if-eqz v1, :cond_2

    .line 1625
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1626
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v2, :cond_1

    .line 1627
    const/4 v1, 0x0

    .line 1633
    :cond_1
    :goto_0
    const-string v2, "LoadMessageTask#doInBackground"

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1634
    return-object v1

    .line 1629
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    instance-of v2, v2, Lcom/android/email/activity/MessageFileViewFragment;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1631
    const v2, 0x7f080117

    invoke-static {v0, v2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1596
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageLoading:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 1667
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1596
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->onCancelled(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1612
    invoke-super {p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onPreExecute()V

    .line 1613
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageLoading:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 1614
    return-void
.end method

.method protected onSuccess(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const/high16 v2, 0x40

    const/4 v5, 0x0

    .line 1639
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 1640
    if-nez p1, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1642
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageNotExists()V

    .line 1643
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageLoading:Z
    invoke-static {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 1662
    :goto_0
    return-void

    .line 1648
    :cond_0
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 1649
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080067

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1653
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onNeedUpdateAtionBarTitle()V

    .line 1654
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    .line 1655
    const-string v0, "MessageViewFragmentBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iput-boolean v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageIsReload:Z

    .line 1657
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 1658
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->queryContactStatus()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 1659
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JLcom/android/emailcommon/provider/Mailbox;)V

    .line 1660
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/activity/RecentMailboxManager;->getInstance(Landroid/content/Context;)Lcom/android/email/activity/RecentMailboxManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2400(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/RecentMailboxManager;->touch(JJ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1661
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageLoading:Z
    invoke-static {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1596
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->onSuccess(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method
