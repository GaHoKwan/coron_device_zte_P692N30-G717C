.class public Lcom/mediatek/apst/util/entity/message/Message;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "Message.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BOX_DRAFT:I = 0x3

.field public static final BOX_FAILED:I = 0x5

.field public static final BOX_INBOX:I = 0x1

.field public static final BOX_NONE:I = -0x1

.field public static final BOX_OUTBOX:I = 0x4

.field public static final BOX_QUEUED:I = 0x6

.field public static final BOX_SENT:I = 0x2

.field public static final SIM1_ID:I = 0x0

.field public static final SIM2_ID:I = 0x1

.field public static final SIM3_ID:I = 0x2

.field public static final SIM4_ID:I = 0x3

.field public static final SIM_ID:I = 0x0

.field public static final SIM_NONE:I = -0x1

.field public static final TYPE_MMS:I = 0x2

.field public static final TYPE_SMS:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private box:I

.field private date:J

.field private date_sent:I

.field private locked:Z

.field private read:Z

.field private simICCId:Ljava/lang/String;

.field private simId:I

.field private simName:Ljava/lang/String;

.field private simNumber:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 163
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/message/Message;-><init>(J)V

    .line 164
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->threadId:J

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->box:I

    .line 156
    iput-boolean v2, p0, Lcom/mediatek/apst/util/entity/message/Message;->read:Z

    .line 157
    iput-boolean v2, p0, Lcom/mediatek/apst/util/entity/message/Message;->locked:Z

    .line 159
    iput v2, p0, Lcom/mediatek/apst/util/entity/message/Message;->simId:I

    .line 160
    return-void
.end method

.method public static isOutGoing(I)Z
    .locals 1
    .parameter "box"

    .prologue
    .line 293
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 294
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 295
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 296
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 293
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Message;->clone()Lcom/mediatek/apst/util/entity/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/message/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/Message;

    .line 287
    .local v0, copy:Lcom/mediatek/apst/util/entity/message/Message;
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->clone()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    .line 289
    return-object v0
.end method

.method public getBox()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->box:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->date:J

    return-wide v0
.end method

.method public getDate_sent()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->date_sent:I

    return v0
.end method

.method public getSimICCId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simICCId:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simId:I

    return v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->threadId:J

    return-wide v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->locked:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->read:Z

    return v0
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
    .line 329
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 331
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->threadId:J

    .line 333
    new-instance v0, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    .line 334
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 336
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->date:J

    .line 338
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->box:I

    .line 340
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->read:Z

    .line 342
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->subject:Ljava/lang/String;

    .line 344
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->locked:Z

    .line 347
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simId:I

    .line 349
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
    .line 354
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 356
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->threadId:J

    .line 358
    new-instance v0, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    .line 359
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 361
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->date:J

    .line 363
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->box:I

    .line 365
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->read:Z

    .line 367
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->subject:Ljava/lang/String;

    .line 369
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->locked:Z

    .line 372
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simId:I

    .line 374
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 376
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simName:Ljava/lang/String;

    .line 378
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simNumber:Ljava/lang/String;

    .line 380
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simICCId:Ljava/lang/String;

    .line 386
    :cond_0
    return-void
.end method

.method public setBox(I)V
    .locals 0
    .parameter "box"

    .prologue
    .line 239
    iput p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->box:I

    .line 240
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->date:J

    .line 236
    return-void
.end method

.method public setDate_sent(I)V
    .locals 0
    .parameter "date_sent"

    .prologue
    .line 255
    iput p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->date_sent:I

    .line 256
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->locked:Z

    .line 252
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .parameter "read"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->read:Z

    .line 244
    return-void
.end method

.method public setSimICCId(Ljava/lang/String;)V
    .locals 0
    .parameter "simICCId"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->simICCId:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 260
    iput p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->simId:I

    .line 261
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 0
    .parameter "simName"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->simName:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setSimNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "simNumber"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->simNumber:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->subject:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setTarget(Lcom/mediatek/apst/util/entity/message/TargetAddress;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    goto :goto_0
.end method

.method public setThreadId(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/message/Message;->threadId:J

    .line 223
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
    .line 304
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 306
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->threadId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 308
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 310
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->date:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 312
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->box:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 314
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->read:Z

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 316
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->subject:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->locked:Z

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 321
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 322
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
    .line 391
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 393
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->threadId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 395
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 397
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->date:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 399
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->box:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 401
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->read:Z

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 403
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->subject:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->locked:Z

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 408
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 410
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Message;->simICCId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method
