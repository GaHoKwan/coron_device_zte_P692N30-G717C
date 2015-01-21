.class public Lcom/android/wifidirect/test/ServerRequestHandler;
.super Ljava/lang/Object;
.source "ServerRequestHandler.java"


# instance fields
.field private mConnectionId:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/wifidirect/test/ServerRequestHandler;->mConnectionId:J

    .line 82
    return-void
.end method


# virtual methods
.method public getConnectionId()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/wifidirect/test/ServerRequestHandler;->mConnectionId:J

    return-wide v0
.end method

.method public onAbort(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 273
    const/16 v0, 0xd1

    return v0
.end method

.method public onAuthenticationFailure([B)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 329
    return-void
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onConnect(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 128
    const/16 v0, 0xa0

    return v0
.end method

.method public onCopy(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 219
    const/16 v0, 0xd1

    return v0
.end method

.method public onDelete(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 196
    const/16 v0, 0xd1

    return v0
.end method

.method public onDisconnect(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)V
    .locals 0
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 143
    return-void
.end method

.method public onGet(Lcom/android/wifidirect/test/Operation;)I
    .locals 1
    .parameter "operation"

    .prologue
    .line 315
    const/16 v0, 0xd1

    return v0
.end method

.method public onPut(Lcom/android/wifidirect/test/Operation;)I
    .locals 1
    .parameter "operation"

    .prologue
    .line 294
    const/16 v0, 0xd1

    return v0
.end method

.method public onRename(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 242
    const/16 v0, 0xd1

    return v0
.end method

.method public onSetPath(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;ZZ)I
    .locals 1
    .parameter "request"
    .parameter "reply"
    .parameter "backup"
    .parameter "create"

    .prologue
    .line 173
    const/16 v0, 0xd1

    return v0
.end method

.method public onSetPermissions(Lcom/android/wifidirect/test/HeaderSet;Lcom/android/wifidirect/test/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 265
    const/16 v0, 0xd1

    return v0
.end method

.method public setConnectionId(J)V
    .locals 2
    .parameter "connectionId"

    .prologue
    .line 92
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Connection ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iput-wide p1, p0, Lcom/android/wifidirect/test/ServerRequestHandler;->mConnectionId:J

    .line 96
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 338
    return-void
.end method
