.class final Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
.super Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1543
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1544
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1714
    packed-switch p1, :pswitch_data_0

    .line 1809
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 1716
    .restart local p2
    :pswitch_1
    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1718
    .local v6, threadId:J
    :goto_1
    const-string v8, "ConversationList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMCC Performance test][Message] delete message end ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "threadId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    .line 1722
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v8}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 1724
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 1741
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v8}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 1747
    :try_start_0
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v4

    .line 1748
    .local v4, phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-eqz v4, :cond_4

    .line 1749
    invoke-virtual {v4}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isTestIccCard()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1750
    const-string v8, "Mms/convList"

    const-string v9, "All threads has been deleted, send notification.."

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsManager;->setSmsMemoryStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    .end local v4           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const-wide/16 v9, -0x2

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1767
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v8}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 1769
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v8}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 1775
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const-wide/16 v9, -0x2

    invoke-static {v8, v9, v10}, Lcom/android/mms/transaction/WapPushMessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 1781
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v8}, Lcom/android/mms/transaction/CBMessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 1787
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->dismissProgressDialog()V

    .line 1799
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1716
    .end local v6           #threadId:J
    .restart local p2
    :cond_2
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 1727
    .end local p2
    .restart local v6       #threadId:J
    :cond_3
    const-wide/16 v8, -0x2

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    .line 1732
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const/4 v9, 0x0

    invoke-static {v8, v6, v7, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1733
    .local v1, conv:Lcom/android/mms/data/Conversation;
    if-eqz v1, :cond_0

    .line 1734
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    .line 1735
    .local v5, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1736
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->removeFromCache()V

    goto :goto_3

    .line 1754
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #recipients:Lcom/android/mms/data/ContactList;
    .restart local v4       #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_4
    :try_start_1
    const-string v8, "Mms/convList"

    const-string v9, "Telephony service is not available!"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1756
    .end local v4           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :catch_0
    move-exception v2

    .line 1757
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "Mms/convList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1805
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v6           #threadId:J
    .restart local p2
    :pswitch_2
    const-string v8, "ConversationList"

    const-string v9, "DraftManager.sEditingThread.clear()"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    sget-object v8, Lcom/android/mms/draft/DraftManager;->sEditingThread:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    .line 1714
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 1563
    const-string v5, "ConversationList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onQueryComplete mNeedQuery = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z
    invoke-static {v8}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsInActivity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mIsInActivity:Z
    invoke-static {v8}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    if-nez p3, :cond_1

    .line 1567
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1568
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mIsInActivity:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1569
    const-string v5, "ConversationList"

    const-string v6, "onQueryComplete cursor == null startAsyncQuery"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)V

    .line 1573
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->showMmsApplication()V
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$2200(Lcom/android/mms/ui/ConversationList;)V

    .line 1708
    :goto_0
    return-void

    .line 1579
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1697
    const-string v5, "ConversationList"

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

    .line 1701
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mIsInActivity:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1702
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)V

    .line 1706
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->showMmsApplication()V
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$2200(Lcom/android/mms/ui/ConversationList;)V

    goto :goto_0

    .line 1582
    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListAdapter;->getOnContentChangedListener()Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1583
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1587
    :cond_4
    const-string v5, "ConversationList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onQueryComplete cursor count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->updateEmptyView(Landroid/database/Cursor;)V
    invoke-static {v5, p3}, Lcom/android/mms/ui/ConversationList;->access$2300(Lcom/android/mms/ui/ConversationList;Landroid/database/Cursor;)V

    .line 1590
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1592
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v5

    new-instance v7, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler$1;-><init>(Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;)V

    const-wide/32 v8, 0xea60

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1598
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1599
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 1600
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v5}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0b032f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1604
    :cond_5
    invoke-static {}, Lcom/android/mms/data/Conversation;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1605
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 1611
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$2400(Lcom/android/mms/ui/ConversationList;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1612
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #setter for: Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z
    invoke-static {v5, v6}, Lcom/android/mms/ui/ConversationList;->access$2402(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 1614
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;I)V

    .line 1620
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$2100(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1624
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$2500(Lcom/android/mms/ui/ConversationList;)Landroid/view/ActionMode;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1625
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionModeListener:Lcom/android/mms/ui/ConversationList$ModeCallback;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$2600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ModeCallback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationList$ModeCallback;->confirmSyncCheckedPositons()V

    .line 1629
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mOptionsMenu:Landroid/view/Menu;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$2700(Lcom/android/mms/ui/ConversationList;)Landroid/view/Menu;

    move-result-object v6

    #calls: Lcom/android/mms/ui/ConversationList;->setDeleteMenuVisible(Landroid/view/Menu;)V
    invoke-static {v5, v6}, Lcom/android/mms/ui/ConversationList;->access$2800(Lcom/android/mms/ui/ConversationList;Landroid/view/Menu;)V

    .line 1632
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$2900(Lcom/android/mms/ui/ConversationList;)I

    move-result v5

    if-eq v5, v10, :cond_2

    .line 1634
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v5}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$2900(Lcom/android/mms/ui/ConversationList;)I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I
    invoke-static {v7}, Lcom/android/mms/ui/ConversationList;->access$3000(Lcom/android/mms/ui/ConversationList;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1636
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #setter for: Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I
    invoke-static {v5, v10}, Lcom/android/mms/ui/ConversationList;->access$2902(Lcom/android/mms/ui/ConversationList;I)I

    goto/16 :goto_1

    .line 1607
    :cond_8
    invoke-static {p3}, Lcom/android/mms/data/Conversation;->removeInvalidCache(Landroid/database/Cursor;)V

    goto :goto_2

    .line 1641
    :sswitch_1
    const/4 v2, 0x0

    .line 1642
    .local v2, count:I
    if-eqz p3, :cond_a

    .line 1645
    :try_start_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->getActivated()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1646
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1650
    :cond_9
    :goto_3
    const-string v5, "ConversationList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get threads unread message count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1657
    :cond_a
    const/16 v5, 0x63

    if-le v2, v5, :cond_c

    .line 1658
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$3100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v5

    const-string v7, "99+"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$3200(Lcom/android/mms/ui/ConversationList;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    :goto_4
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$3200(Lcom/android/mms/ui/ConversationList;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/mms/ui/ConversationList;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 1668
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$3200(Lcom/android/mms/ui/ConversationList;)Landroid/widget/LinearLayout;

    move-result-object v5

    sget-object v6, Lcom/android/mms/ui/ConversationList;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1647
    :cond_b
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1648
    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_3

    .line 1653
    :catchall_0
    move-exception v5

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1660
    :cond_c
    if-lez v2, :cond_d

    .line 1661
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$3100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$3200(Lcom/android/mms/ui/ConversationList;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1664
    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$3200(Lcom/android/mms/ui/ConversationList;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1675
    .end local v2           #count:I
    :sswitch_2
    const-string v5, "ConversationList"

    const-string v7, "onQueryComplete HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p2

    .line 1677
    check-cast v4, Ljava/util/Collection;

    .line 1678
    .local v4, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v5}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1679
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationListAdapter;

    .line 1680
    .local v0, adapter:Lcom/android/mms/ui/ConversationListAdapter;
    if-eqz v0, :cond_e

    if-eqz v4, :cond_e

    .line 1681
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1683
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v7

    if-ne v5, v7, :cond_e

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1684
    const/4 v4, 0x0

    .line 1687
    .end local v1           #c:Landroid/database/Cursor;
    :cond_e
    new-instance v7, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1300(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v5

    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v9}, Lcom/android/mms/ui/ConversationList;->access$2500(Lcom/android/mms/ui/ConversationList;)Landroid/view/ActionMode;

    move-result-object v9

    invoke-direct {v7, v4, v5, v8, v9}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;Landroid/content/Context;Landroid/view/ActionMode;)V

    if-eqz p3, :cond_f

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_f

    const/4 v5, 0x1

    :goto_5
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v7, v4, v5, v6}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    .line 1691
    if-eqz p3, :cond_2

    .line 1692
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_f
    move v5, v6

    .line 1687
    goto :goto_5

    .line 1579
    :sswitch_data_0
    .sparse-switch
        0x6a5 -> :sswitch_0
        0x6a6 -> :sswitch_1
        0x70a -> :sswitch_2
    .end sparse-switch
.end method
