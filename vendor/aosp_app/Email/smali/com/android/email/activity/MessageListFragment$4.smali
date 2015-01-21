.class Lcom/android/email/activity/MessageListFragment$4;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEmptyAndLoading(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 1806
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$3400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/RefreshManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1807
    :cond_0
    const-string v3, "MessageListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmptyAndLoading have null parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$3400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/RefreshManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    :cond_1
    :goto_0
    return v2

    .line 1812
    :cond_2
    const/4 v0, 0x0

    .line 1814
    .local v0, b:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$3400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/RefreshManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v4}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1818
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 1815
    :catch_0
    move-exception v1

    .line 1816
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "MessageListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmptyAndLoading throw out NPE with mailbox id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1604
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1605
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/activity/MessagesAdapter;->createLoader(Landroid/content/Context;Lcom/android/email/MessageListContext;)Landroid/content/Loader;

    move-result-object v2

    .line 1638
    :goto_0
    return-object v2

    .line 1609
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v0

    .line 1611
    .local v0, listContext:Lcom/android/email/MessageListContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCreateLoader(messages) listContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 1615
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1616
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v1

    .line 1620
    .local v1, searchInfo:Lcom/android/email/MessageListContext;
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ListFragment;->setListShownNoAnimation(Z)V

    .line 1621
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageListFragment$4$1;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MessageListFragment$4$1;-><init>(Lcom/android/email/activity/MessageListFragment$4;Lcom/android/email/MessageListContext;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1637
    .end local v1           #searchInfo:Lcom/android/email/MessageListContext;
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v3, 0x1

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageListFragment;->access$902(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1638
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/email/activity/MessagesAdapter;->createLoader(Landroid/content/Context;Lcom/android/email/MessageListContext;)Landroid/content/Loader;

    move-result-object v2

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1644
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onLoadFinished(messages) mailboxId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v10}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    move-object v1, p2

    .line 1647
    check-cast v1, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;

    .line 1649
    .local v1, cursor:Lcom/android/email/activity/MessagesAdapter$MessagesCursor;
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1653
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1654
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v9}, Lcom/android/email/activity/EmailActivity;->getUIController()Lcom/android/email/activity/UIControllerBase;

    move-result-object v8

    .line 1655
    .local v8, uiController:Lcom/android/email/activity/UIControllerBase;
    if-eqz v8, :cond_0

    .line 1656
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/email/activity/UIControllerBase;->mIsRemoteSearching:Z

    .line 1657
    invoke-virtual {v8}, Lcom/android/email/activity/UIControllerBase;->updateRefreshIcon()V

    .line 1663
    .end local v8           #uiController:Lcom/android/email/activity/UIControllerBase;
    :cond_0
    if-nez v1, :cond_1

    .line 1664
    const-string v9, "MessageListFragment"

    const-string v10, "MessageList onLoadFinished MessagesCursor is null"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    .end local p2
    :goto_0
    return-void

    .line 1670
    .restart local p2
    :cond_1
    iget-boolean v9, v1, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mIsFound:Z

    if-nez v9, :cond_2

    .line 1671
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v10}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v10

    invoke-interface {v9, v10}, Lcom/android/email/activity/MessageListFragment$Callback;->onMailboxNotFound(Z)V

    goto :goto_0

    .line 1679
    :cond_2
    const-wide/16 v9, 0x1000

    const-string v11, "AppUpdate"

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1682
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v9}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Landroid/database/CursorWrapper;->getCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 1684
    const/4 v9, 0x2

    const-string v10, "MessageList:ShowMessages"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 1688
    :cond_3
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v1}, Landroid/database/CursorWrapper;->getCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 1690
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1691
    .local v4, messageIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 1692
    :goto_1
    invoke-virtual {v1}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1693
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1695
    :cond_4
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Long;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Long;

    .line 1696
    .local v5, selected:[Ljava/lang/Long;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Long;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_7

    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1697
    .local v6, selectedId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1698
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1696
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1702
    .end local v0           #arr$:[Ljava/lang/Long;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #messageIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v5           #selected:[Ljava/lang/Long;
    .end local v6           #selectedId:J
    :cond_6
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/MessagesAdapter;->clearSelection()V

    .line 1706
    :cond_7
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v10, v1, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$1202(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;

    .line 1707
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v10, v1, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$1302(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 1708
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v10, v1, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mIsEasAccount:Z

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$1402(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1709
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v10, v1, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mIsRefreshable:Z

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$1502(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1710
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget v10, v1, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mCountTotalAccounts:I

    #setter for: Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$1602(Lcom/android/email/activity/MessageListFragment;I)I

    .line 1713
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v10

    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1400(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, v10, Lcom/android/email/activity/MessagesAdapter;->mIsEasRemoteMode:Z

    .line 1714
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v10}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/email/activity/MessagesAdapter;->mIsEasRemoteMode:Z

    invoke-interface {v9, v10}, Lcom/android/email/activity/MessageListFragment$Callback;->onMessagesLoadFinish(Z)V

    .line 1718
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v10, 0x0

    #calls: Lcom/android/email/activity/MessageListFragment;->adjustMessageNotification(Z)V
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$1700(Lcom/android/email/activity/MessageListFragment;Z)V

    .line 1721
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1722
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    iget v9, v9, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_e

    .line 1723
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v10}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v10

    iget-object v10, v10, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v11}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v11

    iget-object v11, v11, Lcom/android/emailcommon/service/SearchParams;->mField:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/email/activity/MessagesAdapter;->setQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    check-cast p2, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;

    .end local p2
    invoke-virtual {p2}, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->getSearchedMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v10

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$1802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 1730
    :goto_4
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateMailboxSpecificActions()V
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1900(Lcom/android/email/activity/MessageListFragment;)V

    .line 1733
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v10

    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageListFragment;->isCombinedMailbox()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1600(Lcom/android/email/activity/MessageListFragment;)I

    move-result v9

    const/4 v11, 0x1

    if-le v9, v11, :cond_f

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v9}, Lcom/android/email/activity/MessagesAdapter;->setShowColorChips(Z)V

    .line 1737
    :cond_8
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateSendMenu()V
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$2000(Lcom/android/email/activity/MessageListFragment;)V

    .line 1740
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateSearchHeader(Landroid/database/Cursor;)V
    invoke-static {v9, v1}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;Landroid/database/Cursor;)V

    .line 1741
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->autoRefreshStaleMailbox()V
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)V

    .line 1742
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateFooterView()V
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)V

    .line 1743
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 1747
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v10}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v10

    #calls: Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(Z)V
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;Z)V

    .line 1749
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1750
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ViewGroup;

    move-result-object v9

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 1751
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1756
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageListFragment$4;->isEmptyAndLoading(Landroid/database/Cursor;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1757
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v10}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1774
    :cond_9
    :goto_6
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$2800(Lcom/android/email/activity/MessageListFragment;)Landroid/os/Parcelable;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 1775
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v9}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;
    invoke-static {v10}, Lcom/android/email/activity/MessageListFragment;->access$2800(Lcom/android/email/activity/MessageListFragment;)Landroid/os/Parcelable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1776
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v10, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$2802(Lcom/android/email/activity/MessageListFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 1779
    :cond_a
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsPerformanceLogged:Z
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$2900(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1780
    const/4 v9, 0x1

    const-string v10, "MessageList FPS test end time"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 1781
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v10, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsPerformanceLogged:Z
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$2902(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1784
    :cond_b
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v10, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$902(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1788
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mPendingLocalSearch:Z
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$3000(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1789
    const-string v9, "MessageListFragment"

    const-string v10, "startLocalSearch by onLoadFinished mPendingLocalSearch"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mPendingQueryTerm:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/email/activity/MessageListFragment;->access$3100(Lcom/android/email/activity/MessageListFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mPendingQueryField:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/email/activity/MessageListFragment;->access$3200(Lcom/android/email/activity/MessageListFragment;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;
    invoke-static {v12}, Lcom/android/email/activity/MessageListFragment;->access$3300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/activity/MessageListFragment;->startLocalSearch(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;)V

    .line 1797
    :cond_c
    const-wide/16 v9, 0x1000

    const-string v11, "AppUpdate"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1713
    .restart local p2
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1727
    :cond_e
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/email/activity/MessagesAdapter;->setQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v10, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$1802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    goto/16 :goto_4

    .line 1733
    .end local p2
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 1759
    :cond_10
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v10, 0x1

    #setter for: Lcom/android/email/activity/MessageListFragment;->mWaitLoading:Z
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$2702(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1761
    const/4 v9, 0x2

    const-string v10, "MessageList:ShowLoading"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 1764
    :cond_11
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v9}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    if-nez v9, :cond_9

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageListFragment$4;->isEmptyAndLoading(Landroid/database/Cursor;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1765
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v10, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mWaitLoading:Z
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$2702(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1766
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v10}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1768
    const/4 v9, 0x2

    const-string v10, "MessageList:FisrtShowMessages"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    goto/16 :goto_6
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1599
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x0

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onLoaderReset(messages)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 1827
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1828
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$1202(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;

    .line 1829
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$1302(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 1830
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$1802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 1831
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$1602(Lcom/android/email/activity/MessageListFragment;I)I

    .line 1832
    return-void
.end method
