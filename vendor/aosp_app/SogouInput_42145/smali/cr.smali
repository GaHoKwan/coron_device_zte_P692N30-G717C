.class public final Lcr;
.super Ldd;
.source "SourceFile"


# static fields
.field static final a:[I


# instance fields
.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcr;->a:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
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
    .line 67
    invoke-direct {p0}, Ldd;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcr;->d:[I

    .line 69
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 126
    move v0, v1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 127
    sget-object v2, Lcr;->a:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 128
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 129
    return-void

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected a(Lbd;[ILjava/lang/StringBuffer;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 73
    iget-object v5, p0, Lcr;->d:[I

    .line 74
    aput v1, v5, v1

    .line 75
    aput v1, v5, v9

    .line 76
    const/4 v0, 0x2

    aput v1, v5, v0

    .line 77
    const/4 v0, 0x3

    aput v1, v5, v0

    .line 78
    invoke-virtual {p1}, Lbd;->a()I

    move-result v6

    .line 79
    aget v0, p2, v9

    move v4, v1

    move v3, v1

    .line 83
    :goto_0
    if-ge v4, v10, :cond_1

    if-ge v0, v6, :cond_1

    .line 84
    sget-object v2, Lcr;->b:[[I

    invoke-static {p1, v5, v0, v2}, Lcr;->a(Lbd;[II[[I)I

    move-result v7

    .line 85
    rem-int/lit8 v2, v7, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 86
    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_0

    .line 87
    aget v8, v5, v0

    add-int/2addr v2, v8

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_0
    const/16 v0, 0xa

    if-lt v7, v0, :cond_4

    .line 90
    rsub-int/lit8 v0, v4, 0x5

    shl-int v0, v9, v0

    or-int/2addr v0, v3

    .line 83
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p3, v3}, Lcr;->a(Ljava/lang/StringBuffer;I)V

    .line 96
    sget-object v2, Lcr;->c:[I

    invoke-static {p1, v0, v9, v2}, Lcr;->a(Lbd;IZ[I)[I

    move-result-object v0

    .line 97
    aget v0, v0, v9

    move v3, v1

    .line 99
    :goto_3
    if-ge v3, v10, :cond_3

    if-ge v0, v6, :cond_3

    .line 100
    sget-object v2, Lcr;->a:[[I

    invoke-static {p1, v5, v0, v2}, Lcr;->a(Lbd;[II[[I)I

    move-result v2

    .line 101
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 102
    :goto_4
    array-length v4, v5

    if-ge v0, v4, :cond_2

    .line 103
    aget v4, v5, v0

    add-int/2addr v2, v4

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 99
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_3

    .line 107
    :cond_3
    return v0

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method a()La;
    .locals 1

    .prologue
    .line 111
    sget-object v0, La;->f:La;

    return-object v0
.end method
