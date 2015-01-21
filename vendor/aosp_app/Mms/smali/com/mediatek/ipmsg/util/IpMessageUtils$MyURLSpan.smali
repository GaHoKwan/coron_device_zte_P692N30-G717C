.class Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;
.super Landroid/text/style/ClickableSpan;
.source "IpMessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipmsg/util/IpMessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyURLSpan"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSimId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 563
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 565
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->mSimId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ipmsg/util/IpMessageUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "widget"

    .prologue
    .line 575
    const-string v1, "Mms/ipmsg/utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyURLSpan.onClick(): context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 577
    invoke-static {}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 578
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 581
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->TERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Mms/ipmsg/utils"

    const-string v2, "MyURLSpan.onClick(): dual SIM"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v1, "sim_id"

    iget v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    const-string v1, "Mms/ipmsg/utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyURLSpan.onClick(): start term activity. action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->TERM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 592
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->mActivity:Landroid/app/Activity;

    .line 569
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 571
    iput p1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->mSimId:I

    .line 572
    return-void
.end method
