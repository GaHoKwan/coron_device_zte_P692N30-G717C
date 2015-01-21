.class public interface abstract Lcom/mediatek/apst/util/entity/IRawTransferable;
.super Ljava/lang/Object;
.source "IRawTransferable.java"


# virtual methods
.method public abstract readRaw(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation
.end method

.method public abstract writeRaw(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation
.end method
