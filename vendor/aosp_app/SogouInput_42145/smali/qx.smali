.class public abstract Lqx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lqx;->a:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lqx;->b:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lqx;->c:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lqx;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final a(J)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 325
    const/16 v0, 0x100

    invoke-static {p0, p1, v1, v1, v0}, Lqx;->a(JIII)I

    move-result v0

    const/16 v1, 0x200

    invoke-static {p0, p1, v2, v2, v1}, Lqx;->a(JIII)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x400

    invoke-static {p0, p1, v3, v3, v1}, Lqx;->a(JIII)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(JIII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 355
    shl-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 360
    :goto_0
    return p4

    .line 357
    :cond_0
    int-to-long v0, p2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move p4, p3

    .line 358
    goto :goto_0

    .line 360
    :cond_1
    const/4 p4, 0x0

    goto :goto_0
.end method

.method public static a(J)J
    .locals 5
    .parameter

    .prologue
    .line 371
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Lqx;->a(JIJ)J

    move-result-wide v0

    .line 372
    const/4 v2, 0x2

    const-wide v3, 0x20202000202L

    invoke-static {v0, v1, v2, v3, v4}, Lqx;->a(JIJ)J

    move-result-wide v0

    .line 373
    const/4 v2, 0x4

    const-wide v3, 0x40404000404L

    invoke-static {v0, v1, v2, v3, v4}, Lqx;->a(JIJ)J

    move-result-wide v0

    .line 374
    return-wide v0
.end method

.method private static a(JIJ)J
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    .line 378
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    .line 379
    xor-long v0, p3, v3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 382
    :cond_0
    :goto_0
    return-wide p0

    .line 380
    :cond_1
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 381
    xor-long v0, p3, v3

    and-long/2addr p0, v0

    goto :goto_0
.end method

.method public static a(JILandroid/view/KeyEvent;)J
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    .line 390
    :cond_0
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Lqx;->b(JIJ)J

    move-result-wide p0

    .line 402
    :cond_1
    :goto_0
    return-wide p0

    .line 393
    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    .line 395
    :cond_3
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Lqx;->b(JIJ)J

    move-result-wide p0

    goto :goto_0

    .line 398
    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    .line 399
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Lqx;->b(JIJ)J

    move-result-wide p0

    goto :goto_0
.end method

.method private static b(JIJ)J
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x28

    const/16 v8, 0x20

    const/16 v7, 0x8

    const-wide/16 v5, -0x1

    const-wide/16 v3, 0x0

    .line 413
    int-to-long v0, p2

    shl-long/2addr v0, v8

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-wide p0

    .line 415
    :cond_1
    int-to-long v0, p2

    shl-long/2addr v0, v9

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 416
    xor-long v0, p3, v5

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v7

    or-long p0, v0, v2

    goto :goto_0

    .line 417
    :cond_2
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 419
    int-to-long v0, p2

    shl-long/2addr v0, v7

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 420
    xor-long v0, p3, v5

    and-long/2addr p0, v0

    goto :goto_0

    .line 422
    :cond_3
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v9

    xor-long/2addr v2, v5

    and-long p0, v0, v2

    goto :goto_0
.end method

.method public static b(JILandroid/view/KeyEvent;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    invoke-static {p0, p1}, Lqx;->a(J)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 408
    :goto_0
    return-wide v0

    .line 407
    :cond_0
    const-wide/16 v0, 0x200

    goto :goto_0
.end method

.method private static c(JIJ)J
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v6, -0x1

    const/16 v5, 0x20

    .line 448
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 449
    xor-long v0, p3, v6

    and-long/2addr p0, v0

    .line 453
    :cond_0
    :goto_0
    return-wide p0

    .line 450
    :cond_1
    int-to-long v0, p2

    shl-long/2addr v0, v5

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 452
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v5

    xor-long/2addr v2, v6

    and-long p0, v0, v2

    goto :goto_0
.end method

.method public static c(JILandroid/view/KeyEvent;)J
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    .line 432
    :cond_0
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Lqx;->c(JIJ)J

    move-result-wide p0

    .line 444
    :cond_1
    :goto_0
    return-wide p0

    .line 435
    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    .line 437
    :cond_3
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Lqx;->c(JIJ)J

    move-result-wide p0

    goto :goto_0

    .line 440
    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    .line 441
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Lqx;->c(JIJ)J

    move-result-wide p0

    goto :goto_0
.end method
