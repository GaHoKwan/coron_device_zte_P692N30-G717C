.class Lcom/android/mms/ui/ComposeMessageActivity$103;
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
    .line 11780
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 11783
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11784
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendVideo:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11785
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "mSendVideo, wait activity resume."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11816
    :cond_0
    :goto_0
    return-void

    .line 11789
    :cond_1
    const-string v1, "Mms/ipmsg/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSendVideo(): start send video. Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11790
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->isExistsFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getFileSize(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 11791
    new-instance v0, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;

    invoke-direct {v0}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;-><init>()V

    .line 11792
    .local v0, msg:Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->setPath(Ljava/lang/String;)V

    .line 11793
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDuration:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19400(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->setDuration(I)V

    .line 11794
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setType(I)V

    .line 11795
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 11796
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->resetSelectSimId()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 11797
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsCaptionOn:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsVideoCaptionOn:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11798
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 11799
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

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

    .line 11800
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4402(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 11801
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 11802
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->convertIpMessageToMmsOrSms(Z)Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19900(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 11803
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 11806
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsEditingCaption:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 11807
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->saveIpMessageForAWhile(Lcom/mediatek/mms/ipmessage/message/IpMessage;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)V

    .line 11808
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 11809
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonCanResponse:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 11813
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendVideo:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 11811
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$103;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v2, "send Video msg failed"

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageForIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;ZZ)Z
    invoke-static {v1, v0, v2, v5, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;ZZ)Z

    goto :goto_1
.end method
