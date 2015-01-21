.class Lcom/android/mms/ui/ComposeMessageActivity$106;
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
    .line 11860
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 11863
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11864
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendCalendar:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20600(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11865
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "mSendCalendar, wait activity resume."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11880
    :cond_0
    :goto_0
    return-void

    .line 11869
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->isExistsFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getFileSize(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 11870
    new-instance v0, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;

    invoke-direct {v0}, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;-><init>()V

    .line 11871
    .local v0, msg:Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->setPath(Ljava/lang/String;)V

    .line 11872
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCalendarSummary:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20700(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;->setSummary(Ljava/lang/String;)V

    .line 11873
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setType(I)V

    .line 11875
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->resetSelectSimId()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 11876
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 11877
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v2

    const-string v3, "send vCalendar msg failed"

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageForIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;ZZ)Z
    invoke-static {v1, v2, v3, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;ZZ)Z

    .line 11878
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$106;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendCalendar:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20600(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
