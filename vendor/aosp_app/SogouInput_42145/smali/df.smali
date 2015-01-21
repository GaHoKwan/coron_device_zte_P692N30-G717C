.class public final Ldf;
.super Ldd;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final c:[[I


# instance fields
.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldf;->a:[I

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Ldf;->c:[[I

    return-void

    .line 39
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_1
    .array-data 0x4
        0x38t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ldd;-><init>()V

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ldf;->d:[I

    .line 55
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 120
    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 121
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 122
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    aget-char v2, v0, v7

    .line 124
    packed-switch v2, :pswitch_data_0

    .line 144
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 145
    const-string v0, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :pswitch_0
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {v1, v0, v3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 135
    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 140
    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    aget-char v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuffer;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    move v2, v1

    :goto_0
    const/4 v0, 0x1

    if-gt v2, v0, :cond_2

    move v0, v1

    .line 97
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 98
    sget-object v3, Ldf;->c:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne p1, v3, :cond_0

    .line 99
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    return-void

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 105
    :cond_2
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected a(Lbd;[ILjava/lang/StringBuffer;)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 59
    iget-object v5, p0, Ldf;->d:[I

    .line 60
    aput v1, v5, v1

    .line 61
    aput v1, v5, v9

    .line 62
    const/4 v0, 0x2

    aput v1, v5, v0

    .line 63
    const/4 v0, 0x3

    aput v1, v5, v0

    .line 64
    invoke-virtual {p1}, Lbd;->a()I

    move-result v6

    .line 65
    aget v0, p2, v9

    move v4, v1

    move v3, v1

    .line 69
    :goto_0
    const/4 v2, 0x6

    if-ge v4, v2, :cond_1

    if-ge v0, v6, :cond_1

    .line 70
    sget-object v2, Ldf;->b:[[I

    invoke-static {p1, v5, v0, v2}, Ldf;->a(Lbd;[II[[I)I

    move-result v7

    .line 71
    rem-int/lit8 v2, v7, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 72
    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_0

    .line 73
    aget v8, v5, v0

    add-int/2addr v2, v8

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_0
    const/16 v0, 0xa

    if-lt v7, v0, :cond_2

    .line 76
    rsub-int/lit8 v0, v4, 0x5

    shl-int v0, v9, v0

    or-int/2addr v0, v3

    .line 69
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {p3, v3}, Ldf;->a(Ljava/lang/StringBuffer;I)V

    .line 82
    return v0

    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method a()La;
    .locals 1

    .prologue
    .line 109
    sget-object v0, La;->c:La;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-static {p1}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ldd;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected a(Lbd;I)[I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x1

    sget-object v1, Ldf;->a:[I

    invoke-static {p1, p2, v0, v1}, Ldf;->a(Lbd;IZ[I)[I

    move-result-object v0

    return-object v0
.end method
