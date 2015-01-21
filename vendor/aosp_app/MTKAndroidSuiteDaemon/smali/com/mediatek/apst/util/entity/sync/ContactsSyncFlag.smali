.class public Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "ContactsSyncFlag.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private displayName:Ljava/lang/String;

.field private modifyTime:J

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->modifyTime:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->version:I

    return v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->version:I

    .line 96
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->displayName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->version:I

    .line 105
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->displayName:Ljava/lang/String;

    .line 106
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->modifyTime:J

    .line 109
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->displayName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setModifyTime(J)V
    .locals 0
    .parameter "modifyTime"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->modifyTime:J

    .line 74
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 65
    iput p1, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->version:I

    .line 66
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 85
    iget v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->version:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 86
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->displayName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 116
    iget v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->version:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->displayName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 119
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->modifyTime:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 121
    :cond_0
    return-void
.end method
