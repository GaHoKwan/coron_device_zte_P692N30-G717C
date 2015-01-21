.class public Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;
.super Ljava/lang/Object;
.source "RawBlockRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/util/command/RawBlockRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private cmd:Lcom/mediatek/apst/util/command/RawBlockRequest;

.field private featureId:I

.field private rawBlockSize:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "featureId"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->featureId:I

    .line 186
    const v0, 0xc3500

    iput v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->rawBlockSize:I

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->reset()V

    .line 188
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2
    .parameter "rawBlockSize"
    .parameter "featureId"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p2, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->featureId:I

    .line 164
    iget v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->rawBlockSize:I

    if-lez v0, :cond_0

    .line 165
    iput p1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->rawBlockSize:I

    .line 173
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->reset()V

    .line 174
    return-void

    .line 167
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[RawBlockRequest] Invalid block size. Block will be allocated by 800000 bytes by default."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    const v0, 0xc3500

    iput v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->rawBlockSize:I

    goto :goto_0
.end method


# virtual methods
.method protected buffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public build()Lcom/mediatek/apst/util/command/RawBlockRequest;
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 237
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v0, v1, [B

    .line 238
    .local v0, raw:[B
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 239
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockRequest;

    invoke-virtual {v1, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest;->setRaw([B)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer:Ljava/nio/ByteBuffer;

    .line 242
    iget-object v1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockRequest;

    return-object v1
.end method

.method protected command()Lcom/mediatek/apst/util/command/RawBlockRequest;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockRequest;

    return-object v0
.end method

.method protected onCreateCommand(I)Lcom/mediatek/apst/util/command/RawBlockRequest;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 197
    new-instance v0, Lcom/mediatek/apst/util/command/RawBlockRequest;

    invoke-direct {v0, p1}, Lcom/mediatek/apst/util/command/RawBlockRequest;-><init>(I)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->featureId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->onCreateCommand(I)Lcom/mediatek/apst/util/command/RawBlockRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->cmd:Lcom/mediatek/apst/util/command/RawBlockRequest;

    .line 222
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 224
    iget v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->rawBlockSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer:Ljava/nio/ByteBuffer;

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method
