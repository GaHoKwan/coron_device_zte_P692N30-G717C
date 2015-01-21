.class final Lcom/zte/heartyservice/common/utils/AppUtils$6;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/utils/AppUtils;->realShowAdjDialog(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$inputFlow:Landroid/widget/EditText;

.field final synthetic val$subscription:I

.field final synthetic val$tab:I

.field final synthetic val$textPicker:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/zte/heartyservice/common/datatype/ZTETextPicker;ILandroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$inputFlow:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$textPicker:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    iput p3, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$tab:I

    iput-object p4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$activity:Landroid/app/Activity;

    iput p5, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$subscription:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 376
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$inputFlow:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$textPicker:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    invoke-virtual {v4}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getText()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, unit:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 380
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 381
    .local v0, adjust:D
    const-string v4, "GB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    const-wide/high16 v4, 0x4090

    mul-double/2addr v0, v4

    .line 385
    :cond_0
    iget v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$tab:I

    if-ne v4, v6, :cond_2

    .line 386
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    iget v5, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$subscription:I

    invoke-virtual {v4, v5, v0, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursStatsAdj(ID)D

    .line 412
    .end local v0           #adjust:D
    :goto_0
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$activity:Landroid/app/Activity;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.zte.heartyservice.appwidget.WidgetReceiver.updateTraffic"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$activity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    if-eqz v4, :cond_1

    .line 415
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 417
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$inputFlow:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 418
    return-void

    .line 392
    .restart local v0       #adjust:D
    :cond_2
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    iget v5, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$subscription:I

    invoke-virtual {v4, v5, v0, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setStatsAdj(ID)D

    goto :goto_0

    .line 399
    .end local v0           #adjust:D
    :cond_3
    iget v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$tab:I

    if-ne v4, v6, :cond_4

    .line 400
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    iget v5, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$subscription:I

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursStatsAdj(ILjava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_4
    iget-object v4, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    iget v5, p0, Lcom/zte/heartyservice/common/utils/AppUtils$6;->val$subscription:I

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setStatsAdj(ILjava/lang/String;)V

    goto :goto_0
.end method
