.class Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
.super Ljava/lang/Object;
.source "CommandDetails.java"


# instance fields
.field private mId:I

.field private mStatus:I

.field private mStatusInfo:I

.field private mType:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "type"
    .parameter "chId"
    .parameter "status"
    .parameter "info"

    .prologue
    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    .line 234
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    .line 235
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    .line 236
    iput p4, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 239
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    .line 241
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    .line 242
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    .line 243
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    .line 244
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    return v0
.end method

.method public getStatusInfo()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "s"

    .prologue
    .line 247
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    .line 248
    return-void
.end method

.method public setStatusInfo(I)V
    .locals 0
    .parameter "si"

    .prologue
    .line 255
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    .line 256
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelStatus: mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStatusInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBuffer(Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .parameter "buf"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 303
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 304
    .local v0, data:[B
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mId:I

    .line 305
    .local v1, s:I
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 330
    const-string v2, "ChannelStatus"

    const-string v3, " not support channel type"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-nez v2, :cond_2

    .line 334
    :cond_1
    :goto_1
    :pswitch_1
    if-eqz v0, :cond_0

    .line 335
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 336
    aput-byte v3, v0, v5

    .line 337
    int-to-byte v2, v1

    aput-byte v2, v0, v3

    .line 338
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatusInfo:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 340
    array-length v2, v0

    invoke-virtual {p1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 312
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-ne v2, v3, :cond_3

    .line 313
    or-int/lit16 v1, v1, 0x80

    goto :goto_1

    .line 315
    :cond_3
    const/4 v0, 0x0

    .line 317
    goto :goto_1

    .line 319
    :pswitch_2
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-eqz v2, :cond_1

    .line 321
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-ne v2, v3, :cond_4

    .line 322
    or-int/lit16 v1, v1, 0x80

    goto :goto_1

    .line 323
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->mStatus:I

    if-ne v2, v5, :cond_5

    .line 324
    or-int/lit8 v1, v1, 0x40

    goto :goto_1

    .line 326
    :cond_5
    const/4 v0, 0x0

    .line 328
    goto :goto_1

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
