.class public Lcom/zte/update/connection/NetworkConnectionFactroy;
.super Ljava/lang/Object;
.source "NetworkConnectionFactroy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/update/connection/INetworkConnection;
    .locals 3
    .parameter "urlstr"
    .parameter "method"

    .prologue
    .line 10
    const/4 v1, 0x0

    .line 13
    .local v1, networkConn:Lcom/zte/update/connection/INetworkConnection;
    :try_start_0
    new-instance v2, Lcom/zte/update/connection/NetworkConnection;

    invoke-direct {v2, p0, p1}, Lcom/zte/update/connection/NetworkConnection;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zte/aliveupdate/AliveUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #networkConn:Lcom/zte/update/connection/INetworkConnection;
    .local v2, networkConn:Lcom/zte/update/connection/INetworkConnection;
    move-object v1, v2

    .line 18
    .end local v2           #networkConn:Lcom/zte/update/connection/INetworkConnection;
    .restart local v1       #networkConn:Lcom/zte/update/connection/INetworkConnection;
    :goto_0
    return-object v1

    .line 14
    :catch_0
    move-exception v0

    .line 16
    .local v0, e:Lcom/zte/aliveupdate/AliveUpdateException;
    invoke-virtual {v0}, Lcom/zte/aliveupdate/AliveUpdateException;->printStackTrace()V

    goto :goto_0
.end method
