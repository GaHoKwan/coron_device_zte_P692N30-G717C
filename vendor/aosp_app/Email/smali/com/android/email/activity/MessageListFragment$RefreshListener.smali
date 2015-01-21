.class Lcom/android/email/activity/MessageListFragment$RefreshListener;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/RefreshManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2021
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$RefreshListener;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public onMessagingError(JJLjava/lang/String;)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "message"

    .prologue
    .line 2024
    return-void
.end method

.method public onRefreshStatusChanged(JJ)V
    .locals 7
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v6, 0x0

    .line 2033
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateListFooter()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$4500(Lcom/android/email/activity/MessageListFragment;)V

    .line 2034
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 2035
    const-string v0, "MessagelistFragment:onRefreshStatusChanged(), mailboxId = -1, so we just return"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2054
    :cond_0
    :goto_0
    return-void

    .line 2043
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mWaitLoading:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$2700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$3400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/RefreshManager;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mWaitLoading:Z
    invoke-static {v0, v6}, Lcom/android/email/activity/MessageListFragment;->access$2702(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 2047
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageListFragment: onRefreshStatusChanged: setListAdapter : count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    new-instance v0, Lcom/android/email/activity/MessageListFragment$CheckMessageCountTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment$CheckMessageCountTask;-><init>(Lcom/android/email/activity/MessageListFragment;JJ)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancelPreviousAndExecuteParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0
.end method

.method public onStopRefreshIcon(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 2029
    return-void
.end method
