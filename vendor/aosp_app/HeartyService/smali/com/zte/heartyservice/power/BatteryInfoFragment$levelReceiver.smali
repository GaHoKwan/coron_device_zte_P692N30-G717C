.class Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/BatteryInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "levelReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;Lcom/zte/heartyservice/power/BatteryInfoFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;-><init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x0

    .line 456
    const-string v7, "BatteryInfoFragment"

    const-string v8, "onReceive"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, action:Ljava/lang/String;
    const-string v7, "BatteryInfoFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 461
    const-string v7, "level"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 463
    .local v3, level:I
    const-string v7, "status"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 464
    .local v5, statusInfo:I
    const-string v7, "BatteryInfoFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hearty Battery On Receive statusInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    const/4 v1, 0x1

    .line 467
    .local v1, charging:Z
    :goto_0
    if-nez v1, :cond_0

    const/4 v7, 0x5

    if-ne v5, v7, :cond_4

    .line 468
    :cond_0
    const-string v7, "BatteryInfoFragment"

    const-string v8, "Enter show Icon"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v7, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mChargingIcon:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1100(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 477
    .local v4, plugType:I
    invoke-static {p1, v4, v3}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->getLeftChargingTime(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, chargingTime:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 480
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mLeftChargingTime:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1200(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    .end local v2           #chargingTime:Ljava/lang/String;
    .end local v4           #plugType:I
    :goto_1
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->tempLevel:I
    invoke-static {v6}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$400(Lcom/zte/heartyservice/power/BatteryInfoFragment;)I

    move-result v6

    if-eq v3, v6, :cond_1

    .line 493
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #setter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->tempLevel:I
    invoke-static {v6, v3}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$402(Lcom/zte/heartyservice/power/BatteryInfoFragment;I)I

    .line 494
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #calls: Lcom/zte/heartyservice/power/BatteryInfoFragment;->UpdateBatteryIcon(I)V
    invoke-static {v6, v3}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1400(Lcom/zte/heartyservice/power/BatteryInfoFragment;I)V

    .line 495
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #calls: Lcom/zte/heartyservice/power/BatteryInfoFragment;->UpdateBatteryValue(I)V
    invoke-static {v6, v3}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1500(Lcom/zte/heartyservice/power/BatteryInfoFragment;I)V

    .line 496
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #calls: Lcom/zte/heartyservice/power/BatteryInfoFragment;->UpdateRemainingTime(I)V
    invoke-static {v6, v3}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$500(Lcom/zte/heartyservice/power/BatteryInfoFragment;I)V

    .line 499
    .end local v1           #charging:Z
    .end local v3           #level:I
    .end local v5           #statusInfo:I
    :cond_1
    return-void

    .restart local v3       #level:I
    .restart local v5       #statusInfo:I
    :cond_2
    move v1, v6

    .line 465
    goto :goto_0

    .line 482
    .restart local v1       #charging:Z
    .restart local v2       #chargingTime:Ljava/lang/String;
    .restart local v4       #plugType:I
    :cond_3
    iget-object v7, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mLeftChargingTime:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1200(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mLeftChargingTime:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1200(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 487
    .end local v2           #chargingTime:Ljava/lang/String;
    .end local v4           #plugType:I
    :cond_4
    const-string v7, "BatteryInfoFragment"

    const-string v8, "Enter not show Icon"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v7, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mChargingIcon:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1100(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-object v7, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mBatteryValue:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1300(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    #getter for: Lcom/zte/heartyservice/power/BatteryInfoFragment;->mLeftChargingTime:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->access$1200(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
