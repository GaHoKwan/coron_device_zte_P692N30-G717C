.class public interface abstract Lcom/zte/update/connection/INetworkConnection;
.super Ljava/lang/Object;
.source "INetworkConnection.java"


# virtual methods
.method public abstract connectAndWriteObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aliveupdate/AliveUpdateException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
.end method

.method public abstract getResondObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aliveupdate/AliveUpdateException;
        }
    .end annotation
.end method
