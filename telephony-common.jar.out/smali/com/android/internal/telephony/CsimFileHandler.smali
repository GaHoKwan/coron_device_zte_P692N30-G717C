.class public final Lcom/android/internal/telephony/CsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_CsimFH"


# instance fields
.field private adnRecordSize:[I

.field maxNameLength:I

.field maxnumberLength:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CsimFileHandler;->maxNameLength:I

    .line 48
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/telephony/CsimFileHandler;->maxnumberLength:I

    .line 52
    return-void

    .line 40
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;)Z
    .locals 6
    .parameter "data"
    .parameter "lc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 329
    const/16 v4, 0x62

    aget-byte v5, p1, v3

    if-ne v4, v5, :cond_6

    .line 330
    array-length v3, p1

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 331
    const-string v3, "error response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 332
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 334
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 340
    const/4 v1, 0x2

    .local v1, index:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 341
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x82

    if-ne v3, v4, :cond_2

    .line 346
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x7

    if-le v1, v3, :cond_3

    .line 347
    const-string v3, "no 0x82 tag found in response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 348
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 340
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v2, v3, 0xff

    .line 353
    .local v2, lengthOfFileDescriptor:I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 354
    const-string v3, "error bytes length for uicc response data"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 355
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 358
    :cond_4
    add-int/lit8 v3, v1, 0x2

    aget-byte v0, p1, v3

    .line 360
    .local v0, fdByte:B
    const/16 v3, 0x21

    add-int/lit8 v4, v1, 0x3

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_5

    .line 361
    const-string v3, "error coding type for uicc response data"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 362
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 365
    :cond_5
    add-int/lit8 v3, v1, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    iput v3, p2, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 368
    add-int/lit8 v3, v1, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p2, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lc.recordSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lc.countRecords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 371
    const/4 v3, 0x1

    .line 374
    .end local v0           #fdByte:B
    .end local v1           #index:I
    .end local v2           #lengthOfFileDescriptor:I
    :goto_1
    return v3

    .line 373
    :cond_6
    const-string v4, "not uicc response , hand it to parent to handle"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parseSizeInfoForTransparent([B)I
    .locals 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 275
    const/16 v3, 0x62

    const/4 v4, 0x0

    aget-byte v4, p1, v4

    if-ne v3, v4, :cond_5

    .line 276
    array-length v3, p1

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 277
    const-string v3, "error response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 278
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 280
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x2

    .local v1, index:I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 287
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_2

    .line 292
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-le v1, v3, :cond_3

    .line 293
    const-string v3, "no 0x80 tag found in response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 294
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 286
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v2, v3, 0xff

    .line 298
    .local v2, lengthOfFileSizeBytes:I
    if-eq v2, v5, :cond_4

    .line 299
    const-string v3, "error file size bytes length for uicc response data"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 300
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 303
    :cond_4
    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 309
    .end local v1           #index:I
    .end local v2           #lengthOfFileSizeBytes:I
    :goto_1
    return v0

    .line 308
    :cond_5
    const-string v3, "not uicc response , hand it to parent to handle"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 309
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonIccEFPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 381
    sparse-switch p1, :sswitch_data_0

    .line 400
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 389
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 393
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 396
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 398
    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .parameter "efid"

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetEFPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 57
    sparse-switch p1, :sswitch_data_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 76
    const-string v0, "3F007F105F3A"

    .line 78
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :sswitch_0
    const-string v0, "3F007F25"

    goto :goto_0

    .line 69
    :sswitch_1
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_1
        0x6f28 -> :sswitch_1
        0x6f32 -> :sswitch_1
        0x6f3a -> :sswitch_1
        0x6f3b -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_1
        0x6f41 -> :sswitch_1
        0x6f44 -> :sswitch_1
        0x6f5a -> :sswitch_1
    .end sparse-switch
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 1
    .parameter "efid"
    .parameter "is7FFF"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhbRecordInfo(Landroid/os/Message;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    const/16 v1, 0x14

    aput v1, v0, v3

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    iget v1, p0, Lcom/android/internal/telephony/CsimFileHandler;->maxNameLength:I

    aput v1, v0, v4

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adnRecordSize[0] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adnRecordSize[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adnRecordSize[2] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adnRecordSize[3] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 423
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 425
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getPhbRecordInfo(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 96
    const/16 v27, 0x0

    .line 108
    .local v27, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 254
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 264
    :goto_0
    return-void

    .line 110
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 111
    .local v21, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v27, v0

    .line 112
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 114
    .local v28, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 115
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v23

    .line 258
    .local v23, exc:Ljava/lang/Exception;
    if-eqz v27, :cond_e

    .line 259
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    .end local v23           #exc:Ljava/lang/Exception;
    .restart local v21       #ar:Landroid/os/AsyncResult;
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    :cond_0
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v24

    .line 121
    .local v24, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v24, :cond_1

    .line 122
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    :cond_1
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 128
    .local v22, data:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CsimFileHandler;->parseSizeInfoForTransparent([B)I

    move-result v9

    .line 130
    .local v9, size:I
    if-ltz v9, :cond_2

    .line 131
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 132
    .local v5, fileid:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, efPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CsimFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v5, v14, v1}, Lcom/android/internal/telephony/CsimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 140
    .end local v5           #fileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :cond_2
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 144
    .end local v9           #size:I
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v24           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 145
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 146
    .local v25, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 147
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v27, v0

    .line 149
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 150
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 154
    :cond_3
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v24

    .line 156
    .restart local v24       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v24, :cond_4

    .line 157
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 161
    :cond_4
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 163
    .restart local v22       #data:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CsimFileHandler;->parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 164
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_5

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 168
    :cond_5
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->mode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 169
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->mode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CsimFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/CsimFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 175
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CsimFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/CsimFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 182
    :cond_7
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 187
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v24           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v25           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 188
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 189
    .restart local v25       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 190
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v27, v0

    .line 192
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 193
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 197
    :cond_8
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v24

    .line 199
    .restart local v24       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v24, :cond_9

    .line 200
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 204
    :cond_9
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 206
    .restart local v22       #data:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CsimFileHandler;->parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 207
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 208
    .local v26, recordSize:[I
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    aput v4, v26, v3

    .line 209
    const/4 v3, 0x1

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    const/4 v7, 0x0

    aget v7, v26, v7

    mul-int/2addr v4, v7

    aput v4, v26, v3

    .line 210
    const/4 v3, 0x2

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    aput v4, v26, v3

    .line 212
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    add-int/lit8 v3, v3, -0xe

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/CsimFileHandler;->maxNameLength:I

    .line 213
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 215
    .end local v26           #recordSize:[I
    :cond_a
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 220
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v24           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v25           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_4
    const-string v3, "get record size img done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 222
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 223
    .restart local v25       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 224
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v27, v0

    .line 226
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b

    .line 227
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 231
    :cond_b
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v24

    .line 233
    .restart local v24       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v24, :cond_c

    .line 234
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 238
    :cond_c
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 240
    .restart local v22       #data:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CsimFileHandler;->parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 241
    const-string v3, "read EF IMG"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CsimFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v3, 0x9

    const/16 v4, 0x4f20

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v4, v7, v1}, Lcom/android/internal/telephony/CsimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 248
    :cond_d
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 261
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v24           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v25           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v23       #exc:Ljava/lang/Exception;
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CsimFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 405
    const-string v0, "RIL_CsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 410
    const-string v0, "RIL_CsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public setPhbRecordStorageInfo(II)V
    .locals 2
    .parameter "totalSize"
    .parameter "usedRecord"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/CsimFileHandler;->adnRecordSize:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 416
    return-void
.end method
