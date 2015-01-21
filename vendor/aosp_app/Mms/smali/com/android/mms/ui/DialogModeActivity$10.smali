.class Lcom/android/mms/ui/DialogModeActivity$10;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DialogModeActivity;->setIpVideoItem(Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;

.field final synthetic val$msgId:J

.field final synthetic val$videoMsg:Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3002
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$10;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iput-object p2, p0, Lcom/android/mms/ui/DialogModeActivity$10;->val$videoMsg:Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;

    iput-wide p3, p0, Lcom/android/mms/ui/DialogModeActivity$10;->val$msgId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$10;->val$videoMsg:Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;

    invoke-virtual {v0}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3013
    :goto_0
    return-void

    .line 3008
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$10;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/DialogModeActivity$10;->val$msgId:J

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mms/ipmessage/MessageManager;->isDownloading(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3009
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$10;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/DialogModeActivity$10;->val$msgId:J

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mms/ipmessage/MessageManager;->cancelDownloading(J)V

    goto :goto_0

    .line 3011
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$10;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/DialogModeActivity$10;->val$msgId:J

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mms/ipmessage/MessageManager;->downloadAttach(J)V

    goto :goto_0
.end method
