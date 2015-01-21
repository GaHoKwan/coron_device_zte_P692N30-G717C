.class Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;
.super Ljava/lang/Object;
.source "NandFlash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/memory/NandFlash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmcCid"
.end annotation


# static fields
.field private static final BIT_MONTH:I = 0x8

.field private static final BIT_PRV:I = 0x4

.field private static final ID_HYNIX:I = 0x90

.field private static final ID_MICRON:I = 0x13

.field private static final ID_SAMSUNG:I = 0x15

.field private static final ID_SANDISK:I = 0x2

.field private static final LENGTH_CID:I = 0x20

.field private static final LENGTH_MANFID:I = 0x2

.field private static final LENGTH_MONTH:I = 0x1

.field private static final LENGTH_NAME:I = 0x2

.field private static final LENGTH_OEMID:I = 0x4

.field private static final LENGTH_PRV:I = 0x2

.field private static final LENGTH_SERIAL:I = 0x8

.field private static final LENGTH_YEAR:I = 0x1

.field private static final MANNAME_HYNIX:Ljava/lang/String; = "hynix"

.field private static final MANNAME_MICRON:Ljava/lang/String; = "micron"

.field private static final MANNAME_SAMSUNG:Ljava/lang/String; = "samsung"

.field private static final MANNAME_SANDISK:Ljava/lang/String; = "sandisk"

.field private static final MANNAME_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final MASK_MANFID:I = 0xffff

.field private static final MASK_PRV:I = 0xf

.field private static final PROD_NAME_LENGTH:I = 0x6

.field private static final RADIX_16:I = 0x10

.field private static final START_MANFID:I = 0x1e

.field private static final START_MONTH:I = 0x3

.field private static final START_NAME:I = 0x18

.field private static final START_OEMID:I = 0x1a

.field private static final START_PRV:I = 0xc

.field private static final START_SERIAL:I = 0x4

.field private static final START_YEAR:I = 0x2

.field private static final YEAR_BASE:I = 0x7cd


# instance fields
.field mManfid:I

.field mMonth:I

.field mOemId:I

.field mProdName:[C

.field mPrv:I

.field mSerial:Ljava/lang/String;

.field mYear:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput v0, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mManfid:I

    .line 225
    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mProdName:[C

    .line 226
    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mSerial:Ljava/lang/String;

    .line 227
    iput v0, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mOemId:I

    .line 228
    iput v0, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mYear:I

    .line 229
    iput v0, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mPrv:I

    .line 232
    iput v0, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mMonth:I

    return-void
.end method

.method private getSub([CII)Ljava/lang/String;
    .locals 5
    .parameter "chs"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 337
    array-length v4, p1

    sub-int v0, v4, p2

    .line 338
    .local v0, endIndex:I
    array-length v4, p1

    sub-int/2addr v4, p2

    sub-int v3, v4, p3

    .line 339
    .local v3, startIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v2, sb:Ljava/lang/StringBuilder;
    move v1, v3

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 341
    aget-char v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Z
    .locals 8
    .parameter "cidStr"

    .prologue
    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, result:Z
    if-eqz p1, :cond_0

    const/16 v5, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 245
    :cond_0
    const/4 v4, 0x0

    .line 280
    :goto_0
    return v4

    .line 248
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 249
    .local v0, chs:[C
    const/16 v5, 0x1e

    const/4 v6, 0x2

    invoke-direct {p0, v0, v5, v6}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->getSub([CII)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mManfid:I

    .line 251
    const/4 v5, 0x6

    new-array v3, v5, [C

    .line 252
    .local v3, name:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 253
    mul-int/lit8 v5, v2, 0x2

    rsub-int/lit8 v5, v5, 0x18

    const/4 v6, 0x2

    invoke-direct {p0, v0, v5, v6}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->getSub([CII)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v3, v2

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 257
    :cond_2
    iput-object v3, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mProdName:[C

    .line 258
    const/4 v5, 0x4

    const/16 v6, 0x8

    invoke-direct {p0, v0, v5, v6}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->getSub([CII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mSerial:Ljava/lang/String;

    .line 259
    const/16 v5, 0x1a

    const/4 v6, 0x4

    invoke-direct {p0, v0, v5, v6}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->getSub([CII)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mOemId:I

    .line 261
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, v0, v5, v6}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->getSub([CII)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit16 v5, v5, 0x7cd

    iput v5, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mYear:I

    .line 264
    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {p0, v0, v5, v6}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->getSub([CII)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mMonth:I

    .line 266
    const/16 v5, 0xc

    const/4 v6, 0x2

    invoke-direct {p0, v0, v5, v6}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->getSub([CII)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mPrv:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    const/4 v4, 0x1

    goto :goto_0

    .line 269
    .end local v0           #chs:[C
    .end local v2           #i:I
    .end local v3           #name:[C
    :catch_0
    move-exception v1

    .line 270
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "EM/Memory_flash"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse emmc ID NumberFormatException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v4, 0x0

    .line 278
    goto/16 :goto_0

    .line 273
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 274
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "EM/Memory_flash"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse emmc ID ArrayIndexOutOfBoundsException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "manfid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, manname:Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mManfid:I

    const v3, 0xffff

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 302
    const-string v0, "unknown"

    .line 305
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v2, "OEM/Application ID: 0x%1$04x"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mOemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v2, "product name: %s"

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mProdName:[C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v2, "product revision: %d.%d PRV = 0x%x"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mPrv:I

    shr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mPrv:I

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mPrv:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, "product serial number: 0x%s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mSerial:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v2, "manufacturing date: %s/%d MDT = 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mMonth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mMonth:I

    shl-int/lit8 v4, v4, 0x8

    iget v5, p0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->mYear:I

    add-int/lit16 v5, v5, -0x7cd

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 290
    :sswitch_0
    const-string v0, "sandisk"

    .line 291
    goto/16 :goto_0

    .line 293
    :sswitch_1
    const-string v0, "micron"

    .line 294
    goto/16 :goto_0

    .line 296
    :sswitch_2
    const-string v0, "samsung"

    .line 297
    goto/16 :goto_0

    .line 299
    :sswitch_3
    const-string v0, "hynix"

    .line 300
    goto/16 :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x13 -> :sswitch_1
        0x15 -> :sswitch_2
        0x90 -> :sswitch_3
    .end sparse-switch
.end method
