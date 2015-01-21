.class final La/a/c;
.super Ljava/lang/Object;


# static fields
.field static final a:La/a/c;


# instance fields
.field private final b:J

.field private final c:Ljava/lang/Object;

.field private final d:La/a/c;

.field private final e:La/a/c;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/c;

    invoke-direct {v0}, La/a/c;-><init>()V

    sput-object v0, La/a/c;->a:La/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La/a/c;->a:La/a/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "empty constructor should only be used once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, La/a/c;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/a/c;->b:J

    iput-object v2, p0, La/a/c;->c:Ljava/lang/Object;

    iput-object v2, p0, La/a/c;->d:La/a/c;

    iput-object v2, p0, La/a/c;->e:La/a/c;

    return-void
.end method

.method private constructor <init>(JLjava/lang/Object;La/a/c;La/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, La/a/c;->b:J

    iput-object p3, p0, La/a/c;->c:Ljava/lang/Object;

    iput-object p4, p0, La/a/c;->d:La/a/c;

    iput-object p5, p0, La/a/c;->e:La/a/c;

    iget v0, p4, La/a/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p5, La/a/c;->f:I

    add-int/2addr v0, v1

    iput v0, p0, La/a/c;->f:I

    return-void
.end method

.method private static a(JLjava/lang/Object;La/a/c;La/a/c;)La/a/c;
    .locals 19

    move-object/from16 v0, p3

    iget v2, v0, La/a/c;->f:I

    move-object/from16 v0, p4

    iget v3, v0, La/a/c;->f:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, La/a/c;->f:I

    move-object/from16 v0, p4

    iget v3, v0, La/a/c;->f:I

    mul-int/lit8 v3, v3, 0x5

    if-lt v2, v3, :cond_1

    move-object/from16 v0, p3

    iget-object v8, v0, La/a/c;->d:La/a/c;

    move-object/from16 v0, p3

    iget-object v11, v0, La/a/c;->e:La/a/c;

    iget v2, v11, La/a/c;->f:I

    iget v3, v8, La/a/c;->f:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    new-instance v9, La/a/c;

    move-object/from16 v0, p3

    iget-wide v2, v0, La/a/c;->b:J

    add-long v12, v2, p0

    move-object/from16 v0, p3

    iget-object v10, v0, La/a/c;->c:Ljava/lang/Object;

    new-instance v2, La/a/c;

    move-object/from16 v0, p3

    iget-wide v3, v0, La/a/c;->b:J

    neg-long v3, v3

    iget-wide v5, v11, La/a/c;->b:J

    move-object/from16 v0, p3

    iget-wide v14, v0, La/a/c;->b:J

    add-long/2addr v5, v14

    invoke-direct {v11, v5, v6}, La/a/c;->d(J)La/a/c;

    move-result-object v6

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    move-object v3, v9

    move-wide v4, v12

    move-object v6, v10

    move-object v7, v8

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    move-object v2, v9

    :goto_0
    return-object v2

    :cond_0
    iget-object v6, v11, La/a/c;->d:La/a/c;

    iget-object v9, v11, La/a/c;->e:La/a/c;

    new-instance v10, La/a/c;

    iget-wide v2, v11, La/a/c;->b:J

    move-object/from16 v0, p3

    iget-wide v4, v0, La/a/c;->b:J

    add-long/2addr v2, v4

    add-long v12, v2, p0

    iget-object v14, v11, La/a/c;->c:Ljava/lang/Object;

    new-instance v2, La/a/c;

    iget-wide v3, v11, La/a/c;->b:J

    neg-long v3, v3

    move-object/from16 v0, p3

    iget-object v5, v0, La/a/c;->c:Ljava/lang/Object;

    iget-wide v15, v6, La/a/c;->b:J

    iget-wide v0, v11, La/a/c;->b:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    move-wide v0, v15

    invoke-direct {v6, v0, v1}, La/a/c;->d(J)La/a/c;

    move-result-object v7

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    new-instance v3, La/a/c;

    move-object/from16 v0, p3

    iget-wide v4, v0, La/a/c;->b:J

    neg-long v4, v4

    iget-wide v6, v11, La/a/c;->b:J

    sub-long/2addr v4, v6

    iget-wide v6, v9, La/a/c;->b:J

    iget-wide v15, v11, La/a/c;->b:J

    add-long/2addr v6, v15

    move-object/from16 v0, p3

    iget-wide v15, v0, La/a/c;->b:J

    add-long/2addr v6, v15

    invoke-direct {v9, v6, v7}, La/a/c;->d(J)La/a/c;

    move-result-object v7

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    move-object v4, v10

    move-wide v5, v12

    move-object v7, v14

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    move-object v2, v10

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    iget v2, v0, La/a/c;->f:I

    move-object/from16 v0, p3

    iget v3, v0, La/a/c;->f:I

    mul-int/lit8 v3, v3, 0x5

    if-lt v2, v3, :cond_3

    move-object/from16 v0, p4

    iget-object v11, v0, La/a/c;->d:La/a/c;

    move-object/from16 v0, p4

    iget-object v8, v0, La/a/c;->e:La/a/c;

    iget v2, v11, La/a/c;->f:I

    iget v3, v8, La/a/c;->f:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_2

    new-instance v9, La/a/c;

    move-object/from16 v0, p4

    iget-wide v2, v0, La/a/c;->b:J

    add-long v12, v2, p0

    move-object/from16 v0, p4

    iget-object v10, v0, La/a/c;->c:Ljava/lang/Object;

    new-instance v2, La/a/c;

    move-object/from16 v0, p4

    iget-wide v3, v0, La/a/c;->b:J

    neg-long v3, v3

    iget-wide v5, v11, La/a/c;->b:J

    move-object/from16 v0, p4

    iget-wide v14, v0, La/a/c;->b:J

    add-long/2addr v5, v14

    invoke-direct {v11, v5, v6}, La/a/c;->d(J)La/a/c;

    move-result-object v7

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    move-object v3, v9

    move-wide v4, v12

    move-object v6, v10

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    move-object v2, v9

    goto/16 :goto_0

    :cond_2
    iget-object v5, v11, La/a/c;->d:La/a/c;

    iget-object v9, v11, La/a/c;->e:La/a/c;

    new-instance v10, La/a/c;

    iget-wide v2, v11, La/a/c;->b:J

    move-object/from16 v0, p4

    iget-wide v6, v0, La/a/c;->b:J

    add-long/2addr v2, v6

    add-long v12, v2, p0

    iget-object v14, v11, La/a/c;->c:Ljava/lang/Object;

    new-instance v2, La/a/c;

    move-object/from16 v0, p4

    iget-wide v3, v0, La/a/c;->b:J

    neg-long v3, v3

    iget-wide v6, v11, La/a/c;->b:J

    sub-long/2addr v3, v6

    iget-wide v6, v5, La/a/c;->b:J

    iget-wide v15, v11, La/a/c;->b:J

    add-long/2addr v6, v15

    move-object/from16 v0, p4

    iget-wide v15, v0, La/a/c;->b:J

    add-long/2addr v6, v15

    invoke-direct {v5, v6, v7}, La/a/c;->d(J)La/a/c;

    move-result-object v7

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    new-instance v3, La/a/c;

    iget-wide v4, v11, La/a/c;->b:J

    neg-long v4, v4

    move-object/from16 v0, p4

    iget-object v6, v0, La/a/c;->c:Ljava/lang/Object;

    iget-wide v15, v9, La/a/c;->b:J

    iget-wide v0, v11, La/a/c;->b:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    move-wide v0, v15

    invoke-direct {v9, v0, v1}, La/a/c;->d(J)La/a/c;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    move-object v4, v10

    move-wide v5, v12

    move-object v7, v14

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    move-object v2, v10

    goto/16 :goto_0

    :cond_3
    new-instance v2, La/a/c;

    move-wide/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    goto/16 :goto_0
.end method

.method private a(La/a/c;La/a/c;)La/a/c;
    .locals 3

    iget-object v0, p0, La/a/c;->d:La/a/c;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, La/a/c;->e:La/a/c;

    if-ne p2, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-wide v0, p0, La/a/c;->b:J

    iget-object v2, p0, La/a/c;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1, p2}, La/a/c;->a(JLjava/lang/Object;La/a/c;La/a/c;)La/a/c;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic a(La/a/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private b(JI)La/a/c;
    .locals 9

    iget v0, p0, La/a/c;->f:I

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    new-instance v0, La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-object v3, p0, La/a/c;->c:Ljava/lang/Object;

    iget-object v4, p0, La/a/c;->d:La/a/c;

    iget-object v5, p0, La/a/c;->e:La/a/c;

    iget-wide v6, p0, La/a/c;->b:J

    sub-long v6, p1, v6

    neg-int v8, p3

    invoke-virtual {v5, v6, v7, v8}, La/a/c;->a(JI)La/a/c;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    sub-long v1, p1, v1

    invoke-direct {v0, v1, v2, p3}, La/a/c;->b(JI)La/a/c;

    move-result-object v4

    iget-object v0, p0, La/a/c;->d:La/a/c;

    if-ne v4, v0, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    new-instance v0, La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    iget-object v3, p0, La/a/c;->c:Ljava/lang/Object;

    iget-object v5, p0, La/a/c;->e:La/a/c;

    invoke-direct/range {v0 .. v5}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    goto :goto_0
.end method

.method static synthetic b(La/a/c;)La/a/c;
    .locals 1

    iget-object v0, p0, La/a/c;->e:La/a/c;

    return-object v0
.end method

.method static synthetic c(La/a/c;)I
    .locals 1

    iget v0, p0, La/a/c;->f:I

    return v0
.end method

.method private c()J
    .locals 4

    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget v0, v0, La/a/c;->f:I

    if-nez v0, :cond_0

    iget-wide v0, p0, La/a/c;->b:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, La/a/c;->d:La/a/c;

    invoke-direct {v0}, La/a/c;->c()J

    move-result-wide v0

    iget-wide v2, p0, La/a/c;->b:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic d(La/a/c;)J
    .locals 2

    iget-wide v0, p0, La/a/c;->b:J

    return-wide v0
.end method

.method private d(J)La/a/c;
    .locals 6

    iget v0, p0, La/a/c;->f:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, La/a/c;

    iget-object v3, p0, La/a/c;->c:Ljava/lang/Object;

    iget-object v4, p0, La/a/c;->d:La/a/c;

    iget-object v5, p0, La/a/c;->e:La/a/c;

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    goto :goto_0
.end method

.method static synthetic e(La/a/c;)La/a/c;
    .locals 1

    iget-object v0, p0, La/a/c;->d:La/a/c;

    return-object v0
.end method


# virtual methods
.method final a(JI)La/a/c;
    .locals 8

    iget v0, p0, La/a/c;->f:I

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    new-instance v0, La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-object v3, p0, La/a/c;->c:Ljava/lang/Object;

    iget-object v4, p0, La/a/c;->d:La/a/c;

    iget-wide v5, p0, La/a/c;->b:J

    sub-long v5, p1, v5

    neg-int v7, p3

    invoke-direct {v4, v5, v6, v7}, La/a/c;->b(JI)La/a/c;

    move-result-object v4

    iget-object v5, p0, La/a/c;->e:La/a/c;

    invoke-direct/range {v0 .. v5}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/c;->e:La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2, p3}, La/a/c;->a(JI)La/a/c;

    move-result-object v5

    iget-object v0, p0, La/a/c;->e:La/a/c;

    if-ne v5, v0, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    new-instance v0, La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    iget-object v3, p0, La/a/c;->c:Ljava/lang/Object;

    iget-object v4, p0, La/a/c;->d:La/a/c;

    invoke-direct/range {v0 .. v5}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    goto :goto_0
