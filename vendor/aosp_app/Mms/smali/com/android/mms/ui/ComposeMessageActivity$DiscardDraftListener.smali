.class Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscardDraftListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1467
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x1

    .line 1470
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1471
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1473
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHasDiscardWorkingMessage:Z
    invoke-static {v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 1476
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getId()I

    move-result v0

    if-lez v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v0

    new-array v1, v5, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getId()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1, v5, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->deleteIpMsg([JZZ)V

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4402(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1485
    return-void
.end method
