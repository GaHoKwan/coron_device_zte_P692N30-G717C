.class Lcom/android/mms/ui/ComposeMessageActivity$13;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1091
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/mms/ui/MessageItem;

    .line 1094
    .local v7, msgItem:Lcom/android/mms/ui/MessageItem;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1164
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1096
    :sswitch_0
    if-eqz v7, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z
    invoke-static {v0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Z

    goto :goto_0

    .line 1102
    :sswitch_1
    if-eqz v7, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 1104
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1105
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3300(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 1110
    :sswitch_2
    if-eqz v7, :cond_0

    .line 1111
    iget v0, v7, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1116
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v7, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v2, v7, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    goto :goto_0

    .line 1127
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_1

    .line 1128
    .local v6, isClearCache:Z
    :goto_1
    const-string v0, "Mms/MessageItemCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMessageListItemHandler.handleMessage(): run adapter notify in mMessageListItemHandler. isClearCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListAdapter;->setClearCacheFlag(Z)V

    .line 1131
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .end local v6           #isClearCache:Z
    :cond_1
    move v6, v0

    .line 1127
    goto :goto_1

    .line 1137
    :sswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->changeSelectedState(J)V

    goto :goto_0

    .line 1142
    :sswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getAllFailedIpMsgByThreadId(J)[[J
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3400(Lcom/android/mms/ui/ComposeMessageActivity;J)[[J

    move-result-object v5

    .line 1143
    .local v5, allFailedIpMsgIds:[[J
    const-string v0, "Mms/ipmsg/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMessageListItemHandler.handleMessage(): Msg_list_reand_ipmsg, allFailedIpMsg len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSG_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SIM_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showResendConfirmDialg(JJ[[J)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;JJ[[J)V

    goto/16 :goto_0

    .line 1150
    .end local v5           #allFailedIpMsgIds:[[J
    :sswitch_6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsImportantThread:Z
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$402(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 1151
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEnterImportantTimestamp:J
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$502(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 1152
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageListAdapter;->setIsImportantThread(Z)V

    .line 1153
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->setEnterImportantThreadTime(J)V

    .line 1154
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 1158
    :sswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsCompose;->isMassTextEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v2, v7, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/mms/ext/IMmsCompose;->showMassTextMsgDetail(Landroid/content/Context;J)Z

    goto/16 :goto_0

    .line 1094
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x5 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
        0x64 -> :sswitch_3
        0xe10 -> :sswitch_7
    .end sparse-switch

    .line 1111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
