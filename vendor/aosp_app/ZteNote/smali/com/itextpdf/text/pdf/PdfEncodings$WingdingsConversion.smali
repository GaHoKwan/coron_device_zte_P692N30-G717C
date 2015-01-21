.class Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;
.super Ljava/lang/Object;
.source "PdfEncodings.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/ExtraEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfEncodings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WingdingsConversion"
.end annotation


# static fields
.field private static final table:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    const/16 v0, 0xbf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;->table:[B

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x23t
        0x22t
        0x0t
        0x0t
        0x0t
        0x29t
        0x3et
        0x51t
        0x2at
        0x0t
        0x0t
        0x41t
        0x3ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xfct
        0x0t
        0x0t
        0x0t
        0xfbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x56t
        0x0t
        0x58t
        0x59t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xb5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xb6t
        0x0t
        0x0t
        0x0t
        0xadt
        0xaft
        0xact
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7ct
        0x7bt
        0x0t
        0x0t
        0x0t
        0x54t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xa6t
        0x0t
        0x0t
        0x0t
        0x71t
        0x72t
        0x0t
        0x0t
        0x0t
        0x75t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7dt
        0x7et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8ct
        0x8dt
        0x8et
        0x8ft
        0x90t
        0x91t
        0x92t
        0x93t
        0x94t
        0x95t
        0x81t
        0x82t
        0x83t
        0x84t
        0x85t
        0x86t
        0x87t
        0x88t
        0x89t
        0x8at
        0x8ct
        0x8dt
        0x8et
        0x8ft
        0x90t
        0x91t
        0x92t
        0x93t
        0x94t
        0x95t
        0xe8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xe8t
        0xd8t
        0x0t
        0x0t
        0xc4t
        0xc6t
        0x0t
        0x0t
        0xf0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/PdfEncodings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;-><init>()V

    return-void
.end method


# virtual methods
.method public byteToChar([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "b"
    .parameter "encoding"

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public charToByte(CLjava/lang/String;)[B
    .locals 5
    .parameter "char1"
    .parameter "encoding"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 335
    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    .line 336
    new-array v1, v4, [B

    int-to-byte v2, p1

    aput-byte v2, v1, v3

    .line 342
    :goto_0
    return-object v1

    .line 337
    :cond_0
    const/16 v1, 0x2701

    if-lt p1, v1, :cond_1

    const/16 v1, 0x27be

    if-gt p1, v1, :cond_1

    .line 338
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;->table:[B

    add-int/lit16 v2, p1, -0x2700

    aget-byte v0, v1, v2

    .line 339
    .local v0, v:B
    if-eqz v0, :cond_1

    .line 340
    new-array v1, v4, [B

    aput-byte v0, v1, v3

    goto :goto_0

    .line 342
    .end local v0           #v:B
    :cond_1
    new-array v1, v3, [B

    goto :goto_0
.end method

.method public charToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .parameter "text"
    .parameter "encoding"

    .prologue
    const/4 v11, 0x0

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 347
    .local v3, cc:[C
    array-length v9, v3

    new-array v0, v9, [B

    .line 348
    .local v0, b:[B
    const/4 v6, 0x0

    .line 349
    .local v6, ptr:I
    array-length v5, v3

    .line 350
    .local v5, len:I
    const/4 v4, 0x0

    .local v4, k:I
    move v7, v6

    .end local v6           #ptr:I
    .local v7, ptr:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 351
    aget-char v2, v3, v4

    .line 352
    .local v2, c:C
    const/16 v9, 0x20

    if-ne v2, v9, :cond_0

    .line 353
    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    int-to-byte v9, v2

    aput-byte v9, v0, v7

    .line 350
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    goto :goto_0

    .line 354
    :cond_0
    const/16 v9, 0x2701

    if-lt v2, v9, :cond_3

    const/16 v9, 0x27be

    if-gt v2, v9, :cond_3

    .line 355
    sget-object v9, Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;->table:[B

    add-int/lit16 v10, v2, -0x2700

    aget-byte v8, v9, v10

    .line 356
    .local v8, v:B
    if-eqz v8, :cond_3

    .line 357
    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    aput-byte v8, v0, v7

    goto :goto_1

    .line 360
    .end local v2           #c:C
    .end local v6           #ptr:I
    .end local v8           #v:B
    .restart local v7       #ptr:I
    :cond_1
    if-ne v7, v5, :cond_2

    .line 364
    .end local v0           #b:[B
    :goto_2
    return-object v0

    .line 362
    .restart local v0       #b:[B
    :cond_2
    new-array v1, v7, [B

    .line 363
    .local v1, b2:[B
    invoke-static {v0, v11, v1, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 364
    goto :goto_2

    .end local v1           #b2:[B
    .restart local v2       #c:C
    :cond_3
    move v6, v7

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_1
.end method
