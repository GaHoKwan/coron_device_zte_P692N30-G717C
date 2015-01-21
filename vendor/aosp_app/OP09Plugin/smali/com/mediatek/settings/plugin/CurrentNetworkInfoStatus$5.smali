.class Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$5;
.super Ljava/lang/Object;
.source "CurrentNetworkInfoStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->onResume()V
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
    .line 381
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$5;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$5;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$300(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$5;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I

    move-result v1

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 385
    return-void
.end method
