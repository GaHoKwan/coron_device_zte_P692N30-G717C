.class Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;
.super Ljava/lang/Object;
.source "NetSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetSettingActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/net/NetSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/net/NetSettingActivity;Lcom/zte/heartyservice/net/NetSettingActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;-><init>(Lcom/zte/heartyservice/net/NetSettingActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 344
    .local v6, viewId:I
    packed-switch v6, :pswitch_data_0

    .line 556
    :goto_0
    :pswitch_0
    return-void

    .line 347
    :pswitch_1
    new-instance v4, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$1;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$1;-><init>(Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;)V

    .line 388
    .local v4, listener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v9}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v8

    invoke-static {v7, v11, v4, v8}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/Dialog;

    goto :goto_0

    .line 395
    .end local v4           #listener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_2
    new-instance v4, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$2;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$2;-><init>(Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;)V

    .line 422
    .restart local v4       #listener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v9}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthFlowWarnPct(I)I

    move-result v8

    const/16 v9, 0x63

    invoke-static {v7, v11, v4, v8, v9}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog2(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;II)Landroid/app/Dialog;

    goto :goto_0

    .line 430
    .end local v4           #listener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_3
    new-instance v4, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$3;-><init>(Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;)V

    .line 455
    .restart local v4       #listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v0, args:Landroid/os/Bundle;
    const-string v7, "title"

    const v8, 0x7f0a00f8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v7, "msg"

    const v8, 0x7f0a00f9

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v9}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCalcDay(I)I

    move-result v8

    const/16 v9, 0x1f

    invoke-static {v7, v0, v4, v8, v9}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog2(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;II)Landroid/app/Dialog;

    goto :goto_0

    .line 465
    .end local v0           #args:Landroid/os/Bundle;
    .end local v4           #listener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_4
    new-instance v4, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$4;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener$4;-><init>(Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;)V

    .line 504
    .restart local v4       #listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 505
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v7, "title"

    const v8, 0x7f0a00f3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    const-string v7, "msg"

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v9}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayThreshold(I)I

    move-result v8

    invoke-static {v7, v0, v4, v8}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 514
    .end local v0           #args:Landroid/os/Bundle;
    .end local v4           #listener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "subscription"

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 516
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-static {v7, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->showAdjDialog(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 520
    .end local v1           #bundle:Landroid/os/Bundle;
    :pswitch_6
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    const v8, 0x7f0e01e2

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    .line 521
    .local v5, monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/ZTESwitch;
    invoke-virtual {v5}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 522
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMonWarnOpen(IZ)V

    goto/16 :goto_0

    .line 524
    :cond_0
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMonWarnOpen(IZ)V

    goto/16 :goto_0

    .line 529
    .end local v5           #monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/ZTESwitch;
    :pswitch_7
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    const v8, 0x7f0e01e9

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    .line 530
    .local v2, dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/ZTESwitch;
    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 531
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setDayWarnOpen(IZ)V

    goto/16 :goto_0

    .line 533
    :cond_1
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setDayWarnOpen(IZ)V

    goto/16 :goto_0

    .line 537
    .end local v2           #dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/ZTESwitch;
    :pswitch_8
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-static {v7, v8, v9}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->startSelf(ILandroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 542
    :pswitch_9
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$500(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 543
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursOpen(IZ)V

    goto/16 :goto_0

    .line 545
    :cond_2
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursOpen(IZ)V

    goto/16 :goto_0

    .line 549
    :pswitch_a
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    const-class v8, Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "currentSim"

    iget-object v8, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I
    invoke-static {v8}, Lcom/zte/heartyservice/net/NetSettingActivity;->access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    iget-object v7, p0, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;->this$0:Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-virtual {v7, v3}, Lcom/zte/heartyservice/net/NetSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x7f0e01db
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
