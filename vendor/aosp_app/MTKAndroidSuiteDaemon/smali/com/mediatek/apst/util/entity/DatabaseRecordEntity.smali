.class public abstract Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.super Ljava/lang/Object;
.source "DatabaseRecordEntity.java"

# interfaces
.implements Lcom/mediatek/apst/util/entity/IRawTransferable;
.implements Lcom/mediatek/apst/util/entity/IRawTransferableWithVersion;
.implements Lcom/mediatek/apst/util/entity/SqliteBoolean;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ID_NULL:J = -0x1L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->_id:J

    .line 96
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->_id:J

    .line 88
    return-void
.end method


# virtual methods
.method public clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    .line 125
    .local v0, copy:Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->_id:J

    return-wide v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->_id:J

    .line 153
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
    .line 159
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->_id:J

    .line 160
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->_id:J

    .line 116
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->_id:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 147
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
    .line 166
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->_id:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 167
    return-void
.end method
