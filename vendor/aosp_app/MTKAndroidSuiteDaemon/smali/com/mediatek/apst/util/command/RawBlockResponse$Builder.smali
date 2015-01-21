.class public Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;
.super Ljava/lang/Object;
.source "RawBlockResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/util/command/RawBlockResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private cmd:Lcom/mediatek/apst/util/command/RawBlockResponse;

.field private featureId:I

.field private rawBlockSize:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "featureId"

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->featureId:I

    .line 227
    const v0, 0xc3500

    iput v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->rawBlockSize:I

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->reset()V

    .line 229
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2
    .parameter "rawBlockSize"
    .parameter "featureId"

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p2, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->featureId:I

    .line 205
    iget v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->rawBlockSize:I

    if-lez v0, :cond_0

    .line 206
    iput p1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->rawBlockSize:I

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->reset()V

    .line 215
    return-void

    .line 208
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[RawBlockResponse] Invalid block size. Block will be allocated by 800000 bytes by default."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    const v0, 0xc3500

    iput v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->rawBlockSize:I

    goto :goto_0
.end method


# virtual methods
.method protected buffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public build()Lcom/mediatek/apst/util/command/RawBlockResponse;
    .locals 2

    .prologue
    .line 304
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 305
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v0, v1, [B

    .line 306
    .local v0, raw:[B
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 307
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockResponse;

    invoke-virtual {v1, v0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    .line 308
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer:Ljava/nio/ByteBuffer;

    .line 310
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockResponse;

    return-object v1
.end method

.method protected command()Lcom/mediatek/apst/util/command/RawBlockResponse;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockResponse;

    return-object v0
.end method

.method public makeProgress(I)Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;
    .locals 1
    .parameter "progress"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockResponse;

    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setProgress(I)V

    .line 274
    return-object p0
.end method

.method public makeToken(I)Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;
    .locals 1
    .parameter "token"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockResponse;

    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 264
    return-object p0
.end method

.method public makeTotal(I)Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;
    .locals 1
    .parameter "total"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockResponse;

    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setTotal(I)V

    .line 284
    return-object p0
.end method

.method protected onCreateCommand(I)Lcom/mediatek/apst/util/command/RawBlockResponse;
    .locals 2
    .parameter "featureId"

    .prologue
    .line 238
    new-instance v0, Lcom/mediatek/apst/util/command/RawBlockResponse;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->featureId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->onCreateCommand(I)Lcom/mediatek/apst/util/command/RawBlockResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockResponse;

    .line 292
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 293
    iget v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->rawBlockSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer:Ljava/nio/ByteBuffer;

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method
