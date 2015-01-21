.class Lcom/android/mms/ui/ComposeMessageActivity$111;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showIpMessageConvertToMmsOrSmsDialog(II)V
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
    .line 12491
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 12494
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12495
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->convertIpMessageToMmsOrSms(Z)Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19900(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 12497
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12498
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 12499
    const-string v0, "Mms/ipmsg/compose"

    const-string v1, "convertIpMessageToMmsOrSms(): convert emoticon IP message to SMS."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12500
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;

    invoke-virtual {v0}, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->insertEmoticon(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18400(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 12501
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getSimId()I

    move-result v0

    if-lez v0, :cond_1

    .line 12502
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getSimId()I

    move-result v1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSimId:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15102(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 12504
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 12505
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->checkConditionsAndSendMessage(Z)V
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4500(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 12512
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12513
    return-void

    .line 12507
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4402(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 12508
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 12509
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$111;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->convertIpMessageToMmsOrSms(Z)Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19900(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_0
.end method
