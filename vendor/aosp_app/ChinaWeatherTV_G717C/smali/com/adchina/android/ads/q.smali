.class final Lcom/adchina/android/ads/q;
.super Ljava/lang/Object;


# static fields
.field private static final D:[I

.field private static final E:[I


# instance fields
.field private A:I

.field private B:J

.field private C:I

.field private F:I

.field a:I

.field b:I

.field c:I

.field d:[B

.field e:I

.field f:I

.field g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:[I

.field private m:I

.field private n:I

.field private o:Z

.field private p:[I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:[I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adchina/android/ads/q;->D:[I

    new-array v0, v1, [I

    aput v1, v0, v2

    aput v3, v0, v3

    const/4 v1, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/adchina/android/ads/q;->E:[I

    return-void

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/adchina/android/ads/q;->h:I

    iput v1, p0, Lcom/adchina/android/ads/q;->i:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/adchina/android/ads/q;->j:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/adchina/android/ads/q;->F:I

    iput v2, p0, Lcom/adchina/android/ads/q;->k:I

    const/16 v0, 0x118

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adchina/android/ads/q;->l:[I

    iput v2, p0, Lcom/adchina/android/ads/q;->m:I

    iput v1, p0, Lcom/adchina/android/ads/q;->n:I

    iput-boolean v1, p0, Lcom/adchina/android/ads/q;->o:Z

    iput-object v3, p0, Lcom/adchina/android/ads/q;->p:[I

    iput v1, p0, Lcom/adchina/android/ads/q;->q:I

    iput v1, p0, Lcom/adchina/android/ads/q;->r:I

    iput v1, p0, Lcom/adchina/android/ads/q;->u:I

    iput-boolean v1, p0, Lcom/adchina/android/ads/q;->v:Z

    iput-boolean v1, p0, Lcom/adchina/android/ads/q;->w:Z

    iput-object v3, p0, Lcom/adchina/android/ads/q;->x:[I

    iput v1, p0, Lcom/adchina/android/ads/q;->y:I

    iput v1, p0, Lcom/adchina/android/ads/q;->C:I

    iput v1, p0, Lcom/adchina/android/ads/q;->a:I

    iput-object p1, p0, Lcom/adchina/android/ads/q;->d:[B

    iget-object v0, p0, Lcom/adchina/android/ads/q;->d:[B

    array-length v0, v0

    iput v0, p0, Lcom/adchina/android/ads/q;->b:I

    iput v1, p0, Lcom/adchina/android/ads/q;->c:I

    iget-object v0, p0, Lcom/adchina/android/ads/q;->d:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/adchina/android/ads/q;->d:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    invoke-static {v0, v1}, Lcom/adchina/android/ads/q;->a(II)I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/q;->h:I

    iget-object v0, p0, Lcom/adchina/android/ads/q;->d:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/adchina/android/ads/q;->d:[B

    const/16 v2, 0x9

    aget-byte v1, v1, v2

    invoke-static {v0, v1}, Lcom/adchina/android/ads/q;->a(II)I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/q;->i:I

    return-void
.end method

.method private static final a(II)I
    .locals 2

    shl-int/lit8 v0, p1, 0x8

    int-to-byte v1, p0

    invoke-static {v1}, Lcom/adchina/android/ads/q;->b(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/adchina/android/ads/q;)I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/q;->h:I

    return v0
.end method

.method private a(I)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/adchina/android/ads/q;->c:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/adchina/android/ads/q;->b:I

    if-lt v1, v2, :cond_1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/q;->d:[B

    iget v2, p0, Lcom/adchina/android/ads/q;->c:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/q;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/adchina/android/ads/q;->l:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-lt v0, p1, :cond_0

    iget v0, p0, Lcom/adchina/android/ads/q;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/adchina/android/ads/q;->c:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(IZ)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v3, p1, [I

    move v2, v0

    :goto_0
    if-lt v2, p1, :cond_1

    if-eqz p2, :cond_2

    iput-object v3, p0, Lcom/adchina/android/ads/q;->p:[I

    :goto_1
    move v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/adchina/android/ads/q;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/adchina/android/ads/q;->l:[I

    aget v4, v4, v0

    shl-int/lit8 v4, v4, 0x10

    iget-object v5, p0, Lcom/adchina/android/ads/q;->l:[I

    aget v5, v5, v1

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    or-int/2addr v4, v5

    const/high16 v5, -0x100

    or-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lcom/adchina/android/ads/q;->x:[I

    goto :goto_1
.end method

.method private static final b(I)I
    .locals 0

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    return p0
.end method

.method static synthetic b(Lcom/adchina/android/ads/q;)I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/q;->i:I

    return v0
.end method

.method private static final b(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/adchina/android/ads/q;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/adchina/android/ads/q;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/adchina/android/ads/q;->b:I

    iget v1, p0, Lcom/adchina/android/ads/q;->c:I

    sub-int/2addr v0, v1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/q;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adchina/android/ads/q;->a:I

    return-void
.end method

.method public final c()Lcom/adchina/android/ads/g;
    .locals 30

    move-object/from16 v0, p0

    iget v15, v0, Lcom/adchina/android/ads/q;->a:I

    const/16 v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adchina/android/ads/q;->F:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adchina/android/ads/q;->k:I

    if-gt v15, v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adchina/android/ads/q;->k:I

    if-gez v3, :cond_6

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/adchina/android/ads/q;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x47

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x49

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x46

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x38

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x37

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x39

    if-ne v3, v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x61

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/adchina/android/ads/q;->a(I)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/4 v4, 0x2

    and-int/lit8 v5, v3, 0x7

    shl-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->n:I

    const/16 v4, 0x80

    invoke-static {v3, v4}, Lcom/adchina/android/ads/q;->b(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adchina/android/ads/q;->o:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/adchina/android/ads/q;->p:[I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/adchina/android/ads/q;->o:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adchina/android/ads/q;->n:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/adchina/android/ads/q;->a(IZ)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/adchina/android/ads/q;->a(I)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_8

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x21

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/adchina/android/ads/q;->a(I)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_a
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/adchina/android/ads/q;->e()I

    move-result v3

    if-gtz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_3

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->d:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->c:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/adchina/android/ads/q;->b(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adchina/android/ads/q;->d:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->c:I

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    invoke-static {v4}, Lcom/adchina/android/ads/q;->b(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/adchina/android/ads/q;->a(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adchina/android/ads/q;->F:I

    invoke-direct/range {p0 .. p0}, Lcom/adchina/android/ads/q;->e()I

    move-result v3

    if-gez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adchina/android/ads/q;->m:I

    goto :goto_4

    :cond_c
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adchina/android/ads/q;->m:I

    goto :goto_4

    :cond_d
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_6

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/adchina/android/ads/q;->a(I)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v3, v4}, Lcom/adchina/android/ads/q;->a(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adchina/android/ads/q;->s:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-static {v3, v4}, Lcom/adchina/android/ads/q;->a(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adchina/android/ads/q;->t:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-static {v3, v4}, Lcom/adchina/android/ads/q;->a(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adchina/android/ads/q;->q:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    invoke-static {v3, v4}, Lcom/adchina/android/ads/q;->a(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adchina/android/ads/q;->r:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x80

    invoke-static {v3, v4}, Lcom/adchina/android/ads/q;->b(II)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/adchina/android/ads/q;->v:Z

    const/4 v4, 0x2

    and-int/lit8 v5, v3, 0x7

    shl-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->u:I

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/adchina/android/ads/q;->b(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adchina/android/ads/q;->w:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/adchina/android/ads/q;->x:[I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/adchina/android/ads/q;->v:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adchina/android/ads/q;->u:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/adchina/android/ads/q;->a(IZ)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adchina/android/ads/q;->q:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adchina/android/ads/q;->r:I

    move/from16 v17, v0

    const/4 v10, 0x0

    const/16 v3, 0x1000

    new-array v0, v3, [I

    move-object/from16 v18, v0

    const/16 v3, 0x1000

    new-array v0, v3, [I

    move-object/from16 v19, v0

    const/16 v3, 0x2000

    new-array v0, v3, [I

    move-object/from16 v20, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/adchina/android/ads/q;->a(I)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->k:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->k:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->k:I

    if-lt v4, v15, :cond_6

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->l:[I

    const/4 v4, 0x0

    aget v21, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adchina/android/ads/q;->q:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->r:I

    mul-int/2addr v3, v4

    new-array v0, v3, [I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->p:[I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/adchina/android/ads/q;->v:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adchina/android/ads/q;->x:[I

    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->m:I

    if-ltz v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->m:I

    const v5, 0xffffff

    aput v5, v3, v4

    :cond_13
    const/4 v4, 0x1

    shl-int v23, v4, v21

    add-int/lit8 v24, v23, 0x1

    add-int/lit8 v7, v21, 0x1

    add-int/lit8 v9, v23, 0x2

    const/4 v8, -0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    :goto_7
    move/from16 v0, v23

    if-lt v4, v0, :cond_14

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->C:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->y:I

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/adchina/android/ads/q;->B:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/adchina/android/ads/q;->z:Z

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->A:I

    const/4 v11, 0x0

    const/4 v4, 0x0

    move v12, v11

    move v11, v4

    move v4, v7

    :goto_8
    move/from16 v0, v17

    if-lt v11, v0, :cond_15

    new-instance v3, Lcom/adchina/android/ads/g;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->q:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->r:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->s:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adchina/android/ads/q;->t:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->F:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/adchina/android/ads/g;-><init>(Landroid/graphics/Bitmap;III)V

    goto/16 :goto_6

    :cond_14
    aput v4, v19, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_15
    const/4 v7, 0x0

    move v14, v7

    :goto_9
    move/from16 v0, v16

    if-ge v14, v0, :cond_26

    if-nez v5, :cond_2b

    :goto_a
    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->C:I

    if-lt v7, v4, :cond_16

    :goto_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adchina/android/ads/q;->B:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-int v7, v0

    const/4 v13, 0x1

    shl-int/2addr v13, v4

    add-int/lit8 v13, v13, -0x1

    and-int/2addr v7, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adchina/android/ads/q;->B:J

    move-wide/from16 v25, v0

    shr-long v25, v25, v4

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/adchina/android/ads/q;->B:J

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adchina/android/ads/q;->C:I

    sub-int/2addr v13, v4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/adchina/android/ads/q;->C:I

    :goto_c
    if-gez v7, :cond_19

    new-instance v3, Lcom/adchina/android/ads/g;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->q:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->r:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->s:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adchina/android/ads/q;->t:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->F:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/adchina/android/ads/g;-><init>(Landroid/graphics/Bitmap;III)V

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/adchina/android/ads/q;->z:Z

    if-eqz v7, :cond_17

    const/4 v7, -0x1

    goto :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->y:I

    if-nez v7, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/adchina/android/ads/q;->e()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/adchina/android/ads/q;->y:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/adchina/android/ads/q;->A:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->y:I

    if-gtz v7, :cond_18

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/adchina/android/ads/q;->z:Z

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adchina/android/ads/q;->B:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adchina/android/ads/q;->l:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adchina/android/ads/q;->A:I

    aget v7, v7, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adchina/android/ads/q;->C:I

    shl-int/2addr v7, v13

    int-to-long v0, v7

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/adchina/android/ads/q;->B:J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->A:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/adchina/android/ads/q;->A:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->C:I

    add-int/lit8 v7, v7, 0x8

    move-object/from16 v0, p0

    iput v7, v0, Lcom/adchina/android/ads/q;->C:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->y:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/adchina/android/ads/q;->y:I

    goto/16 :goto_a

    :cond_19
    if-gt v7, v9, :cond_1a

    move/from16 v0, v24

    if-ne v7, v0, :cond_1b

    :cond_1a
    new-instance v3, Lcom/adchina/android/ads/g;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->q:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->r:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->s:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adchina/android/ads/q;->t:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->F:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/adchina/android/ads/g;-><init>(Landroid/graphics/Bitmap;III)V

    goto/16 :goto_6

    :cond_1b
    move/from16 v0, v23

    if-ne v7, v0, :cond_1c

    add-int/lit8 v4, v21, 0x1

    add-int/lit8 v9, v23, 0x2

    const/4 v8, -0x1

    goto/16 :goto_9

    :cond_1c
    const/4 v13, -0x1

    if-ne v8, v13, :cond_1d

    add-int/lit8 v6, v5, 0x1

    aget v8, v19, v7

    aput v8, v20, v5

    move v5, v6

    move v8, v7

    move v6, v7

    goto/16 :goto_9

    :cond_1d
    if-ne v7, v9, :cond_2a

    add-int/lit8 v13, v5, 0x1

    aput v6, v20, v5

    move v5, v8

    :goto_d
    move/from16 v0, v23

    if-gt v5, v0, :cond_1e

    aget v6, v19, v5

    const/16 v5, 0x1000

    if-lt v9, v5, :cond_1f

    new-instance v3, Lcom/adchina/android/ads/g;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->q:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->r:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->s:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adchina/android/ads/q;->t:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->F:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/adchina/android/ads/g;-><init>(Landroid/graphics/Bitmap;III)V

    goto/16 :goto_6

    :cond_1e
    add-int/lit8 v6, v13, 0x1

    aget v25, v19, v5

    aput v25, v20, v13

    aget v5, v18, v5

    move v13, v6

    goto :goto_d

    :cond_1f
    add-int/lit8 v5, v13, 0x1

    aput v6, v20, v13

    aput v8, v18, v9

    aput v6, v19, v9

    add-int/lit8 v8, v9, 0x1

    const/4 v9, 0x1

    shl-int/2addr v9, v4

    if-lt v8, v9, :cond_20

    const/16 v9, 0x1000

    if-ge v8, v9, :cond_20

    add-int/lit8 v4, v4, 0x1

    :cond_20
    move/from16 v29, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v4

    move/from16 v4, v29

    :goto_e
    add-int/lit8 v9, v4, -0x1

    aget v13, v20, v9

    if-gez v13, :cond_21

    new-instance v3, Lcom/adchina/android/ads/g;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->q:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->r:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->s:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adchina/android/ads/q;->t:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->F:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/adchina/android/ads/g;-><init>(Landroid/graphics/Bitmap;III)V

    goto/16 :goto_6

    :cond_21
    if-nez v14, :cond_23

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->f:I

    aget v4, v3, v13

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->e:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->g:I

    :cond_22
    :goto_f
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v4, v8

    move v8, v6

    move v6, v5

    move v5, v9

    move v9, v7

    goto/16 :goto_9

    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->e:I

    aget v25, v3, v13

    move/from16 v0, v25

    if-eq v4, v0, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->g:I

    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adchina/android/ads/q;->g:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adchina/android/ads/q;->f:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    if-le v4, v0, :cond_24

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->f:I

    aget v4, v3, v13

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->e:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/adchina/android/ads/q;->g:I

    add-int/lit8 v4, v16, -0x1

    if-ne v14, v4, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->q:I

    mul-int/2addr v4, v12

    add-int/2addr v4, v14

    aget v13, v3, v13

    aput v13, v22, v4

    goto :goto_f

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adchina/android/ads/q;->q:I

    move/from16 v25, v0

    mul-int v25, v25, v12

    add-int v25, v25, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adchina/android/ads/q;->e:I

    move/from16 v26, v0

    aput v26, v22, v25

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->f:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adchina/android/ads/q;->f:I

    add-int/lit8 v4, v16, -0x1

    if-ne v14, v4, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->g:I

    :goto_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/adchina/android/ads/q;->g:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adchina/android/ads/q;->f:I

    move/from16 v25, v0

    add-int v13, v13, v25

    if-gt v4, v13, :cond_22

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adchina/android/ads/q;->q:I

    mul-int/2addr v13, v12

    add-int/2addr v13, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adchina/android/ads/q;->e:I

    move/from16 v25, v0

    aput v25, v22, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/adchina/android/ads/q;->w:Z

    if-eqz v7, :cond_28

    sget-object v7, Lcom/adchina/android/ads/q;->D:[I

    aget v7, v7, v10

    add-int/2addr v7, v12

    move/from16 v29, v10

    move v10, v7

    move/from16 v7, v29

    :goto_12
    move/from16 v0, v17

    if-lt v10, v0, :cond_29

    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x3

    if-le v7, v10, :cond_27

    new-instance v3, Lcom/adchina/android/ads/g;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/adchina/android/ads/q;->q:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->r:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adchina/android/ads/q;->s:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adchina/android/ads/q;->t:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adchina/android/ads/q;->F:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/adchina/android/ads/g;-><init>(Landroid/graphics/Bitmap;III)V

    goto/16 :goto_6

    :cond_27
    sget-object v10, Lcom/adchina/android/ads/q;->E:[I

    aget v10, v10, v7

    goto :goto_12

    :cond_28
    add-int/lit8 v7, v12, 0x1

    move/from16 v29, v10

    move v10, v7

    move/from16 v7, v29

    :cond_29
    add-int/lit8 v11, v11, 0x1

    move v12, v10

    move v10, v7

    goto/16 :goto_8

    :cond_2a
    move v13, v5

    move v5, v7

    goto/16 :goto_d

    :cond_2b
    move v7, v9

    move/from16 v29, v6

    move v6, v8

    move v8, v4

    move v4, v5

    move/from16 v5, v29

    goto/16 :goto_e

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/q;->d:[B

    iput-object v0, p0, Lcom/adchina/android/ads/q;->l:[I

    iput-object v0, p0, Lcom/adchina/android/ads/q;->p:[I

    iput-object v0, p0, Lcom/adchina/android/ads/q;->x:[I

    return-void
.end method
