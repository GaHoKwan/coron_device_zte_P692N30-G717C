.class public Lcom/mediatek/apst/util/command/backup/GetMmsDataForBackupRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "GetMmsDataForBackupRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 66
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 67
    return-void
.end method


# virtual methods
.method public getMmsDataBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 74
    .local v0, buffer:Ljava/nio/ByteBuffer;
    return-object v0
.end method
