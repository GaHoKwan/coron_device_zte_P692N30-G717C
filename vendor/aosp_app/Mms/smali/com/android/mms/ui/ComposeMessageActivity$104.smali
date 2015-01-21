.class Lcom/android/mms/ui/ComposeMessageActivity$104;
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
    .line 11819
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 11822
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11823
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendVcard:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11824
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "mSendVcard, wait activity resume."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11840
    :cond_0
    :goto_0
    return-void

    .line 11828
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->isExistsFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getFileSize(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 11829
    new-instance v0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;

    invoke-direct {v0}, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;-><init>()V

    .line 11830
    .local v0, msg:Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->setPath(Ljava/lang/String;)V

    .line 11831
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageVcardName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17800(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->setName(Ljava/lang/String;)V

    .line 11832
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setType(I)V

    .line 11834
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->resetSelectSimId()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 11835
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 11836
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v2, "send vcard msg failed"

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageForIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;ZZ)Z
    invoke-static {v1, v0, v2, v3, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;ZZ)Z

    .line 11837
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$104;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendVcard:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
