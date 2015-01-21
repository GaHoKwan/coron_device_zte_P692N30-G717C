.class final Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
.super Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 7867
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 7868
    invoke-direct {p0, p2}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 7869
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 8130
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 8132
    invoke-static {}, Lcom/android/mms/ui/SearchActivity;->setNeedRequery()V

    .line 8133
    sparse-switch p1, :sswitch_data_0

    .line 8204
    .end local p2
    :cond_0
    :goto_0
    const/16 v5, 0x709

    if-ne p1, v5, :cond_8

    .line 8205
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    .line 8206
    .local v4, recipients:Lcom/android/mms/data/ContactList;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 8212
    if-eqz v4, :cond_6

    .line 8213
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 8214
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->removeFromCache()V

    goto :goto_1

    .line 8143
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #recipients:Lcom/android/mms/data/ContactList;
    .restart local p2
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v3

    .line 8144
    .local v3, phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-eqz v3, :cond_2

    .line 8145
    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isTestIccCard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8146
    const-string v5, "Mms/compose"

    const-string v6, "All messages has been deleted, send notification..."

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8147
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsManager;->setSmsMemoryStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8157
    .end local v3           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v6, -0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 8161
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 8162
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 8150
    .restart local v3       #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_2
    :try_start_1
    const-string v5, "Mms/compose"

    const-string v6, "Telephony service is not available!"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 8152
    .end local v3           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :catch_0
    move-exception v1

    .line 8153
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Mms/compose"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8168
    .end local v1           #ex:Ljava/lang/Exception;
    :sswitch_1
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8170
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13902(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 8174
    :cond_3
    const-string v5, "Mms/compose"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDeleteComplete(): before update mConversation, ThreadId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8175
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v4

    .line 8176
    .restart local v4       #recipients:Lcom/android/mms/data/ContactList;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->upDateThread(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$202(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    .line 8177
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadCountManager:Lcom/android/mms/util/ThreadCountManager;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/util/ThreadCountManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:Ljava/lang/Long;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/mms/util/ThreadCountManager;->isFull(Ljava/lang/Long;Landroid/content/Context;I)V

    .line 8182
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v6, -0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 8186
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 8188
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 8189
    const-string v5, "Mms/compose"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDeleteComplete(): MessageCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ThreadId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8191
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 8192
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 8193
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->needSaveDraft()Z
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 8194
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->makeDraftEditable(Lcom/android/mms/data/ContactList;)V
    invoke-static {v5, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14800(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_0

    .line 8196
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 8219
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 8220
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 8227
    .end local v4           #recipients:Lcom/android/mms/data/ContactList;
    :cond_7
    :goto_3
    return-void

    .line 8221
    :cond_8
    const/16 v5, 0x25e4

    if-ne p1, v5, :cond_7

    .line 8224
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v6, 0x2538

    const/4 v7, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery(II)V
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10100(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    goto :goto_3

    .line 8133
    nop

    :sswitch_data_0
    .sparse-switch
        0x709 -> :sswitch_0
        0x25e4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 24
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 7874
    const-string v20, "Mms/compose"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onQueryComplete, token="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "activity="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7876
    sparse-switch p1, :sswitch_data_0

    .line 8123
    const-string v20, "Mms/compose"

    const-string v21, "unknown token."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8126
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 7879
    .restart local p2
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowUnreadDivider:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsMarkMsgAsRead:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 7880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 7881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 7882
    new-instance v20, Ljava/lang/Thread;

    new-instance v21, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;)V

    invoke-direct/range {v20 .. v21}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    .line 7894
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowUnreadDivider:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 7895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->setUnreadCount(I)V

    .line 7898
    :cond_2
    if-nez p3, :cond_3

    .line 7899
    const-string v20, "Mms/compose"

    const-string v21, "onQueryComplete, cursor is null."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7903
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 7904
    const-string v20, "Mms/compose"

    const-string v21, "onQueryComplete, mMsgListAdapter is null."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7905
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 7908
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getOnDataSetChangedListener()Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    move-result-object v20

    if-nez v20, :cond_5

    .line 7909
    const-string v20, "Mms/compose"

    const-string v21, "OnDataSetChangedListener is cleared"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7910
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 7915
    :cond_5
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 7917
    .local v17, tid:J
    const-string v20, "Mms:app"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 7918
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "##### onQueryComplete: msg history result for threadId "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 7920
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v20

    cmp-long v20, v17, v20

    if-eqz v20, :cond_8

    .line 7921
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onQueryComplete: msg history query result is for threadId "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", but mConversation has threadId "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " starting a new query"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 7924
    if-eqz p3, :cond_7

    .line 7925
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 7927
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 7932
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13300(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 7934
    const/4 v12, -0x1

    .line 7935
    .local v12, newSelectionPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "select_id"

    const-wide/16 v22, -0x1

    invoke-virtual/range {v20 .. v23}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 7936
    .local v14, targetMsgId:J
    const-wide/16 v20, -0x1

    cmp-long v20, v14, v20

    if-eqz v20, :cond_f

    .line 7937
    const/16 v20, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 7938
    :cond_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 7939
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 7940
    .local v10, msgId:J
    cmp-long v20, v10, v14

    if-nez v20, :cond_9

    .line 7941
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 7968
    .end local v10           #msgId:J
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdateContactForMessageContent:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 7969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateContactCache(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13600(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/database/Cursor;)V

    .line 7970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdateContactForMessageContent:Z
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13502(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 7974
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 7976
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_11

    .line 7979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7980
    .local v4, child:Landroid/view/View;
    const/16 v19, 0x0

    .line 7981
    .local v19, top:I
    if-eqz v4, :cond_c

    .line 7982
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    .line 7984
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 8008
    .end local v4           #child:Landroid/view/View;
    .end local v19           #top:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v20

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSendMessage:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10000(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 8009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/data/Conversation;->setMessageCount(I)V

    .line 8013
    :goto_3
    const/16 v20, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8014
    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 8015
    const/16 v20, 0x10

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 8016
    .local v13, read:I
    const/16 v20, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    add-int v13, v13, v20

    .line 8017
    if-nez v13, :cond_d

    .line 8018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    .line 8022
    .end local v13           #read:I
    :cond_e
    const-string v20, "Mms/compose"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onQueryComplete(): Conversation.ThreadId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", MessageCount="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsImportantThread:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-nez v20, :cond_16

    .line 8027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 7945
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13400(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 7951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13400(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v20

    const v21, 0x7fffffff

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 7952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    .line 7953
    .local v5, cnt:I
    if-lez v5, :cond_a

    .line 7956
    add-int/lit8 v12, v5, -0x1

    .line 7957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13402(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    goto/16 :goto_1

    .line 7962
    .end local v5           #cnt:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13400(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v12

    .line 7963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13402(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    goto/16 :goto_1

    .line 7989
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v7

    .line 7990
    .local v7, count:I
    const-wide/16 v8, 0x0

    .line 7991
    .local v8, lastMsgId:J
    if-lez v7, :cond_12

    .line 7992
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToLast()Z

    .line 7993
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 7999
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-nez v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13900(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v22

    cmp-long v20, v8, v22

    if-eqz v20, :cond_14

    :cond_13
    const/16 v20, 0x1

    :goto_4
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v22

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->smoothScrollToEnd(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14000(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V

    .line 8000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J
    invoke-static {v0, v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13902(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 8002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto/16 :goto_2

    .line 7999
    :cond_14
    const/16 v20, 0x0

    goto :goto_4

    .line 8011
    .end local v7           #count:I
    .end local v8           #lastMsgId:J
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/data/Conversation;->setMessageCount(I)V

    goto/16 :goto_3

    .line 8036
    :cond_16
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14100(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-nez v20, :cond_18

    .line 8038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mOldThreadID:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCutRecipients:Lcom/android/mms/data/ContactList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v20

    if-eqz v20, :cond_17

    .line 8040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSameConv:Z

    .line 8042
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor(Landroid/os/Bundle;)V
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V

    .line 8047
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isFocused()Z

    move-result v20

    if-nez v20, :cond_1a

    .line 8049
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    .line 8052
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 8054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showInvitePanel()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 8057
    .end local v12           #newSelectionPos:I
    .end local v14           #targetMsgId:J
    .end local v17           #tid:J
    .restart local p2
    :sswitch_1
    const-string v20, "Mms/compose"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onQueryComplete(): unread cursor = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", show divider ?= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowUnreadDivider:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8059
    const-string v20, "Mms/divider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "compose.onQueryComplete(): unread cursor = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", show divider ?="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowUnreadDivider:Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8061
    if-eqz p3, :cond_1b

    .line 8062
    const-string v20, "Mms/compose"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onQueryComplete(): unread cursor count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8063
    const-string v20, "Mms/divider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "compose.onQueryComplete(): unread cursor count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8065
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowUnreadDivider:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 8066
    if-nez p3, :cond_1c

    .line 8067
    const-string v20, "Mms/compose"

    const-string v21, "onQueryComplete(): case MESSAGE_LIST_UNREAD_QUERY_TOKEN, cursor is null."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8070
    :cond_1c
    const-string v20, "Mms/divider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "compose.onQueryComplete(): unread cursor count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->setUnreadCount(I)V

    .line 8072
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 8076
    :cond_1d
    if-eqz p3, :cond_0

    .line 8077
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v16, p2

    .line 8084
    check-cast v16, Ljava/util/ArrayList;

    .line 8085
    .local v16, threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v21, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    if-eqz p3, :cond_1e

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-lez v20, :cond_1e

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    .line 8091
    if-eqz p3, :cond_0

    .line 8092
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 8085
    :cond_1e
    const/16 v20, 0x0

    goto :goto_5

    .line 8098
    .end local v16           #threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :sswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 8100
    .restart local v17       #tid:J
    const-string v20, "Mms:app"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 8101
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "##### onQueryComplete (after delete): msg history result for threadId "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 8104
    :cond_1f
    if-eqz p3, :cond_0

    .line 8107
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-lez v20, :cond_20

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-nez v20, :cond_20

    .line 8111
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "##### MESSAGE_LIST_QUERY_AFTER_DELETE_TOKEN clearing thread id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 8113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    .line 8115
    .local v6, conv:Lcom/android/mms/data/Conversation;
    if-eqz v6, :cond_20

    .line 8116
    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 8117
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 8120
    .end local v6           #conv:Lcom/android/mms/data/Conversation;
    :cond_20
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 7876
    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_2
        0x2537 -> :sswitch_0
        0x2538 -> :sswitch_3
        0x2648 -> :sswitch_1
    .end sparse-switch
.end method