.end method

.method final a(JLjava/lang/Object;)La/a/c;
    .locals 6

    iget v0, p0, La/a/c;->f:I

    if-nez v0, :cond_0

    new-instance v0, La/a/c;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2, p3}, La/a/c;->a(JLjava/lang/Object;)La/a/c;

    move-result-object v0

    iget-object v1, p0, La/a/c;->e:La/a/c;

    invoke-direct {p0, v0, v1}, La/a/c;->a(La/a/c;La/a/c;)La/a/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget-object v1, p0, La/a/c;->e:La/a/c;

    iget-wide v2, p0, La/a/c;->b:J

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3, p3}, La/a/c;->a(JLjava/lang/Object;)La/a/c;

    move-result-object v1

    invoke-direct {p0, v0, v1}, La/a/c;->a(La/a/c;La/a/c;)La/a/c;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/c;->c:Ljava/lang/Object;

    if-ne p3, v0, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    new-instance v0, La/a/c;

    iget-object v4, p0, La/a/c;->d:La/a/c;

    iget-object v5, p0, La/a/c;->e:La/a/c;

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/a/c;-><init>(JLjava/lang/Object;La/a/c;La/a/c;)V

    goto :goto_0
.end method

.method final a()Ljava/util/Iterator;
    .locals 1

    new-instance v0, La/a/d;

    invoke-direct {v0, p0}, La/a/d;-><init>(La/a/c;)V

    return-object v0
