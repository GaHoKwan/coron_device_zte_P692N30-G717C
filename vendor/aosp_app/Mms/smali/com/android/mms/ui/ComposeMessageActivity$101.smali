.class Lcom/android/mms/ui/ComposeMessageActivity$101;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 11723
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 11726
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11727
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendAudio:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19300(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11728
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "mSendAudio, wait activity resume."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11757
    :cond_0
    :goto_0
    return-void

    .line 11732
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->isExistsFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getFileSize(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 11733
    new-instance v0, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;

    invoke-direct {v0}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;-><init>()V

    .line 11734
    .local v0, msg:Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->setPath(Ljava/lang/String;)V

    .line 11735
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDuration:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19400(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->setDuration(I)V

    .line 11736
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setType(I)V

    .line 11737
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 11738
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->resetSelectSimId()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 11739
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsCaptionOn:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsAudioCaptionOn:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11740
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 11741
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 11742
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4402(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 11743
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 11744
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->convertIpMessageToMmsOrSms(Z)Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19900(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 11745
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 11748
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsEditingCaption:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 11749
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->saveIpMessageForAWhile(Lcom/mediatek/mms/ipmessage/message/IpMessage;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)V

    .line 11750
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 11751
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonCanResponse:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 11755
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendAudio:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19300(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 11753
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$101;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v2, "send Audio msg failed"

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageForIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;ZZ)Z
    invoke-static {v1, v0, v2, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;ZZ)Z

    goto :goto_1
.end method
