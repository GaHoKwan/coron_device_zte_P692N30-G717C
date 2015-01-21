.class public Lcom/zte/zdm/application/d/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:[C = null

.field public static final b:[C = null

.field public static final c:[C = null

.field public static final d:[C = null

.field public static final e:[C = null

.field public static final f:[C = null

.field public static final g:I = 0x193

.field public static final h:I = 0x1c2

.field public static final i:I = 0x1c3

.field public static final j:I = 0x1c4

.field public static final k:I = 0x1c5

.field public static final l:I = 0x1c6

.field public static final m:I = 0x1c7

.field private static n:Lcom/zte/zdm/application/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/zdm/application/d/g;->a:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/zdm/application/d/g;->b:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/zdm/application/d/g;->c:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/zdm/application/d/g;->d:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/zte/zdm/application/d/g;->e:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/zte/zdm/application/d/g;->f:[C

    return-void

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x5bt 0x0t
        0x5bt 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x5ct 0x0t
        0x5ct 0x0t
    .end array-data

    :array_2
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x5dt 0x0t
        0x5dt 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x5et 0x0t
        0x5et 0x0t
    .end array-data

    :array_4
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x5ft 0x0t
        0x5ft 0x0t
    .end array-data

    :array_5
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x60t 0x0t
        0x60t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/d/g;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/d/g;->n:Lcom/zte/zdm/application/d/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/d/g;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/g;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/d/g;->n:Lcom/zte/zdm/application/d/g;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/d/g;->n:Lcom/zte/zdm/application/d/g;

    return-object v0
.end method

.method private a([C[C)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x1

    move v0, v1

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-char v3, p1, v0

    aget-char v4, p2, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public a([C)I
    .locals 2

    const/16 v0, 0x193

    sget-object v1, Lcom/zte/zdm/application/d/g;->a:[C

    invoke-direct {p0, v1, p1}, Lcom/zte/zdm/application/d/g;->a([C[C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1c2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/zte/zdm/application/d/g;->b:[C

    invoke-direct {p0, v1, p1}, Lcom/zte/zdm/application/d/g;->a([C[C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1c3

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/zte/zdm/application/d/g;->c:[C

    invoke-direct {p0, v1, p1}, Lcom/zte/zdm/application/d/g;->a([C[C)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x1c4

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/zte/zdm/application/d/g;->d:[C

    invoke-direct {p0, v1, p1}, Lcom/zte/zdm/application/d/g;->a([C[C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x1c5

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/zte/zdm/application/d/g;->e:[C

    invoke-direct {p0, v1, p1}, Lcom/zte/zdm/application/d/g;->a([C[C)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x1c6

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/zte/zdm/application/d/g;->f:[C

    invoke-direct {p0, v1, p1}, Lcom/zte/zdm/application/d/g;->a([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1c7

    goto :goto_0
.end method
