.class final Lcom/mediatek/ipmsg/util/IpMessageUtils$5;
.super Ljava/lang/Object;
.source "IpMessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivateOrEnableIpMessageServiceDialog(Landroid/app/Activity;Ljava/util/List;IILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityContext:Landroid/app/Activity;

.field final synthetic val$ipMsgHandler:Landroid/os/Handler;

.field final synthetic val$mode:I

.field final synthetic val$simId:I

.field final synthetic val$simInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(IILandroid/app/Activity;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    iput p1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$mode:I

    iput p2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simId:I

    iput-object p3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    iput-object p4, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simInfoList:Ljava/util/List;

    iput-object p5, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$ipMsgHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v4, 0x94

    const/4 v3, 0x5

    const/4 v2, -0x1

    const/4 v5, 0x1

    .line 726
    iget v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$mode:I

    packed-switch v1, :pswitch_data_0

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 728
    :pswitch_0
    iget v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simId:I

    if-lez v1, :cond_1

    .line 730
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    iget v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simId:I

    #calls: Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivitionDlg(Landroid/app/Activity;III)V
    invoke-static {v1, v5, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->access$200(Landroid/app/Activity;III)V

    goto :goto_0

    .line 732
    :cond_1
    iget v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simId:I

    if-ne v1, v2, :cond_2

    .line 734
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    #calls: Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivitionDlg(Landroid/app/Activity;III)V
    invoke-static {v1, v5, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->access$200(Landroid/app/Activity;III)V

    goto :goto_0

    .line 736
    :cond_2
    iget v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simId:I

    if-nez v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simInfoList:Ljava/util/List;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$ipMsgHandler:Landroid/os/Handler;

    #calls: Lcom/mediatek/ipmsg/util/IpMessageUtils;->showSimSelectionDialog(Landroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;I)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->access$300(Landroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;I)V

    goto :goto_0

    .line 744
    :pswitch_1
    iget v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simId:I

    if-lez v1, :cond_4

    .line 745
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ServiceManager;->enableIpService(I)V

    .line 746
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 760
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$ipMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 761
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 762
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 763
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$ipMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 749
    .end local v0           #message:Landroid/os/Message;
    :cond_4
    iget v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simId:I

    if-ne v1, v2, :cond_5

    .line 750
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->enableIpService()V

    .line 751
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 754
    :cond_5
    iget v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simId:I

    if-nez v1, :cond_3

    .line 756
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$activityContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$simInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;->val$ipMsgHandler:Landroid/os/Handler;

    #calls: Lcom/mediatek/ipmsg/util/IpMessageUtils;->showSimSelectionDialog(Landroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;I)V
    invoke-static {v1, v2, v5, v3, v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->access$300(Landroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;I)V

    goto :goto_1

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
