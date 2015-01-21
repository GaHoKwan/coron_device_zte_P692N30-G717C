.class Lcom/zte/statistics/sdk/ZTEStatistics$1;
.super Ljava/lang/Object;
.source "ZTEStatistics.java"

# interfaces
.implements Lcom/zte/statistics/sdk/comm/NetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/statistics/sdk/ZTEStatistics;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public stateChanged(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "networkInfo"

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    .line 193
    const-string v0, "Network connected."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->bSendMode:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYPROXY:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-virtual {v0, v1}, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->bSendMode:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->BYAI:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-virtual {v0, v1}, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->ensureRunning()V

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    .line 199
    const-string v0, "Network disconnected."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_2
    return-void
.end method
