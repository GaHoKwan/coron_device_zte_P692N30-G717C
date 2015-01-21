.class final Ldc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final a:Ljava/lang/StringBuffer;

.field private final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldc;->a:[I

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ldc;->b:[I

    return-void

    .line 30
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ldc;->c:[I

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ldc;->a:Ljava/lang/StringBuffer;

    return-void
.end method

.method private static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 123
    sget-object v1, Ldc;->b:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 124
    return v0

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 108
    const/4 v1, 0x0

    .line 109
    add-int/lit8 v0, v2, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    .line 109
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 112
    :cond_0
    mul-int/lit8 v1, v1, 0x3

    .line 113
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    .line 113
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 116
    :cond_1
    mul-int/lit8 v0, v1, 0x3

    .line 117
    rem-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 179
    const-string v0, ""

    .line 182
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    div-int/lit8 v2, v1, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 166
    :sswitch_0
    const-string v0, "\u00a3"

    goto :goto_0

    .line 169
    :sswitch_1
    const-string v0, "$"

    goto :goto_0

    .line 172
    :sswitch_2
    const-string v1, "99991"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    const-string v0, "0.00"

    goto :goto_1

    .line 174
    :cond_1
    const-string v1, "99990"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const-string v0, "Used"

    goto :goto_1

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
        0x39 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 140
    :pswitch_1
    sget-object v2, Lo;->e:Lo;

    .line 141
    invoke-static {p0}, Ldc;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 150
    :goto_1
    if-eqz v1, :cond_0

    .line 153
    new-instance v0, Ljava/util/Hashtable;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 154
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :pswitch_2
    sget-object v2, Lo;->f:Lo;

    .line 145
    invoke-static {p0}, Ldc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 138
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a(Lbd;[ILjava/lang/StringBuffer;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 64
    iget-object v5, p0, Ldc;->c:[I

    .line 65
    aput v1, v5, v1

    .line 66
    aput v1, v5, v9

    .line 67
    const/4 v0, 0x2

    aput v1, v5, v0

    .line 68
    const/4 v0, 0x3

    aput v1, v5, v0

    .line 69
    invoke-virtual {p1}, Lbd;->a()I

    move-result v6

    .line 70
    aget v0, p2, v9

    move v4, v1

    move v3, v1

    .line 74
    :goto_0
    if-ge v4, v10, :cond_3

    if-ge v0, v6, :cond_3

    .line 75
    sget-object v2, Ldd;->b:[[I

    invoke-static {p1, v5, v0, v2}, Ldd;->a(Lbd;[II[[I)I

    move-result v7

    .line 76
    rem-int/lit8 v2, v7, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 77
    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_0

    .line 78
    aget v8, v5, v0

    add-int/2addr v2, v8

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_0
    const/16 v0, 0xa

    if-lt v7, v0, :cond_6

    .line 81
    rsub-int/lit8 v0, v4, 0x4

    shl-int v0, v9, v0

    or-int/2addr v0, v3

    .line 83
    :goto_2
    const/4 v3, 0x4

    if-eq v4, v3, :cond_2

    .line 85
    :goto_3
    if-ge v2, v6, :cond_1

    invoke-virtual {p1, v2}, Lbd;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 88
    :cond_1
    :goto_4
    if-ge v2, v6, :cond_2

    invoke-virtual {p1, v2}, Lbd;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 74
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eq v1, v10, :cond_4

    .line 95
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 98
    :cond_4
    invoke-static {v3}, Ldc;->a(I)I

    move-result v1

    .line 99
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldc;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 100
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 103
    :cond_5
    return v0

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method a(ILbd;I)Ln;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 40
    sget-object v0, Ldc;->a:[I

    invoke-static {p2, p3, v9, v0}, Ldd;->a(Lbd;IZ[I)[I

    move-result-object v0

    .line 42
    iget-object v1, p0, Ldc;->a:Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 44
    invoke-virtual {p0, p2, v0, v1}, Ldc;->a(Lbd;[ILjava/lang/StringBuffer;)I

    move-result v2

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Ldc;->a(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    .line 49
    new-instance v4, Ln;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lp;

    new-instance v7, Lp;

    aget v8, v0, v9

    aget v0, v0, v10

    add-int/2addr v0, v8

    int-to-float v0, v0

    const/high16 v8, 0x4000

    div-float/2addr v0, v8

    int-to-float v8, p1

    invoke-direct {v7, v0, v8}, Lp;-><init>(FF)V

    aput-object v7, v6, v9

    new-instance v0, Lp;

    int-to-float v2, v2

    int-to-float v7, p1

    invoke-direct {v0, v2, v7}, Lp;-><init>(FF)V

    aput-object v0, v6, v10

    sget-object v0, La;->g:La;

    invoke-direct {v4, v1, v5, v6, v0}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    .line 57
    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v4, v3}, Ln;->a(Ljava/util/Hashtable;)V

    .line 60
    :cond_0
    return-object v4
.end method
