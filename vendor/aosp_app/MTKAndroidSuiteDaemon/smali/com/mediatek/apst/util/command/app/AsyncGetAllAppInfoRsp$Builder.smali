.class public Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp$Builder;
.super Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;
.source "AsyncGetAllAppInfoRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private count:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;-><init>(I)V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp$Builder;->count:I

    .line 135
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "rawBlockSize"

    .prologue
    .line 128
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;-><init>(II)V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp$Builder;->count:I

    .line 130
    return-void
.end method


# virtual methods
.method public appendAppInfo(Lcom/mediatek/apst/util/entity/app/ApplicationInfo;)Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp$Builder;
    .locals 3
    .parameter "appInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 152
    :try_start_0
    iget v1, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp$Builder;->count:I

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 157
    iget v1, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp$Builder;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp$Builder;->count:I
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-object p0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 160
    throw v0
.end method

.method public bridge synthetic build()Lcom/mediatek/apst/util/command/RawBlockResponse;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp$Builder;->build()Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 176
    :goto_0
    invoke-super {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->build()Lcom/mediatek/apst/util/command/RawBlockResponse;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp;

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp$Builder;->count:I

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method protected onCreateCommand(I)Lcom/mediatek/apst/util/command/RawBlockResponse;
    .locals 2
    .parameter "featureId"

    .prologue
    .line 139
    new-instance v0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoRsp;-><init>(I)V

    return-object v0
.end method
