.class public Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;
.super Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;
.source "RestoreSmsReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;
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
    .line 117
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;-><init>(I)V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;->count:I

    .line 119
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "rawBlockSize"

    .prologue
    .line 112
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;-><init>(II)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;->count:I

    .line 114
    return-void
.end method


# virtual methods
.method public appendSms(Lcom/mediatek/apst/util/entity/message/Sms;I)Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;
    .locals 3
    .parameter "sms"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 143
    :try_start_0
    iget v1, p0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;->count:I

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/mediatek/apst/util/entity/message/Sms;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 149
    iget v1, p0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;->count:I
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-object p0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 152
    throw v0
.end method

.method public bridge synthetic build()Lcom/mediatek/apst/util/command/RawBlockRequest;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;->build()Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 175
    :goto_0
    invoke-super {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->build()Lcom/mediatek/apst/util/command/RawBlockRequest;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;->count:I

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method protected onCreateCommand(I)Lcom/mediatek/apst/util/command/RawBlockRequest;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 124
    new-instance v0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;-><init>()V

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->reset()V

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;->count:I

    .line 162
    return-void
.end method
