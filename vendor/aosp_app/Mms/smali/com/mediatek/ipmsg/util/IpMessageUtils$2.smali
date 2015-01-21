.class final Lcom/mediatek/ipmsg/util/IpMessageUtils$2;
.super Ljava/lang/Object;
.source "IpMessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivitionDlg(Landroid/app/Activity;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activeType:I

.field final synthetic val$activityContext:Landroid/app/Activity;

.field final synthetic val$simId:I


# direct methods
.method constructor <init>(IILandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    iput p1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$2;->val$simId:I

    iput p2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$2;->val$activeType:I

    iput-object p3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$2;->val$activityContext:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 534
    const-string v1, "Mms/ipmsg/utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showActivitionDlg(): agree and continue, simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$2;->val$simId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->ACTIVITION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sim_id"

    iget v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$2;->val$simId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    const-string v1, "activate_type"

    iget v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$2;->val$activeType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$2;->val$activityContext:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 550
    return-void
.end method
