.class public Lqo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field private a:Landroid/graphics/Path;

.field public final a:Landroid/graphics/RectF;

.field public final a:[F

.field private final a:[J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 17
    .parameter

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 50
    mul-int/lit8 v1, v6, 0x2

    new-array v7, v1, [F

    .line 51
    new-array v8, v6, [J

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v2, 0x0

    .line 57
    const/4 v1, 0x0

    move v5, v2

    move v2, v3

    move-object v3, v4

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_1

    .line 58
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqm;

    .line 59
    mul-int/lit8 v9, v4, 0x2

    iget v10, v1, Lqm;->a:F

    aput v10, v7, v9

    .line 60
    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    iget v10, v1, Lqm;->b:F

    aput v10, v7, v9

    .line 61
    iget-wide v9, v1, Lqm;->a:J

    aput-wide v9, v8, v5

    .line 63
    if-nez v3, :cond_0

    .line 64
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 65
    iget v3, v1, Lqm;->b:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 66
    iget v3, v1, Lqm;->a:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 67
    iget v3, v1, Lqm;->a:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 68
    iget v1, v1, Lqm;->b:F

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 69
    const/4 v1, 0x0

    .line 75
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 57
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move v2, v1

    goto :goto_0

    .line 71
    :cond_0
    float-to-double v9, v2

    iget v2, v1, Lqm;->a:F

    add-int/lit8 v11, v4, -0x1

    mul-int/lit8 v11, v11, 0x2

    aget v11, v7, v11

    sub-float/2addr v2, v11

    float-to-double v11, v2

    const-wide/high16 v13, 0x4000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v2, v1, Lqm;->b:F

    add-int/lit8 v13, v4, -0x1

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v13, v7, v13

    sub-float/2addr v2, v13

    float-to-double v13, v2

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    double-to-float v2, v9

    .line 73
    iget v9, v1, Lqm;->a:F

    iget v1, v1, Lqm;->b:F

    invoke-virtual {v3, v9, v1}, Landroid/graphics/RectF;->union(FF)V

    move v1, v2

    move-object v2, v3

    goto :goto_1

    .line 78
    :cond_1
    move-object/from16 v0, p0

    iput-object v8, v0, Lqo;->a:[J

    .line 79
    move-object/from16 v0, p0

    iput-object v7, v0, Lqo;->a:[F

    .line 80
    move-object/from16 v0, p0

    iput-object v3, v0, Lqo;->a:Landroid/graphics/RectF;

    .line 81
    move-object/from16 v0, p0

    iput v2, v0, Lqo;->a:F

    .line 82
    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Lqo;
    .locals 4
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 209
    invoke-static {p0}, Lqm;->a(Ljava/io/DataInputStream;)Lqm;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Lqo;

    invoke-direct {v0, v2}, Lqo;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private a()V
    .locals 13

    .prologue
    const/high16 v11, 0x4100

    const/high16 v10, 0x4000

    const/4 v1, 0x0

    .line 106
    iget-object v6, p0, Lqo;->a:[F

    .line 107
    array-length v7, v6

    .line 109
    const/4 v4, 0x0

    .line 114
    const/4 v0, 0x0

    move v5, v0

    move v3, v1

    :goto_0
    if-ge v5, v7, :cond_2

    .line 115
    aget v2, v6, v5

    .line 116
    add-int/lit8 v0, v5, 0x1

    aget v0, v6, v0

    .line 117
    if-nez v4, :cond_0

    .line 118
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 119
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 114
    :goto_1
    add-int/lit8 v3, v5, 0x2

    move v5, v3

    move-object v4, v2

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_0
    sub-float v8, v2, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 124
    sub-float v9, v0, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 125
    cmpl-float v8, v8, v11

    if-gez v8, :cond_1

    cmpl-float v8, v9, v11

    if-ltz v8, :cond_3

    .line 126
    :cond_1
    add-float v8, v2, v3

    div-float/2addr v8, v10

    add-float v9, v0, v1

    div-float/2addr v9, v10

    invoke-virtual {v4, v3, v1, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v1, v2

    move-object v2, v4

    .line 128
    goto :goto_1

    .line 133
    :cond_2
    iput-object v4, p0, Lqo;->a:Landroid/graphics/Path;

    .line 134
    return-void

    :cond_3
    move v0, v1

    move-object v2, v4

    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lqo;->a:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lqo;->a()V

    .line 102
    :cond_0
    iget-object v0, p0, Lqo;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 6
    .parameter

    .prologue
    .line 186
    iget-object v1, p0, Lqo;->a:[F

    .line 187
    iget-object v2, p0, Lqo;->a:[J

    .line 188
    iget-object v0, p0, Lqo;->a:[F

    array-length v3, v0

    .line 191
    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 193
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 195
    aget v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 197
    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 199
    div-int/lit8 v4, v0, 0x2

    aget-wide v4, v2, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 193
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method
