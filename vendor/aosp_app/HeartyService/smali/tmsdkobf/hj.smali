.class final Ltmsdkobf/hj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/gz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/hj$a;
    }
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final pI:Ljava/lang/String;

.field private final pJ:Ljava/lang/String;

.field private final pK:Ljava/lang/String;

.field private final pL:Ljava/lang/String;

.field private pM:Ltmsdkobf/hj$a;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const-string v0, "0c"

    iput-object v0, p0, Ltmsdkobf/hj;->pI:Ljava/lang/String;

    .line 201
    const-string v0, "01"

    iput-object v0, p0, Ltmsdkobf/hj;->pJ:Ljava/lang/String;

    .line 202
    const-string v0, "03"

    iput-object v0, p0, Ltmsdkobf/hj;->pK:Ljava/lang/String;

    .line 203
    const-string v0, "00"

    iput-object v0, p0, Ltmsdkobf/hj;->pL:Ljava/lang/String;

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Ltmsdkobf/hj;->mIntent:Landroid/content/Intent;

    .line 211
    return-void
.end method

.method private a(Ljava/io/ByteArrayInputStream;)Z
    .locals 7
    .parameter "pushDataStream"

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 264
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    .line 265
    invoke-direct {p0, p1}, Ltmsdkobf/hj;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, mField:Ljava/lang/String;
    const-string v4, "0c"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    invoke-direct {p0, p1}, Ltmsdkobf/hj;->e(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, href:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {p0, v0}, Ltmsdkobf/hj;->aX(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v4, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    iput-object v0, v4, Ltmsdkobf/hj$a;->url:Ljava/lang/String;

    goto :goto_0

    .line 270
    .end local v0           #href:Ljava/lang/String;
    :cond_1
    const-string v4, "01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    invoke-direct {p0, p1}, Ltmsdkobf/hj;->e(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, subject:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, v2}, Ltmsdkobf/hj;->aX(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 273
    .end local v2           #subject:Ljava/lang/String;
    .local v3, subject:Ljava/lang/String;
    iget-object v4, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    iput-object v3, v4, Ltmsdkobf/hj$a;->subject:Ljava/lang/String;

    goto :goto_0

    .line 277
    .end local v1           #mField:Ljava/lang/String;
    .end local v3           #subject:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    iget-object v4, v4, Ltmsdkobf/hj$a;->subject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    return v4
.end method

.method private aX(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 394
    if-nez p1, :cond_1

    .line 395
    const/4 v1, 0x0

    .line 401
    :cond_0
    return-object v1

    .line 396
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 397
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 398
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 399
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Ltmsdkobf/hj;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Ltmsdkobf/hj;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 398
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private b(Ljava/io/ByteArrayInputStream;)Z
    .locals 3
    .parameter "pushDataStream"

    .prologue
    .line 284
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 285
    :goto_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 286
    invoke-direct {p0, p1}, Ltmsdkobf/hj;->e(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, subject:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Ltmsdkobf/hj;->aX(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 288
    .end local v0           #subject:Ljava/lang/String;
    .local v1, subject:Ljava/lang/String;
    iget-object v2, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    iput-object v1, v2, Ltmsdkobf/hj$a;->subject:Ljava/lang/String;

    goto :goto_0

    .line 291
    .end local v1           #subject:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    iget-object v2, v2, Ltmsdkobf/hj$a;->subject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private c(Ljava/io/ByteArrayInputStream;)Z
    .locals 7
    .parameter "pushDataStream"

    .prologue
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 301
    .local v3, tmpField:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 302
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-lez v4, :cond_3

    .line 303
    invoke-direct {p0, p1}, Ltmsdkobf/hj;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, filed:Ljava/lang/String;
    const-string v4, "03"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, p1}, Ltmsdkobf/hj;->d(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ltmsdkobf/hj;->aX(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 307
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v4, "0c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    iget-object v4, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ltmsdkobf/hj$a;->url:Ljava/lang/String;

    goto :goto_0

    .line 311
    :cond_1
    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    iget-object v4, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    iput-object v2, v4, Ltmsdkobf/hj$a;->subject:Ljava/lang/String;

    goto :goto_0

    .line 315
    .end local v2           #text:Ljava/lang/String;
    :cond_2
    move-object v3, v0

    goto :goto_0

    .line 319
    .end local v0           #filed:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    iget-object v4, v4, Ltmsdkobf/hj$a;->subject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 320
    iget-object v4, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ltmsdkobf/hj$a;->subject:Ljava/lang/String;

    .line 323
    :cond_4
    iget-object v4, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    iget-object v4, v4, Ltmsdkobf/hj$a;->subject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    return v4
.end method

.method private d(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 3
    .parameter "mValueStream"

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 334
    const/4 v2, 0x0

    .line 341
    :goto_0
    return-object v2

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 338
    .local v1, temp:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, p1}, Ltmsdkobf/hj;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private e(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 3
    .parameter "mValueStream"

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 352
    const/4 v2, 0x0

    .line 362
    :goto_0
    return-object v2

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 356
    .local v1, temp:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Ltmsdkobf/hj;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-gtz v2, :cond_1

    .line 359
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Ltmsdkobf/hj;->f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_3

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private f(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 4
    .parameter "mValueStream"

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 373
    const/4 v3, 0x0

    .line 383
    :goto_0
    return-object v3

    .line 375
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 377
    .local v2, mValue:I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 378
    .local v1, builder:Ljava/lang/StringBuilder;
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 379
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    and-int/lit8 v0, v2, 0xf

    .line 381
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 411
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 412
    add-int/lit8 v0, p1, -0x30

    .line 416
    :goto_0
    return v0

    .line 413
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    .line 414
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 415
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    .line 416
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 417
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ca()Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 5

    .prologue
    .line 236
    iget-object v3, p0, Ltmsdkobf/hj;->mIntent:Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 237
    .local v2, mDataByteArray:[B
    const/4 v1, 0x0

    .line 239
    .local v1, data:Ltmsdk/common/module/aresengine/SmsEntity;
    if-eqz v2, :cond_0

    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 240
    invoke-virtual {p0, v2}, Ltmsdkobf/hj;->k([B)V

    .line 242
    new-instance v1, Ltmsdk/common/module/aresengine/SmsEntity;

    .end local v1           #data:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-direct {v1}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>()V

    .line 243
    .restart local v1       #data:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-virtual {p0}, Ltmsdkobf/hj;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Ltmsdkobf/hj;->getBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 245
    const/4 v3, 0x1

    iput v3, v1, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    .line 246
    const/4 v3, 0x2

    iput v3, v1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    .line 247
    iget-object v3, p0, Ltmsdkobf/hj;->mIntent:Landroid/content/Intent;

    iput-object v3, v1, Ltmsdk/common/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    .line 248
    sget-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 249
    .local v0, adapter:Ltmsdkobf/lm;
    if-eqz v0, :cond_0

    .line 250
    iget-object v3, p0, Ltmsdkobf/hj;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v3}, Ltmsdkobf/lm;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    .line 254
    .end local v0           #adapter:Ltmsdkobf/lm;
    :cond_0
    return-object v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    invoke-virtual {v0}, Ltmsdkobf/hj$a;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    invoke-virtual {v0}, Ltmsdkobf/hj$a;->getBody()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k([B)V
    .locals 2
    .parameter "pdu"

    .prologue
    .line 225
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 226
    .local v0, pushDataStream:Ljava/io/ByteArrayInputStream;
    new-instance v1, Ltmsdkobf/hj$a;

    invoke-direct {v1}, Ltmsdkobf/hj$a;-><init>()V

    iput-object v1, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    .line 227
    invoke-direct {p0, v0}, Ltmsdkobf/hj;->a(Ljava/io/ByteArrayInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Ltmsdkobf/hj;->b(Ljava/io/ByteArrayInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Ltmsdkobf/hj;->c(Ljava/io/ByteArrayInputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ltmsdkobf/hj;->pM:Ltmsdkobf/hj$a;

    goto :goto_0
.end method
