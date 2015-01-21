.class final Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
.super Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;
.source "FolderViewList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/FolderViewList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    .line 1113
    invoke-direct {p0, p2}, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1114
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const-wide/16 v6, -0x2

    const/4 v5, 0x0

    .line 1242
    const-string v1, "FolderViewList"

    const-string v2, "onDeleteComplete"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    packed-switch p1, :pswitch_data_0

    .line 1289
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1245
    :pswitch_1
    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$2700()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1246
    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$2710()I

    .line 1247
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "igonre a onDeleteComplete,mDeleteCounter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$2700()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1250
    :cond_1
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2702(I)I

    .line 1251
    sget v1, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1252
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1253
    .local v0, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1254
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    goto :goto_1

    .line 1257
    .end local v0           #iter:Ljava/util/Iterator;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 1258
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 1262
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-static {v1, v6, v7, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1271
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-static {v1, v6, v7}, Lcom/android/mms/transaction/WapPushMessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 1274
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-static {v1}, Lcom/android/mms/transaction/CBMessagingNotification;->updateAllNotifications(Landroid/content/Context;)V

    .line 1277
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/FolderViewListAdapter;->clearbackupstate()V

    .line 1278
    invoke-virtual {p0}, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->progress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    invoke-virtual {p0}, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->dismissProgressDialog()V

    goto/16 :goto_0

    .line 1243
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1118
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #setter for: Lcom/android/mms/ui/FolderViewList;->mIsQuerying:Z
    invoke-static {v5, v4}, Lcom/android/mms/ui/FolderViewList;->access$802(Lcom/android/mms/ui/FolderViewList;Z)Z

    .line 1119
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 1120
    :cond_0
    const-string v3, "FolderViewList"

    const-string v5, "cursor == null||count==0."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mCountTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$2000(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    if-eqz p3, :cond_1

    .line 1123
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1125
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1126
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mNeedQuery:Z
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$900(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mIsInActivity:Z
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$700(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1127
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #calls: Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1000(Lcom/android/mms/ui/FolderViewList;)V

    .line 1129
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$2100(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1130
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$600(Lcom/android/mms/ui/FolderViewList;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 1236
    :cond_3
    :goto_0
    return-void

    .line 1135
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/FolderViewListAdapter;->getOnContentChangedListener()Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

    move-result-object v5

    if-nez v5, :cond_6

    .line 1136
    :cond_5
    const-string v3, "FolderViewList"

    const-string v4, "onQueryComplete, no OnContentChangedListener"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1141
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2200(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/SearchView;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1142
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2200(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/SearchView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, searchString:Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 1144
    const-string v5, "FolderViewList"

    const-string v6, "onQueryComplete mSearchView != null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2200(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/SearchView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1148
    .end local v2           #searchString:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mCountTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2000(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    sparse-switch p1, :sswitch_data_0

    .line 1207
    const-string v5, "FolderViewList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete called with unknown token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_8
    :goto_1
    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mOptionsMenu:Landroid/view/Menu;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$2300(Lcom/android/mms/ui/FolderViewList;)Landroid/view/Menu;

    move-result-object v6

    #calls: Lcom/android/mms/ui/FolderViewList;->setDeleteMenuVisible(Landroid/view/Menu;)V
    invoke-static {v5, v6}, Lcom/android/mms/ui/FolderViewList;->access$2400(Lcom/android/mms/ui/FolderViewList;Landroid/view/Menu;)V

    .line 1212
    const-string v5, "FolderViewList"

    const-string v6, "onQueryComplete invalidateOptionsMenu"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1215
    const-string v5, "FolderViewList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete : mNeedQuery ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mNeedQuery:Z
    invoke-static {v7}, Lcom/android/mms/ui/FolderViewList;->access$900(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mNeedQuery:Z
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$900(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mIsInActivity:Z
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$700(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1217
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #calls: Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$1000(Lcom/android/mms/ui/FolderViewList;)V

    .line 1219
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #setter for: Lcom/android/mms/ui/FolderViewList;->mHasLockedMsg:Z
    invoke-static {v5, v4}, Lcom/android/mms/ui/FolderViewList;->access$2502(Lcom/android/mms/ui/FolderViewList;Z)Z

    .line 1220
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListItemLockInfo:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1221
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListItemLockInfo:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1223
    :cond_a
    if-eqz p3, :cond_3

    .line 1224
    const/4 v5, -0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1225
    const/4 v1, 0x0

    .line 1226
    .local v1, isLocked:Z
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1227
    const/16 v5, 0xd

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_f

    move v1, v3

    .line 1228
    :goto_3
    if-eqz v1, :cond_b

    .line 1229
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #setter for: Lcom/android/mms/ui/FolderViewList;->mHasLockedMsg:Z
    invoke-static {v5, v3}, Lcom/android/mms/ui/FolderViewList;->access$2502(Lcom/android/mms/ui/FolderViewList;Z)Z

    .line 1231
    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListItemLockInfo:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/FolderViewListAdapter;->getKey(IJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1151
    .end local v1           #isLocked:Z
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mCountTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2000(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    const-string v5, "FolderViewList"

    const-string v6, "onQueryComplete DRAFTFOLDER_LIST_QUERY_TOKEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1155
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2100(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1156
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #setter for: Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z
    invoke-static {v5, v4}, Lcom/android/mms/ui/FolderViewList;->access$2102(Lcom/android/mms/ui/FolderViewList;Z)Z

    .line 1157
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;I)V

    .line 1162
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$1900(Lcom/android/mms/ui/FolderViewList;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1800(Lcom/android/mms/ui/FolderViewList;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1166
    :sswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2100(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1167
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #setter for: Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z
    invoke-static {v5, v4}, Lcom/android/mms/ui/FolderViewList;->access$2102(Lcom/android/mms/ui/FolderViewList;Z)Z

    .line 1168
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;I)V

    .line 1173
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$1900(Lcom/android/mms/ui/FolderViewList;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/mms/ui/FolderViewList;->access$1800(Lcom/android/mms/ui/FolderViewList;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1175
    :cond_c
    const/4 v0, 0x0

    .line 1176
    .local v0, count:I
    :cond_d
    :goto_4
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1177
    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_d

    .line 1178
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1181
    :cond_e
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mCountTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2000(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    const-string v5, "FolderViewList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete INBOXFOLDER_LIST_QUERY_TOKEN count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1184
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2100(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1185
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$600(Lcom/android/mms/ui/FolderViewList;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1189
    .end local v0           #count:I
    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mCountTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2000(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    const-string v5, "FolderViewList"

    const-string v6, "onQueryComplete OUTBOXFOLDER_LIST_QUERY_TOKEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 1194
    :sswitch_4
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mCountTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$2000(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    const-string v5, "FolderViewList"

    const-string v6, "onQueryComplete SENTFOLDER_LIST_QUERY_TOKEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .restart local v1       #isLocked:Z
    :cond_f
    move v1, v4

    .line 1227
    goto/16 :goto_3

    .line 1149
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_0
        0x3f1 -> :sswitch_1
        0x457 -> :sswitch_2
        0x461 -> :sswitch_3
        0x46b -> :sswitch_4
    .end sparse-switch
.end method
