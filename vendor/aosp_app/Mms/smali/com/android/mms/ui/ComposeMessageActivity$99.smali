.class Lcom/android/mms/ui/ComposeMessageActivity$99;
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

.field final synthetic val$ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

.field final synthetic val$isDelDraft:Z

.field final synthetic val$log:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11650
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$isDelDraft:Z

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$log:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 11653
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "sendMessageForIpMsg(): calling API: saveIpMsg()."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11654
    const/4 v0, -0x1

    .line 11655
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setStatus(I)V

    .line 11657
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v1, v2, v4}, Lcom/mediatek/mms/ipmessage/MessageManager;->saveIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;I)I

    move-result v0

    .line 11660
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$isDelDraft:Z

    if-eqz v1, :cond_0

    .line 11661
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mms/ipmessage/ChatManager;->deleteDraftMessageInThread(J)Z

    .line 11664
    :cond_0
    if-gez v0, :cond_1

    .line 11665
    const-string v1, "Mms/ipmsg/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageForIpMsg(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$log:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11667
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 11668
    return-void
.end method
