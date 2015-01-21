.class public Lcom/zte/zdm/b/g/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/zdm/b/g/b;->a:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/zte/zdm/b/g/b;->b:[B

    const/16 v0, 0x41

    :goto_0
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/zte/zdm/b/g/b;->b:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/zte/zdm/b/g/b;->b:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    sget-object v1, Lcom/zte/zdm/b/g/b;->b:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/zte/zdm/b/g/b;->b:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    sget-object v0, Lcom/zte/zdm/b/g/b;->b:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x3d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    sget-object v4, Lcom/zte/zdm/b/g/b;->b:[B

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/zte/zdm/b/g/b;->b:[B

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v5, v5, v6

    sget-object v6, Lcom/zte/zdm/b/g/b;->b:[B

    add-int/lit8 v7, v2, 0x3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v6, v6, v7

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v7, v4, 0x4

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v7, v5, 0x2

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    shl-int/lit8 v4, v5, 0x6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_3

    sget-object v1, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    :goto_2
    return-object v0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_4

    sget-object v1, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    sget-object v3, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    sget-object v3, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    sget-object v4, Lcom/zte/zdm/b/g/b;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v3, 0x2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_2
.end method

.method public static a([B)[B
    .locals 12

    const/4 v1, 0x0

    const/16 v11, 0x3d

    array-length v0, p0

    rem-int/lit8 v3, v0, 0x3

    if-nez v3, :cond_0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    :goto_0
    array-length v2, p0

    sub-int v4, v2, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    sget-object v8, Lcom/zte/zdm/b/g/b;->a:[B

    ushr-int/lit8 v9, v5, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v8, v8, v9

    aput-byte v8, v0, v1

    add-int/lit8 v8, v1, 0x1

    sget-object v9, Lcom/zte/zdm/b/g/b;->a:[B

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v10, v6, 0x4

    or-int/2addr v5, v10

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v9, v5

    aput-byte v5, v0, v8

    add-int/lit8 v5, v1, 0x2

    sget-object v8, Lcom/zte/zdm/b/g/b;->a:[B

    shl-int/lit8 v6, v6, 0x2

    ushr-int/lit8 v9, v7, 0x6

    or-int/2addr v6, v9

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v8, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v1, 0x3

    sget-object v6, Lcom/zte/zdm/b/g/b;->a:[B

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v0, v5

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    packed-switch v3, :pswitch_data_0

    :goto_2
    :pswitch_0
    return-object v0

    :pswitch_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, v1, 0x2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    sget-object v4, Lcom/zte/zdm/b/g/b;->a:[B

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x3

    sget-object v3, Lcom/zte/zdm/b/g/b;->a:[B

    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aput-byte v11, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v11, v0, v1

    goto :goto_2

    :pswitch_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v4, v2, 0x4

    or-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    sget-object v5, Lcom/zte/zdm/b/g/b;->a:[B

    aget-byte v3, v5, v3

    aput-byte v3, v0, v4

    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    sget-object v4, Lcom/zte/zdm/b/g/b;->a:[B

    aget-byte v1, v4, v1

    aput-byte v1, v0, v3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    sget-object v3, Lcom/zte/zdm/b/g/b;->a:[B

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v11, v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b([B)[B
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x3d

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p0, v0

    if-ne v0, v8, :cond_0

    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    :goto_0
    move v2, v1

    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x4

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/zte/zdm/b/g/b;->b:[B

    aget-byte v4, p0, v2

    aget-byte v3, v3, v4

    sget-object v4, Lcom/zte/zdm/b/g/b;->b:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/zte/zdm/b/g/b;->b:[B

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    aget-byte v5, v5, v6

    sget-object v6, Lcom/zte/zdm/b/g/b;->b:[B

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, p0, v7

    aget-byte v6, v6, v7

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v7, v4, 0x4

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v7, v5, 0x2

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    shl-int/lit8 v4, v5, 0x6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v8, :cond_1

    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    goto :goto_0

    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p0, v1

    if-ne v1, v8, :cond_3

    sget-object v1, Lcom/zte/zdm/b/g/b;->b:[B

    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, p0, v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/zte/zdm/b/g/b;->b:[B

    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    :goto_2
    return-object v0

    :cond_3
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    if-ne v1, v8, :cond_4

    sget-object v1, Lcom/zte/zdm/b/g/b;->b:[B

    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, p0, v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/zte/zdm/b/g/b;->b:[B

    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    sget-object v3, Lcom/zte/zdm/b/g/b;->b:[B

    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/zte/zdm/b/g/b;->b:[B

    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, p0, v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/zte/zdm/b/g/b;->b:[B

    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    sget-object v3, Lcom/zte/zdm/b/g/b;->b:[B

    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    sget-object v4, Lcom/zte/zdm/b/g/b;->b:[B

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v3, 0x2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2
.end method