.end method

.method final a(J)Z
    .locals 3

    :goto_0
    iget v0, p0, La/a/c;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    sub-long/2addr p1, v1

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, La/a/c;->e:La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    sub-long/2addr p1, v1

    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method final b()I
    .locals 1

    iget v0, p0, La/a/c;->f:I

    return v0
.end method

.method final b(J)Ljava/lang/Object;
    .locals 3

    :goto_0
    iget v0, p0, La/a/c;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    sub-long/2addr p1, v1

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, La/a/c;->e:La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    sub-long/2addr p1, v1

    move-object p0, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/c;->c:Ljava/lang/Object;

    goto :goto_1
.end method

.method final c(J)La/a/c;
    .locals 9

    iget v0, p0, La/a/c;->f:I

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget-wide v1, p0, La/a/c;->b:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, La/a/c;->c(J)La/a/c;

    move-result-object v0

    iget-object v1, p0, La/a/c;->e:La/a/c;

    invoke-direct {p0, v0, v1}, La/a/c;->a(La/a/c;La/a/c;)La/a/c;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, La/a/c;->b:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget-object v1, p0, La/a/c;->e:La/a/c;

    iget-wide v2, p0, La/a/c;->b:J

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, La/a/c;->c(J)La/a/c;

    move-result-object v1

    invoke-direct {p0, v0, v1}, La/a/c;->a(La/a/c;La/a/c;)La/a/c;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget v0, v0, La/a/c;->f:I

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/c;->e:La/a/c;

    iget-object v1, p0, La/a/c;->e:La/a/c;

    iget-wide v1, v1, La/a/c;->b:J

    iget-wide v3, p0, La/a/c;->b:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, La/a/c;->d(J)La/a/c;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object v0, p0, La/a/c;->e:La/a/c;

    iget v0, v0, La/a/c;->f:I

    if-nez v0, :cond_4

    iget-object v0, p0, La/a/c;->d:La/a/c;

    iget-object v1, p0, La/a/c;->d:La/a/c;

    iget-wide v1, v1, La/a/c;->b:J

    iget-wide v3, p0, La/a/c;->b:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, La/a/c;->d(J)La/a/c;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object v0, p0, La/a/c;->e:La/a/c;

    invoke-direct {v0}, La/a/c;->c()J

    move-result-wide v0

    iget-wide v2, p0, La/a/c;->b:J

    add-long/2addr v0, v2

    iget-object v2, p0, La/a/c;->e:La/a/c;

    iget-wide v3, p0, La/a/c;->b:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, La/a/c;->b(J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, La/a/c;->e:La/a/c;

    iget-wide v4, p0, La/a/c;->b:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, La/a/c;->c(J)La/a/c;

    move-result-object v3

    iget-wide v4, v3, La/a/c;->b:J

    iget-wide v6, p0, La/a/c;->b:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    invoke-direct {v3, v4, v5}, La/a/c;->d(J)La/a/c;

    move-result-object v3

    iget-object v4, p0, La/a/c;->d:La/a/c;

    iget-object v5, p0, La/a/c;->d:La/a/c;

    iget-wide v5, v5, La/a/c;->b:J

    iget-wide v7, p0, La/a/c;->b:J

    add-long/2addr v5, v7

    sub-long/2addr v5, v0

    invoke-direct {v4, v5, v6}, La/a/c;->d(J)La/a/c;

    move-result-object v4

    invoke-static {v0, v1, v2, v4, v3}, La/a/c;->a(JLjava/lang/Object;La/a/c;La/a/c;)La/a/c;

    move-result-object p0

    goto/16 :goto_0
.end method
