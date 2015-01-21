.class Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$2;
.super Landroid/content/BroadcastReceiver;
.source "CurrentNetworkInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$2;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x12e

    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 173
    .local v1, airplaneMode:Z
    if-eqz v1, :cond_0

    .line 174
    iget-object v3, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$2;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v3}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$300(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$2;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I
    invoke-static {v4}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 183
    .end local v1           #airplaneMode:Z
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const-string v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 178
    .local v2, dualMode:I
    if-eqz v2, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$2;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 180
    :cond_2
    iget-object v3, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$2;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v3}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$300(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$2;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I
    invoke-static {v4}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0
.end method
