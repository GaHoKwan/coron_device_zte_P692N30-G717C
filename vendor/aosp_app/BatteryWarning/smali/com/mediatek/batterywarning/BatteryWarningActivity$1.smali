.class Lcom/mediatek/batterywarning/BatteryWarningActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryWarningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/batterywarning/BatteryWarningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/batterywarning/BatteryWarningActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/batterywarning/BatteryWarningActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity$1;->this$0:Lcom/mediatek/batterywarning/BatteryWarningActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity$1;->this$0:Lcom/mediatek/batterywarning/BatteryWarningActivity;

    #getter for: Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I
    invoke-static {v1}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->access$000(Lcom/mediatek/batterywarning/BatteryWarningActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity$1;->this$0:Lcom/mediatek/batterywarning/BatteryWarningActivity;

    #getter for: Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I
    invoke-static {v1}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->access$000(Lcom/mediatek/batterywarning/BatteryWarningActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity$1;->this$0:Lcom/mediatek/batterywarning/BatteryWarningActivity;

    #getter for: Lcom/mediatek/batterywarning/BatteryWarningActivity;->mType:I
    invoke-static {v1}, Lcom/mediatek/batterywarning/BatteryWarningActivity;->access$000(Lcom/mediatek/batterywarning/BatteryWarningActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 69
    :cond_0
    const-string v1, "BatteryWarningActivity"

    const-string v2, "receive ACTION_POWER_DISCONNECTED broadcast, finish"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/mediatek/batterywarning/BatteryWarningActivity$1;->this$0:Lcom/mediatek/batterywarning/BatteryWarningActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 73
    :cond_1
    return-void
.end method
