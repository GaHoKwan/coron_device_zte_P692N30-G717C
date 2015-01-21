.class public interface abstract Lcom/mediatek/apst/util/entity/IRawTransferableWithVersion;
.super Ljava/lang/Object;
.source "IRawTransferableWithVersion.java"


# virtual methods
.method public abstract readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation
.end method

.method public abstract writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation
.end method
