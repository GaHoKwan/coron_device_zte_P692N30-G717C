.class final enum Lcom/zte/aliveupdate/common/utils/NetworkStrategy$2;
.super Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
.source "NetworkStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;-><init>(Ljava/lang/String;ILcom/zte/aliveupdate/common/utils/NetworkStrategy$1;)V

    return-void
.end method


# virtual methods
.method public checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 52
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 53
    .local v1, mData:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const-string v2, "mobile data network connected"

    invoke-virtual {p0, v2}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$2;->log(Ljava/lang/String;)V

    .line 55
    sget-object v2, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->DATA_NETWORK_CONNECTED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    .line 57
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$2;->ONLY_WIFI:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    invoke-virtual {v2, p1}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    move-result-object v2

    goto :goto_0
.end method
