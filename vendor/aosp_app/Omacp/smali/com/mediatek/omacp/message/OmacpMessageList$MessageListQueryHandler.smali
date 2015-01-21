.class final Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "OmacpMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageList;


# direct methods
.method public constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    .line 527
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 528
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 559
    const/16 v0, 0x641

    if-ne p1, v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 566
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->startAsyncQuery()V
    invoke-static {v0}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$1100(Lcom/mediatek/omacp/message/OmacpMessageList;)V

    .line 567
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-virtual {v0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_0
    const-string v0, "Omacp/OmacpMessageList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OmacpMessageList onDeleteComplete called with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 532
    const/16 v2, 0x640

    if-ne p1, v2, :cond_1

    .line 533
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    const-string v3, "omacp"

    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 538
    .local v1, sh:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 539
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "configuration_msg_exist"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 540
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 541
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 544
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sh:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$800(Lcom/mediatek/omacp/message/OmacpMessageList;)Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 545
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageList;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$1200(Lcom/mediatek/omacp/message/OmacpMessageList;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 550
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageList;->markAllMessagesAsSeen(Landroid/content/Context;)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_1
    const-string v2, "Omacp/OmacpMessageList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OmacpMessageList onQueryComplete called with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
