.class final Lcom/mediatek/ipmsg/util/IpMessageUtils$7;
.super Ljava/lang/Object;
.source "IpMessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/util/IpMessageUtils;->showSwitchSimDialog(Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityContext:Landroid/app/Activity;

.field final synthetic val$simId:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$7;->val$activityContext:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$7;->val$simId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 791
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$7;->val$activityContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_sim_setting"

    iget-wide v3, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$7;->val$simId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 793
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mediatek/encapsulation/android/content/EncapsulatedAction;->ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simid"

    iget-wide v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$7;->val$simId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 795
    iget-object v1, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$7;->val$activityContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 796
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ipmsg/util/IpMessageUtils$7;->val$activityContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x9d

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 799
    return-void
.end method
