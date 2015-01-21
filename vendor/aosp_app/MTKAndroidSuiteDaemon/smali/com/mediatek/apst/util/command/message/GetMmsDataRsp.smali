.class public Lcom/mediatek/apst/util/command/message/GetMmsDataRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "GetMmsDataRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private isBackup:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 74
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 75
    return-void
.end method


# virtual methods
.method public getIsBackup()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/message/GetMmsDataRsp;->isBackup:Z

    return v0
.end method

.method public getMmsResouceBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, buffer:Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public setIsBackup(Z)V
    .locals 0
    .parameter "isBackup"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/message/GetMmsDataRsp;->isBackup:Z

    .line 90
    return-void
.end method
