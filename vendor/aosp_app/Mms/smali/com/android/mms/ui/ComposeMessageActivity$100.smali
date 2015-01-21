.class Lcom/android/mms/ui/ComposeMessageActivity$100;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageForIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$ipTextMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11681
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->val$ipTextMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 11684
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "sendMessageForIpMsg(): send second text IP message, calling API: saveIpMsg()."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11685
    const/4 v0, -0x1

    .line 11686
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->val$ipTextMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mms/ipmessage/MessageManager;->saveIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;I)I

    move-result v0

    .line 11688
    if-gez v0, :cond_0

    .line 11689
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "sendMessageForIpMsg(): send second text IP message failed!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11691
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 11692
    return-void
.end method
