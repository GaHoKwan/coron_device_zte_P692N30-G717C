.class public Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
.super Ljava/lang/Object;
.source "PanoramaMesh.java"


# static fields
.field private static MAP_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gallery2/PanoramaMesh"

.field private static mMeshMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/gallery3d/panorama/PanoramaMesh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFragAngle:I

.field private mHeightAngle:I

.field private mNormalBuffer:Ljava/nio/FloatBuffer;

.field private mRadius:F

.field private mTexCoordAry:[F

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x8

    sput v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->MAP_SIZE:I

    .line 28
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh$1;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh$1;-><init>()V

    sput-object v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mMeshMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x4000

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mFragAngle:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mTexCoordAry:[F

    .line 62
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mRadius:F

    .line 63
    const/high16 v0, 0x43b4

    int-to-float v1, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mHeightAngle:I

    .line 64
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mHeightAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mFragAngle:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mFragAngle:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mHeightAngle:I

    .line 65
    invoke-direct {p0}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->initMesh()V

    .line 66
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->MAP_SIZE:I

    return v0
.end method

.method public static getInstance(II)Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 37
    const-class v5, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    monitor-enter v5

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    :try_start_0
    div-int v3, p0, p1

    .line 40
    .local v3, scale:I
    sget-object v4, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mMeshMap:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    sget-object v4, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mMeshMap:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    move-object v1, v0

    .line 42
    sget-object v4, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mMeshMap:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v4, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mMeshMap:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit v5

    move-object v2, v1

    .line 56
    .end local v1           #mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    :goto_0
    return-object v2

    .line 50
    .restart local v1       #mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    :cond_0
    new-instance v2, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v1           #mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    .local v2, mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    :try_start_1
    sget-object v4, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mMeshMap:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2           #mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    .restart local v1       #mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    goto :goto_0

    .line 58
    .end local v3           #scale:I
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v1           #mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    .restart local v2       #mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    .restart local v3       #scale:I
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    .restart local v1       #mesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
    goto :goto_1
.end method

.method private initMesh()V
    .locals 23

    .prologue
    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v3, alVertix:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mHeightAngle:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v13, v19, 0x2

    .local v13, rowAngle:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mHeightAngle:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-gt v13, v0, :cond_1

    .line 103
    const/4 v7, 0x0

    .local v7, colAngleAngle:I
    :goto_1
    const/16 v19, 0x168

    move/from16 v0, v19

    if-ge v7, v0, :cond_0

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mRadius:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    int-to-double v0, v7

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mRadius:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    int-to-double v0, v7

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mRadius:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    int-to-double v0, v13

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->tan(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mFragAngle:I

    move/from16 v19, v0

    add-int v7, v7, v19

    goto :goto_1

    .line 102
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mFragAngle:I

    move/from16 v19, v0

    add-int v13, v13, v19

    goto/16 :goto_0

    .line 114
    .end local v7           #colAngleAngle:I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    div-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexCount:I

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexCount:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 117
    .local v18, vertices:[F
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 118
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    aput v19, v18, v8

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, alTexture:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mHeightAngle:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mFragAngle:I

    move/from16 v20, v0

    div-int v19, v19, v20

    add-int/lit8 v12, v19, 0x1

    .line 124
    .local v12, row:I
    const/16 v19, 0x168

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mFragAngle:I

    move/from16 v20, v0

    div-int v6, v19, v20

    .line 126
    .local v6, col:I
    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    int-to-float v15, v0

    .line 127
    .local v15, splitRow:F
    int-to-float v14, v6

    .line 129
    .local v14, splitCol:F
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v12, :cond_a

    .line 130
    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_4

    .line 131
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    if-ge v9, v6, :cond_4

    .line 132
    mul-int v19, v8, v6

    add-int v10, v19, v9

    .line 133
    .local v10, k:I
    add-int v19, v10, v6

    mul-int/lit8 v19, v19, 0x3

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int v19, v10, v6

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int v19, v10, v6

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    int-to-float v0, v9

    move/from16 v19, v0

    div-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v19, v8, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v16, v10, 0x1

    .line 141
    .local v16, tmp:I
    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_3

    .line 142
    mul-int v16, v8, v6

    .line 144
    :cond_3
    mul-int/lit8 v19, v16, 0x3

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    mul-int/lit8 v19, v16, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    mul-int/lit8 v19, v16, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    int-to-float v0, v8

    move/from16 v19, v0

    div-float v19, v19, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    mul-int/lit8 v19, v10, 0x3

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    mul-int/lit8 v19, v10, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    mul-int/lit8 v19, v10, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    int-to-float v0, v9

    move/from16 v19, v0

    div-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    int-to-float v0, v8

    move/from16 v19, v0

    div-float v19, v19, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 159
    .end local v9           #j:I
    .end local v10           #k:I
    .end local v16           #tmp:I
    :cond_4
    if-eqz v8, :cond_9

    .line 160
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_5
    if-ge v9, v6, :cond_9

    .line 161
    mul-int v19, v8, v6

    add-int v10, v19, v9

    .line 162
    .restart local v10       #k:I
    sub-int v19, v10, v6

    mul-int/lit8 v19, v19, 0x3

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sub-int v19, v10, v6

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sub-int v19, v10, v6

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    if-nez v9, :cond_6

    .line 166
    const/high16 v19, 0x3f80

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_6
    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v16, v10, -0x1

    .line 173
    .restart local v16       #tmp:I
    if-nez v9, :cond_5

    .line 174
    mul-int v19, v8, v6

    add-int v19, v19, v6

    add-int/lit8 v16, v19, -0x1

    .line 176
    :cond_5
    mul-int/lit8 v19, v16, 0x3

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    mul-int/lit8 v19, v16, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    mul-int/lit8 v19, v16, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    if-nez v9, :cond_7

    .line 180
    const/high16 v19, 0x3f80

    const/high16 v20, 0x3f80

    div-float v20, v20, v14

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_7
    int-to-float v0, v8

    move/from16 v19, v0

    div-float v19, v19, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    mul-int/lit8 v19, v10, 0x3

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    mul-int/lit8 v19, v10, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    mul-int/lit8 v19, v10, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    if-nez v9, :cond_8

    .line 190
    const/high16 v19, 0x3f80

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_8
    int-to-float v0, v8

    move/from16 v19, v0

    div-float v19, v19, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 168
    .end local v16           #tmp:I
    :cond_6
    int-to-float v0, v9

    move/from16 v19, v0

    div-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 182
    .restart local v16       #tmp:I
    :cond_7
    add-int/lit8 v19, v9, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 192
    :cond_8
    int-to-float v0, v9

    move/from16 v19, v0

    div-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 129
    .end local v9           #j:I
    .end local v10           #k:I
    .end local v16           #tmp:I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 199
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    div-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexCount:I

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexCount:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 202
    .local v17, vertexAry:[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexCount:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    new-array v11, v0, [F

    .line 203
    .local v11, normalAry:[F
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    .line 204
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    aput v19, v17, v8

    .line 205
    aget v19, v17, v8

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    aput v19, v11, v8

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 208
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexCount:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mTexCoordAry:[F

    .line 209
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_c

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mTexCoordAry:[F

    move-object/from16 v20, v0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    aput v19, v20, v8

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 213
    :cond_c
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 214
    .local v4, bytes:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 219
    array-length v0, v11

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 220
    .local v5, bytes2:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mNormalBuffer:Ljava/nio/FloatBuffer;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mNormalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mNormalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 224
    return-void
.end method


# virtual methods
.method public getNormalBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mNormalBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTexCoordsBuffer(F)Ljava/nio/FloatBuffer;
    .locals 7
    .parameter "scale"

    .prologue
    .line 78
    iget-object v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mTexCoordAry:[F

    array-length v4, v4

    new-array v2, v4, [F

    .line 79
    .local v2, texCoordAry:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mTexCoordAry:[F

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_0

    .line 80
    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mTexCoordAry:[F

    mul-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    div-float/2addr v5, p1

    aput v5, v2, v4

    .line 81
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mTexCoordAry:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v2, v4

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    array-length v4, v2

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, bytes:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 86
    .local v3, texCoordsBuffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 87
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 88
    return-object v3
.end method

.method public getTriangleCount()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexCount:I

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->mVertexCount:I

    return v0
.end method
