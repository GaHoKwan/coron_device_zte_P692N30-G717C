.class Lcom/android/mms/ui/ComposeMessageActivity$110;
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
    .line 12516
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$110;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 12519
    const-string v0, "Mms/ipmsg/compose"

    const-string v1, "showIpMessageConvertToMmsOrSmsDialog(): cancel."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12520
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$110;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12521
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$110;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19502(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 12525
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$110;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSimId:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15102(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 12526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$110;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 12527
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$110;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonCanResponse:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 12528
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12529
    return-void

    .line 12523
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$110;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$110;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->saveIpMessageForAWhile(Lcom/mediatek/mms/ipmessage/message/IpMessage;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)V

    goto :goto_0
.end method
