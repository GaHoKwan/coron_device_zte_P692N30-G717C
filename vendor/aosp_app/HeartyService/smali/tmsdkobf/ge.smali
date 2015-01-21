.class public final Ltmsdkobf/ge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/ge$a;
    }
.end annotation


# static fields
.field private static mT:Ltmsdkobf/ge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/ge;->mT:Ltmsdkobf/ge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static declared-synchronized bF()Ltmsdkobf/ge;
    .locals 2

    .prologue
    .line 13
    const-class v1, Ltmsdkobf/ge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/ge;->mT:Ltmsdkobf/ge;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ltmsdkobf/ge;

    invoke-direct {v0}, Ltmsdkobf/ge;-><init>()V

    sput-object v0, Ltmsdkobf/ge;->mT:Ltmsdkobf/ge;

    .line 16
    :cond_0
    sget-object v0, Ltmsdkobf/ge;->mT:Ltmsdkobf/ge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "locClinet"
    .parameter "gpsStr"

    .prologue
    const/16 v7, 0x1b

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-static {p1}, Ltmsdkobf/gm;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    invoke-static {p2}, Ltmsdkobf/gm;->at(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ltmsdkobf/ge$a;

    invoke-direct {v0, p0, v1}, Ltmsdkobf/ge$a;-><init>(Ltmsdkobf/ge;B)V

    iget-object v0, v0, Ltmsdkobf/ge$a;->mT:Ltmsdkobf/ge;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v0, v1

    move v2, v1

    :goto_1
    if-lt v0, v4, :cond_2

    shl-int/lit8 v0, v4, 0x7

    add-int/2addr v0, v4

    xor-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x24

    and-int/lit8 v2, v2, 0x1f

    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v4, v2, :cond_3

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    move v0, v1

    move v2, v1

    .line 38
    :goto_3
    if-lt v0, v7, :cond_d

    and-int/lit8 v0, v2, 0x1f

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v4, v0, :cond_e

    move v0, v1

    :goto_4
    if-eqz v0, :cond_0

    move v1, v3

    .line 41
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ltmsdkobf/gm;->a(C)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0xb

    div-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x1f

    const/4 v4, 0x7

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v4, v2, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v0, 0xa

    div-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x1f

    const/16 v4, 0xc

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v4, v2, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x13

    div-int/lit8 v2, v2, 0x9

    and-int/lit8 v2, v2, 0x1f

    const/16 v4, 0xe

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v4, v2, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x27

    div-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0x1f

    const/16 v4, 0x13

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v4, v2, :cond_7

    move v0, v1

    goto/16 :goto_2

    :cond_7
    div-int/lit8 v2, v0, 0x17

    add-int/lit8 v2, v2, 0x43

    div-int/lit8 v2, v2, 0x7

    and-int/lit8 v2, v2, 0x1f

    const/16 v4, 0x15

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v4, v2, :cond_8

    move v0, v1

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x17

    div-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, 0x1f

    const/16 v2, 0x1a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v4, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_9

    move v0, v1

    goto/16 :goto_2

    :cond_9
    move v0, v1

    move v2, v1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_a

    and-int/lit8 v2, v0, 0x1f

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v4, v2, :cond_b

    move v0, v1

    goto/16 :goto_2

    :cond_a
    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Ltmsdkobf/gm;->nI:[I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ltmsdkobf/gm;->a(C)I

    move-result v6

    xor-int/2addr v0, v6

    and-int/lit16 v0, v0, 0xff

    aget v0, v5, v0

    xor-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v4, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_c

    move v0, v1

    goto/16 :goto_2

    :cond_c
    move v0, v3

    goto/16 :goto_2

    .line 38
    :cond_d
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Ltmsdkobf/gm;->nI:[I

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ltmsdkobf/gm;->a(C)I

    move-result v6

    xor-int/2addr v2, v6

    and-int/lit16 v2, v2, 0xff

    aget v2, v5, v2

    xor-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_e
    shr-int/lit8 v0, v2, 0x5

    and-int/lit8 v0, v0, 0x1f

    const/16 v2, 0x1c

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v4, Ltmsdkobf/gm;->jP:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_f

    move v0, v1

    goto/16 :goto_4

    :cond_f
    move v0, v3

    goto/16 :goto_4
.end method
