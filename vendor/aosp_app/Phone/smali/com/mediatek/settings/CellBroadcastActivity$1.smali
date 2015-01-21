.class Lcom/mediatek/settings/CellBroadcastActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CellBroadcastActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CellBroadcastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CellBroadcastActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastActivity$1;->this$0:Lcom/mediatek/settings/CellBroadcastActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v1, "Settings/CellBroadcastActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity$1;->this$0:Lcom/mediatek/settings/CellBroadcastActivity;

    #calls: Lcom/mediatek/settings/CellBroadcastActivity;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastActivity;->access$000(Lcom/mediatek/settings/CellBroadcastActivity;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity$1;->this$0:Lcom/mediatek/settings/CellBroadcastActivity;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/mediatek/settings/CellBroadcastActivity;->mAirplaneModeEnabled:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/CellBroadcastActivity;->access$102(Lcom/mediatek/settings/CellBroadcastActivity;Z)Z

    .line 57
    const-string v1, "Settings/CellBroadcastActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAirplaneModeEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastActivity$1;->this$0:Lcom/mediatek/settings/CellBroadcastActivity;

    #getter for: Lcom/mediatek/settings/CellBroadcastActivity;->mAirplaneModeEnabled:Z
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastActivity;->access$100(Lcom/mediatek/settings/CellBroadcastActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity$1;->this$0:Lcom/mediatek/settings/CellBroadcastActivity;

    #getter for: Lcom/mediatek/settings/CellBroadcastActivity;->mAirplaneModeEnabled:Z
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastActivity;->access$100(Lcom/mediatek/settings/CellBroadcastActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity$1;->this$0:Lcom/mediatek/settings/CellBroadcastActivity;

    #calls: Lcom/mediatek/settings/CellBroadcastActivity;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastActivity;->access$000(Lcom/mediatek/settings/CellBroadcastActivity;)V

    goto :goto_0

    .line 66
    :cond_2
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity$1;->this$0:Lcom/mediatek/settings/CellBroadcastActivity;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/mediatek/settings/CellBroadcastActivity;->mDualSimMode:I
    invoke-static {v1, v2}, Lcom/mediatek/settings/CellBroadcastActivity;->access$202(Lcom/mediatek/settings/CellBroadcastActivity;I)I

    .line 68
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity$1;->this$0:Lcom/mediatek/settings/CellBroadcastActivity;

    #calls: Lcom/mediatek/settings/CellBroadcastActivity;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastActivity;->access$000(Lcom/mediatek/settings/CellBroadcastActivity;)V

    goto :goto_0

    .line 69
    :cond_3
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastActivity$1;->this$0:Lcom/mediatek/settings/CellBroadcastActivity;

    #calls: Lcom/mediatek/settings/CellBroadcastActivity;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastActivity;->access$000(Lcom/mediatek/settings/CellBroadcastActivity;)V

    goto :goto_0
.end method
