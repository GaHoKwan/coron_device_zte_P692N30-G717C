.class final Lcom/mediatek/ipmsg/util/IpMessageUtils$3;
.super Ljava/lang/Object;
.source "IpMessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/util/IpMessageUtils;->showSimSelectionDialog(Landroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityContext:Landroid/app/Activity;

.field final synthetic val$activityType:I

.field final synthetic val$currentSimInfoList:Ljava/util/List;

.field final synthetic val$ipMsgHandler:Landroid/os/Handler;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 676
    iput p1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$mode:I

    iput-object p2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$activityContext:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$currentSimInfoList:Ljava/util/List;

    iput p4, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$activityType:I

    iput-object p5, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$ipMsgHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 679
    iget v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$mode:I

    packed-switch v1, :pswitch_data_0

    .line 699
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 700
    return-void

    .line 682
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$activityContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$currentSimInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v1, v3

    iget v3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$activityType:I

    #calls: Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivitionDlg(Landroid/app/Activity;III)V
    invoke-static {v2, v5, v1, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->access$200(Landroid/app/Activity;III)V

    goto :goto_0

    .line 686
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$activityContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$currentSimInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->enableIpService(I)V

    .line 687
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$activityContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$activityContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x94

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 690
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$ipMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 691
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 692
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 693
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;->val$ipMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 679
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
