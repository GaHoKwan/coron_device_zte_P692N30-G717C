.class Lcom/android/mms/ui/DialogModeActivity$11;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DialogModeActivity;->sendIpTextMessage(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;

.field final synthetic val$ipMessage:Lcom/mediatek/mms/ipmessage/message/IpTextMessage;

.field final synthetic val$sendMode:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;Lcom/mediatek/mms/ipmessage/message/IpTextMessage;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3118
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$11;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iput-object p2, p0, Lcom/android/mms/ui/DialogModeActivity$11;->val$ipMessage:Lcom/mediatek/mms/ipmessage/message/IpTextMessage;

    iput p3, p0, Lcom/android/mms/ui/DialogModeActivity$11;->val$sendMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3121
    const-string v1, "Mms/DialogMode"

    const-string v2, "sendIpTextMessage(): calling API: saveIpMsg()."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    const/4 v0, -0x1

    .line 3123
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$11;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$11;->val$ipMessage:Lcom/mediatek/mms/ipmessage/message/IpTextMessage;

    iget v3, p0, Lcom/android/mms/ui/DialogModeActivity$11;->val$sendMode:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mms/ipmessage/MessageManager;->saveIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;I)I

    move-result v0

    .line 3124
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3125
    const-string v1, "Mms/DialogMode"

    const-string v2, "sendIpTextMessage failed! "

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    :goto_0
    return-void

    .line 3128
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$11;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/DialogModeActivity;->onMessageSent()V

    goto :goto_0
.end method
