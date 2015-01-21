.class Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;
.super Ljava/lang/Object;
.source "CurrentNetworkInfoStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 187
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$300(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 190
    .local v0, nRet:I
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$300(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$300(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 191
    const-string v1, "CurrentNetworkInfoStatus"

    const-string v2, "mCellMgr Result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsShouldBeFinished:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$402(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Z)Z

    .line 193
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-virtual {v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->finish()V

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsUnlockFollow:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$502(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Z)Z

    goto :goto_0
.end method
