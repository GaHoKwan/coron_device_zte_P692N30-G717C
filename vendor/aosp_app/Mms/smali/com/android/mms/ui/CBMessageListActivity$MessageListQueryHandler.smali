.class final Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;
.super Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;
.source "CBMessageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CBMessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CBMessageListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CBMessageListActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    .line 673
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 674
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 702
    packed-switch p1, :pswitch_data_0

    .line 729
    :cond_0
    :goto_0
    const/16 v1, 0x709

    if-ne p1, v1, :cond_2

    .line 730
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->progress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->dismissProgressDialog()V

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 734
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 736
    :cond_2
    return-void

    .line 705
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-static {v1}, Lcom/android/mms/data/CBMessage;->init(Landroid/content/Context;)V

    .line 706
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-static {v1}, Lcom/android/mms/transaction/CBMessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 707
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #calls: Lcom/android/mms/ui/CBMessageListActivity;->startAsyncQuery()V
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$100(Lcom/android/mms/ui/CBMessageListActivity;)V

    .line 708
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->onContentChanged()V

    .line 709
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    if-eqz v1, :cond_3

    .line 710
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    .line 711
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #calls: Lcom/android/mms/ui/CBMessageListActivity;->checkDeleteMode()V
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$700(Lcom/android/mms/ui/CBMessageListActivity;)V

    .line 712
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$800(Lcom/android/mms/ui/CBMessageListActivity;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 713
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$800(Lcom/android/mms/ui/CBMessageListActivity;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 714
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_3

    .line 715
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 719
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->progress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->dismissProgressDialog()V

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x76e
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

    .line 678
    packed-switch p1, :pswitch_data_0

    .line 696
    :pswitch_0
    const-string v3, "Mms/Cb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete called with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .end local p2
    :goto_0
    return-void

    .line 680
    .restart local p2
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/mms/ui/CBMessageListAdapter;->initListMap(Landroid/database/Cursor;)V

    .line 681
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 682
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 683
    .local v0, i:I
    const-string v3, "CBMessageListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/CBMessageListActivity;->access$000(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/mms/data/Conversation;->setMessageCount(I)V

    .line 685
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #calls: Lcom/android/mms/ui/CBMessageListActivity;->checkDeleteMode()V
    invoke-static {v3}, Lcom/android/mms/ui/CBMessageListActivity;->access$700(Lcom/android/mms/ui/CBMessageListActivity;)V

    goto :goto_0

    .line 689
    .end local v0           #i:I
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 690
    .local v1, threadId:J
    new-instance v6, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;

    iget-object v5, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;
    invoke-static {v5}, Lcom/android/mms/ui/CBMessageListActivity;->access$600(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-direct {v6, v1, v2, v5, v7}, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    const-wide/16 v7, -0x1

    cmp-long v5, v1, v7

    if-nez v5, :cond_0

    move v5, v3

    :goto_1
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-static {v6, v5, v3, v4}, Lcom/android/mms/ui/CBMessageListActivity;->confirmDeleteMessageDialog(Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;ZZLandroid/content/Context;)V

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x76d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
