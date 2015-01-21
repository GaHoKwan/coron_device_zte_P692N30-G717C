.class Lcom/android/mms/ui/ComposeMessageActivity$134;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->saveIpMessageDraft()V
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
    .line 14303
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$134;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 14306
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "saveIpMessageDraft(): calling API: saveIpMsg()."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14307
    const/4 v0, -0x1

    .line 14308
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$134;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$134;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mms/ipmessage/MessageManager;->saveIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;I)I

    move-result v0

    .line 14310
    if-gez v0, :cond_1

    .line 14311
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "saveIpMessageDraft(): save IP message draft failed."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14312
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$134;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 14313
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$134;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22000(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14314
    invoke-static {}, Lcom/android/mms/MmsApp;->getToastHandler()Lcom/android/mms/MmsApp$ToastHandler;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$134$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$134$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$134;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14334
    :cond_0
    :goto_0
    return-void

    .line 14323
    :cond_1
    const-string v1, "Mms/ipmsg/compose"

    const-string v2, "saveIpMessageDraft(): save IP message draft successfully."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14324
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$134;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22000(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14325
    invoke-static {}, Lcom/android/mms/MmsApp;->getToastHandler()Lcom/android/mms/MmsApp$ToastHandler;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$134$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$134$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$134;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
