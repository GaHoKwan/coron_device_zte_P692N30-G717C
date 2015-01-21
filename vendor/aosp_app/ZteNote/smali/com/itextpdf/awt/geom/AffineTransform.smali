.class public Lcom/itextpdf/awt/geom/AffineTransform;
.super Ljava/lang/Object;
.source "AffineTransform.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_FLIP:I = 0x40

.field public static final TYPE_GENERAL_ROTATION:I = 0x10

.field public static final TYPE_GENERAL_SCALE:I = 0x4

.field public static final TYPE_GENERAL_TRANSFORM:I = 0x20

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MASK_ROTATION:I = 0x18

.field public static final TYPE_MASK_SCALE:I = 0x6

.field public static final TYPE_QUADRANT_ROTATION:I = 0x8

.field public static final TYPE_TRANSLATION:I = 0x1

.field public static final TYPE_UNIFORM_SCALE:I = 0x2

.field static final TYPE_UNKNOWN:I = -0x1

.field static final ZERO:D = 1.0E-10

.field private static final serialVersionUID:J = 0x127891154ad5ff62L


# instance fields
.field m00:D

.field m01:D

.field m02:D

.field m10:D

.field m11:D

.field m12:D

.field transient type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 74
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 76
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 1
    .parameter "m00"
    .parameter "m10"
    .parameter "m01"
    .parameter "m11"
    .parameter "m02"
    .parameter "m12"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 100
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 101
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 102
    iput-wide p5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    .line 103
    iput-wide p7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    .line 104
    iput-wide p9, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 105
    iput-wide p11, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    .line 106
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2
    .parameter "m00"
    .parameter "m10"
    .parameter "m01"
    .parameter "m11"
    .parameter "m02"
    .parameter "m12"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 90
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 91
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 92
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    .line 93
    float-to-double v0, p4

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    .line 94
    float-to-double v0, p5

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 95
    float-to-double v0, p6

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget v0, p1, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 80
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 81
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 82
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    .line 83
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    .line 84
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 85
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    .line 86
    return-void
.end method

.method public constructor <init>([D)V
    .locals 3
    .parameter "matrix"

    .prologue
    const/4 v2, 0x4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 122
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 123
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 124
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    .line 125
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    .line 126
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 127
    aget-wide v0, p1, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 128
    const/4 v0, 0x5

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    .line 130
    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .parameter "matrix"

    .prologue
    const/4 v2, 0x4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 110
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 111
    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 112
    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    .line 113
    const/4 v0, 0x3

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    .line 114
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 115
    aget v0, p1, v2

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 116
    const/4 v0, 0x5

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    .line 118
    :cond_0
    return-void
.end method

.method public static getRotateInstance(D)Lcom/itextpdf/awt/geom/AffineTransform;
    .locals 1
    .parameter "angle"

    .prologue
    .line 339
    new-instance v0, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>()V

    .line 340
    .local v0, t:Lcom/itextpdf/awt/geom/AffineTransform;
    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/awt/geom/AffineTransform;->setToRotation(D)V

    .line 341
    return-object v0
.end method

.method public static getRotateInstance(DDD)Lcom/itextpdf/awt/geom/AffineTransform;
    .locals 7
    .parameter "angle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 345
    new-instance v0, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>()V

    .local v0, t:Lcom/itextpdf/awt/geom/AffineTransform;
    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 346
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/awt/geom/AffineTransform;->setToRotation(DDD)V

    .line 347
    return-object v0
.end method

.method public static getScaleInstance(DD)Lcom/itextpdf/awt/geom/AffineTransform;
    .locals 1
    .parameter "scx"
    .parameter "scY"

    .prologue
    .line 327
    new-instance v0, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>()V

    .line 328
    .local v0, t:Lcom/itextpdf/awt/geom/AffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/awt/geom/AffineTransform;->setToScale(DD)V

    .line 329
    return-object v0
.end method

.method public static getShearInstance(DD)Lcom/itextpdf/awt/geom/AffineTransform;
    .locals 1
    .parameter "shx"
    .parameter "shy"

    .prologue
    .line 333
    new-instance v0, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>()V

    .line 334
    .local v0, m:Lcom/itextpdf/awt/geom/AffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/awt/geom/AffineTransform;->setToShear(DD)V

    .line 335
    return-object v0
.end method

.method public static getTranslateInstance(DD)Lcom/itextpdf/awt/geom/AffineTransform;
    .locals 1
    .parameter "mx"
    .parameter "my"

    .prologue
    .line 321
    new-instance v0, Lcom/itextpdf/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>()V

    .line 322
    .local v0, t:Lcom/itextpdf/awt/geom/AffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/awt/geom/AffineTransform;->setToTranslation(DD)V

    .line 323
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 636
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 637
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 625
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 584
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public concatenate(Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 387
    invoke-virtual {p0, p1, p0}, Lcom/itextpdf/awt/geom/AffineTransform;->multiply(Lcom/itextpdf/awt/geom/AffineTransform;Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/AffineTransform;->setTransform(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 388
    return-void
.end method

.method public createInverse()Lcom/itextpdf/awt/geom/AffineTransform;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/awt/geom/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v15

    .line 396
    .local v15, det:D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 398
    new-instance v2, Lcom/itextpdf/awt/geom/NoninvertibleTransformException;

    const-string v3, "awt.204"

    invoke-static {v3}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_0
    new-instance v2, Lcom/itextpdf/awt/geom/AffineTransform;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    div-double/2addr v3, v15

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    neg-double v5, v5

    div-double/2addr v5, v15

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    neg-double v7, v7

    div-double/2addr v7, v15

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    div-double/2addr v9, v15

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    move-wide/from16 v17, v0

    mul-double v13, v13, v17

    sub-double/2addr v11, v13

    div-double/2addr v11, v15

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    move-wide/from16 v17, v0

    mul-double v13, v13, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    sub-double v13, v13, v17

    div-double/2addr v13, v15

    invoke-direct/range {v2 .. v14}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v2
.end method

.method public createTransformedShape(Lcom/itextpdf/awt/geom/Shape;)Lcom/itextpdf/awt/geom/Shape;
    .locals 3
    .parameter "src"

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 562
    const/4 v0, 0x0

    .line 570
    .end local p1
    :goto_0
    return-object v0

    .line 564
    .restart local p1
    :cond_0
    instance-of v2, p1, Lcom/itextpdf/awt/geom/GeneralPath;

    if-eqz v2, :cond_1

    .line 565
    check-cast p1, Lcom/itextpdf/awt/geom/GeneralPath;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/itextpdf/awt/geom/GeneralPath;->createTransformedShape(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/Shape;

    move-result-object v0

    goto :goto_0

    .line 567
    .restart local p1
    :cond_1
    invoke-interface {p1, p0}, Lcom/itextpdf/awt/geom/Shape;->getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;

    move-result-object v1

    .line 568
    .local v1, path:Lcom/itextpdf/awt/geom/PathIterator;
    new-instance v0, Lcom/itextpdf/awt/geom/GeneralPath;

    invoke-interface {v1}, Lcom/itextpdf/awt/geom/PathIterator;->getWindingRule()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itextpdf/awt/geom/GeneralPath;-><init>(I)V

    .line 569
    .local v0, dst:Lcom/itextpdf/awt/geom/GeneralPath;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/GeneralPath;->append(Lcom/itextpdf/awt/geom/PathIterator;Z)V

    goto :goto_0
.end method

.method public deltaTransform(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)Lcom/itextpdf/awt/geom/Point2D;
    .locals 10
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 497
    if-nez p2, :cond_0

    .line 498
    instance-of v4, p1, Lcom/itextpdf/awt/geom/Point2D$Double;

    if-eqz v4, :cond_1

    .line 499
    new-instance p2, Lcom/itextpdf/awt/geom/Point2D$Double;

    .end local p2
    invoke-direct {p2}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>()V

    .line 505
    .restart local p2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    .line 506
    .local v0, x:D
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    .line 508
    .local v2, y:D
    iget-wide v4, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/itextpdf/awt/geom/Point2D;->setLocation(DD)V

    .line 509
    return-object p2

    .line 501
    .end local v0           #x:D
    .end local v2           #y:D
    :cond_1
    new-instance p2, Lcom/itextpdf/awt/geom/Point2D$Float;

    .end local p2
    invoke-direct {p2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>()V

    .restart local p2
    goto :goto_0
.end method

.method public deltaTransform([DI[DII)V
    .locals 10
    .parameter "src"
    .parameter "srcOff"
    .parameter "dst"
    .parameter "dstOff"
    .parameter "length"

    .prologue
    .line 513
    move v0, p4

    .end local p4
    .local v0, dstOff:I
    move v1, p2

    .end local p2
    .local v1, srcOff:I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    .line 514
    add-int/lit8 p2, v1, 0x1

    .end local v1           #srcOff:I
    .restart local p2
    aget-wide v2, p1, v1

    .line 515
    .local v2, x:D
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #srcOff:I
    aget-wide v4, p1, p2

    .line 516
    .local v4, y:D
    add-int/lit8 p4, v0, 0x1

    .end local v0           #dstOff:I
    .restart local p4
    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, p3, v0

    .line 517
    add-int/lit8 v0, p4, 0x1

    .end local p4
    .restart local v0       #dstOff:I
    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, p3, p4

    goto :goto_0

    .line 519
    .end local v2           #x:D
    .end local v4           #y:D
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 604
    if-ne p1, p0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v1

    .line 607
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 608
    check-cast v0, Lcom/itextpdf/awt/geom/AffineTransform;

    .line 609
    .local v0, t:Lcom/itextpdf/awt/geom/AffineTransform;
    iget-wide v3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #t:Lcom/itextpdf/awt/geom/AffineTransform;
    :cond_3
    move v1, v2

    .line 614
    goto :goto_0
.end method

.method public getDeterminant()D
    .locals 6

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    iget-wide v4, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getMatrix([D)V
    .locals 4
    .parameter "matrix"

    .prologue
    const/4 v3, 0x4

    .line 225
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    aput-wide v1, p1, v0

    .line 226
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    aput-wide v1, p1, v0

    .line 227
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    aput-wide v1, p1, v0

    .line 228
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    aput-wide v1, p1, v0

    .line 229
    array-length v0, p1

    if-le v0, v3, :cond_0

    .line 230
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    aput-wide v0, p1, v3

    .line 231
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    aput-wide v1, p1, v0

    .line 233
    :cond_0
    return-void
.end method

.method public getScaleX()D
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    return-wide v0
.end method

.method public getScaleY()D
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    return-wide v0
.end method

.method public getShearX()D
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    return-wide v0
.end method

.method public getShearY()D
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    return-wide v0
.end method

.method public getTranslateX()D
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    return-wide v0
.end method

.method public getTranslateY()D
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    return-wide v0
.end method

.method public getType()I
    .locals 15

    .prologue
    const-wide/high16 v13, 0x3ff0

    const-wide/16 v11, 0x0

    .line 152
    iget v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 153
    iget v4, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 193
    :cond_0
    :goto_0
    return v4

    .line 156
    :cond_1
    const/4 v4, 0x0

    .line 158
    .local v4, type:I
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_2

    .line 159
    or-int/lit8 v4, v4, 0x20

    .line 160
    goto :goto_0

    .line 163
    :cond_2
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_3

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_9

    .line 164
    :cond_3
    or-int/lit8 v4, v4, 0x1

    .line 171
    :cond_4
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    cmpg-double v5, v5, v11

    if-gez v5, :cond_5

    .line 172
    or-int/lit8 v4, v4, 0x40

    .line 175
    :cond_5
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v7, v9

    add-double v0, v5, v7

    .line 176
    .local v0, dx:D
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v7, v9

    add-double v2, v5, v7

    .line 177
    .local v2, dy:D
    cmpl-double v5, v0, v2

    if-eqz v5, :cond_a

    .line 178
    or-int/lit8 v4, v4, 0x4

    .line 184
    :cond_6
    :goto_1
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_7

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_8

    :cond_7
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_b

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_b

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    cmpg-double v5, v5, v11

    if-ltz v5, :cond_8

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    cmpg-double v5, v5, v11

    if-gez v5, :cond_b

    .line 187
    :cond_8
    or-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 166
    .end local v0           #dx:D
    .end local v2           #dy:D
    :cond_9
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    cmpl-double v5, v5, v13

    if-nez v5, :cond_4

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    cmpl-double v5, v5, v13

    if-nez v5, :cond_4

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_4

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_4

    .line 167
    const/4 v4, 0x0

    .line 168
    goto/16 :goto_0

    .line 180
    .restart local v0       #dx:D
    .restart local v2       #dy:D
    :cond_a
    cmpl-double v5, v0, v13

    if-eqz v5, :cond_6

    .line 181
    or-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 189
    :cond_b
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_c

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_0

    .line 190
    :cond_c
    or-int/lit8 v4, v4, 0x10

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 592
    new-instance v0, Lcom/itextpdf/awt/geom/misc/HashCode;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/misc/HashCode;-><init>()V

    .line 593
    .local v0, hash:Lcom/itextpdf/awt/geom/misc/HashCode;
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 594
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 595
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 596
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 597
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 598
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 599
    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode()I

    move-result v1

    return v1
.end method

.method public inverseTransform(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)Lcom/itextpdf/awt/geom/Point2D;
    .locals 12
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/awt/geom/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    .line 523
    .local v0, det:D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 525
    new-instance v6, Lcom/itextpdf/awt/geom/NoninvertibleTransformException;

    const-string v7, "awt.204"

    invoke-static {v7}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itextpdf/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 528
    :cond_0
    if-nez p2, :cond_1

    .line 529
    instance-of v6, p1, Lcom/itextpdf/awt/geom/Point2D$Double;

    if-eqz v6, :cond_2

    .line 530
    new-instance p2, Lcom/itextpdf/awt/geom/Point2D$Double;

    .end local p2
    invoke-direct {p2}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>()V

    .line 536
    .restart local p2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    sub-double v2, v6, v8

    .line 537
    .local v2, x:D
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    sub-double v4, v6, v8

    .line 539
    .local v4, y:D
    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    div-double/2addr v6, v0

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v10, v2

    sub-double/2addr v8, v10

    div-double/2addr v8, v0

    invoke-virtual {p2, v6, v7, v8, v9}, Lcom/itextpdf/awt/geom/Point2D;->setLocation(DD)V

    .line 540
    return-object p2

    .line 532
    .end local v2           #x:D
    .end local v4           #y:D
    :cond_2
    new-instance p2, Lcom/itextpdf/awt/geom/Point2D$Float;

    .end local p2
    invoke-direct {p2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>()V

    .restart local p2
    goto :goto_0
.end method

.method public inverseTransform([DI[DII)V
    .locals 12
    .parameter "src"
    .parameter "srcOff"
    .parameter "dst"
    .parameter "dstOff"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/awt/geom/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    .line 547
    .local v0, det:D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 549
    new-instance v8, Lcom/itextpdf/awt/geom/NoninvertibleTransformException;

    const-string v9, "awt.204"

    invoke-static {v9}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 552
    .end local p2
    .end local p4
    .local v2, dstOff:I
    .local v3, srcOff:I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    .line 553
    add-int/lit8 p2, v3, 0x1

    .end local v3           #srcOff:I
    .restart local p2
    aget-wide v8, p1, v3

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    sub-double v4, v8, v10

    .line 554
    .local v4, x:D
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #srcOff:I
    aget-wide v8, p1, p2

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    sub-double v6, v8, v10

    .line 555
    .local v6, y:D
    add-int/lit8 p4, v2, 0x1

    .end local v2           #dstOff:I
    .restart local p4
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    div-double/2addr v8, v0

    aput-wide v8, p3, v2

    .line 556
    add-int/lit8 v2, p4, 0x1

    .end local p4
    .restart local v2       #dstOff:I
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    div-double/2addr v8, v0

    aput-wide v8, p3, p4

    goto :goto_0

    .line 558
    .end local v4           #x:D
    .end local v6           #y:D
    :cond_0
    return-void

    .end local v2           #dstOff:I
    .end local v3           #srcOff:I
    .restart local p2
    .restart local p4
    :cond_1
    move/from16 v2, p4

    .end local p4
    .restart local v2       #dstOff:I
    move v3, p2

    .end local p2
    .restart local v3       #srcOff:I
    goto :goto_0
.end method

.method public isIdentity()Z
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/AffineTransform;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method multiply(Lcom/itextpdf/awt/geom/AffineTransform;Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/AffineTransform;
    .locals 19
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 377
    new-instance v2, Lcom/itextpdf/awt/geom/AffineTransform;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v3, v5

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v5, v7

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v7, v9

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v9, v11

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v11, v13

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    move-object/from16 v0, p2

    iget-wide v15, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    add-double/2addr v11, v13

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    move-object/from16 v0, p2

    iget-wide v15, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v13, v15

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    move-object/from16 v0, p2

    iget-wide v15, v0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    add-double/2addr v13, v15

    invoke-direct/range {v2 .. v14}, Lcom/itextpdf/awt/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v2
.end method

.method public preConcatenate(Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 391
    invoke-virtual {p0, p0, p1}, Lcom/itextpdf/awt/geom/AffineTransform;->multiply(Lcom/itextpdf/awt/geom/AffineTransform;Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/AffineTransform;->setTransform(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 392
    return-void
.end method

.method public rotate(D)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 363
    invoke-static {p1, p2}, Lcom/itextpdf/awt/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/AffineTransform;->concatenate(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 364
    return-void
.end method

.method public rotate(DDD)V
    .locals 1
    .parameter "angle"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 367
    invoke-static/range {p1 .. p6}, Lcom/itextpdf/awt/geom/AffineTransform;->getRotateInstance(DDD)Lcom/itextpdf/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/AffineTransform;->concatenate(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 368
    return-void
.end method

.method public scale(DD)V
    .locals 1
    .parameter "scx"
    .parameter "scy"

    .prologue
    .line 355
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/AffineTransform;->concatenate(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 356
    return-void
.end method

.method public setToIdentity()V
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 256
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 258
    return-void
.end method

.method public setToRotation(D)V
    .locals 8
    .parameter "angle"

    .prologue
    .line 296
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 297
    .local v2, sin:D
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 298
    .local v0, cos:D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 299
    const-wide/16 v0, 0x0

    .line 300
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    const-wide/high16 v2, 0x3ff0

    .line 306
    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 307
    neg-double v4, v2

    iput-wide v4, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    .line 308
    iput-wide v2, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 309
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    iput-wide v4, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 310
    const/4 v4, -0x1

    iput v4, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 311
    return-void

    .line 300
    :cond_1
    const-wide/high16 v2, -0x4010

    goto :goto_0

    .line 302
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 303
    const-wide/16 v2, 0x0

    .line 304
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3

    const-wide/high16 v0, 0x3ff0

    :goto_1
    goto :goto_0

    :cond_3
    const-wide/high16 v0, -0x4010

    goto :goto_1
.end method

.method public setToRotation(DDD)V
    .locals 6
    .parameter "angle"
    .parameter "px"
    .parameter "py"

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/awt/geom/AffineTransform;->setToRotation(D)V

    .line 315
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    sub-double v0, v4, v0

    mul-double/2addr v0, p3

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v2, p5

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 316
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    sub-double v0, v4, v0

    mul-double/2addr v0, p5

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v2, p3

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 318
    return-void
.end method

.method public setToScale(DD)V
    .locals 4
    .parameter "scx"
    .parameter "scy"

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 273
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 274
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 276
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    goto :goto_0
.end method

.method public setToShear(DD)V
    .locals 4
    .parameter "shx"
    .parameter "shy"

    .prologue
    const-wide/16 v2, 0x0

    .line 284
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 285
    iput-wide v2, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    iput-wide v2, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 286
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    .line 287
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 288
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    goto :goto_0
.end method

.method public setToTranslation(DD)V
    .locals 4
    .parameter "mx"
    .parameter "my"

    .prologue
    const-wide/16 v2, 0x0

    .line 261
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 262
    iput-wide v2, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    iput-wide v2, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    .line 263
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 264
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    .line 265
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    cmpl-double v0, p3, v2

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    goto :goto_0
.end method

.method public setTransform(DDDDDD)V
    .locals 1
    .parameter "m00"
    .parameter "m10"
    .parameter "m01"
    .parameter "m11"
    .parameter "m02"
    .parameter "m12"

    .prologue
    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 241
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    .line 242
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    .line 243
    iput-wide p5, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    .line 244
    iput-wide p7, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    .line 245
    iput-wide p9, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    .line 246
    iput-wide p11, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    .line 247
    return-void
.end method

.method public setTransform(Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 13
    .parameter "t"

    .prologue
    .line 250
    iget v0, p1, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    iput v0, p0, Lcom/itextpdf/awt/geom/AffineTransform;->type:I

    .line 251
    iget-wide v1, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    iget-wide v3, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    iget-wide v5, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    iget-wide v7, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    iget-wide v9, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    iget-wide v11, p1, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    .line 252
    return-void
.end method

.method public shear(DD)V
    .locals 1
    .parameter "shx"
    .parameter "shy"

    .prologue
    .line 359
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/AffineTransform;->getShearInstance(DD)Lcom/itextpdf/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/AffineTransform;->concatenate(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 360
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)Lcom/itextpdf/awt/geom/Point2D;
    .locals 10
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 411
    if-nez p2, :cond_0

    .line 412
    instance-of v4, p1, Lcom/itextpdf/awt/geom/Point2D$Double;

    if-eqz v4, :cond_1

    .line 413
    new-instance p2, Lcom/itextpdf/awt/geom/Point2D$Double;

    .end local p2
    invoke-direct {p2}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>()V

    .line 419
    .restart local p2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    .line 420
    .local v0, x:D
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    .line 422
    .local v2, y:D
    iget-wide v4, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    add-double/2addr v6, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/itextpdf/awt/geom/Point2D;->setLocation(DD)V

    .line 423
    return-object p2

    .line 415
    .end local v0           #x:D
    .end local v2           #y:D
    :cond_1
    new-instance p2, Lcom/itextpdf/awt/geom/Point2D$Float;

    .end local p2
    invoke-direct {p2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>()V

    .restart local p2
    goto :goto_0
.end method

.method public transform([DI[DII)V
    .locals 10
    .parameter "src"
    .parameter "srcOff"
    .parameter "dst"
    .parameter "dstOff"
    .parameter "length"

    .prologue
    .line 445
    const/4 v0, 0x2

    .line 446
    .local v0, step:I
    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p2

    if-ge p4, v5, :cond_0

    .line 447
    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p2

    add-int/lit8 p2, v5, -0x2

    .line 448
    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p4

    add-int/lit8 p4, v5, -0x2

    .line 449
    const/4 v0, -0x2

    .line 451
    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    .line 452
    add-int/lit8 v5, p2, 0x0

    aget-wide v1, p1, v5

    .line 453
    .local v1, x:D
    add-int/lit8 v5, p2, 0x1

    aget-wide v3, p1, v5

    .line 454
    .local v3, y:D
    add-int/lit8 v5, p4, 0x0

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v6, v1

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    add-double/2addr v6, v8

    aput-wide v6, p3, v5

    .line 455
    add-int/lit8 v5, p4, 0x1

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v1

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    add-double/2addr v6, v8

    aput-wide v6, p3, v5

    .line 456
    add-int/2addr p2, v0

    .line 457
    add-int/2addr p4, v0

    .line 458
    goto :goto_0

    .line 459
    .end local v1           #x:D
    .end local v3           #y:D
    :cond_1
    return-void
.end method

.method public transform([DI[FII)V
    .locals 10
    .parameter "src"
    .parameter "srcOff"
    .parameter "dst"
    .parameter "dstOff"
    .parameter "length"

    .prologue
    .line 488
    move v0, p4

    .end local p4
    .local v0, dstOff:I
    move v1, p2

    .end local p2
    .local v1, srcOff:I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    .line 489
    add-int/lit8 p2, v1, 0x1

    .end local v1           #srcOff:I
    .restart local p2
    aget-wide v2, p1, v1

    .line 490
    .local v2, x:D
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #srcOff:I
    aget-wide v4, p1, p2

    .line 491
    .local v4, y:D
    add-int/lit8 p4, v0, 0x1

    .end local v0           #dstOff:I
    .restart local p4
    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p3, v0

    .line 492
    add-int/lit8 v0, p4, 0x1

    .end local p4
    .restart local v0       #dstOff:I
    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p3, p4

    goto :goto_0

    .line 494
    .end local v2           #x:D
    .end local v4           #y:D
    :cond_0
    return-void
.end method

.method public transform([FI[DII)V
    .locals 10
    .parameter "src"
    .parameter "srcOff"
    .parameter "dst"
    .parameter "dstOff"
    .parameter "length"

    .prologue
    .line 479
    move v0, p4

    .end local p4
    .local v0, dstOff:I
    move v1, p2

    .end local p2
    .local v1, srcOff:I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    .line 480
    add-int/lit8 p2, v1, 0x1

    .end local v1           #srcOff:I
    .restart local p2
    aget v2, p1, v1

    .line 481
    .local v2, x:F
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #srcOff:I
    aget v3, p1, p2

    .line 482
    .local v3, y:F
    add-int/lit8 p4, v0, 0x1

    .end local v0           #dstOff:I
    .restart local p4
    float-to-double v4, v2

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v6

    float-to-double v6, v3

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    aput-wide v4, p3, v0

    .line 483
    add-int/lit8 v0, p4, 0x1

    .end local p4
    .restart local v0       #dstOff:I
    float-to-double v4, v2

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v4, v6

    float-to-double v6, v3

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    add-double/2addr v4, v6

    aput-wide v4, p3, p4

    goto :goto_0

    .line 485
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    return-void
.end method

.method public transform([FI[FII)V
    .locals 10
    .parameter "src"
    .parameter "srcOff"
    .parameter "dst"
    .parameter "dstOff"
    .parameter "length"

    .prologue
    .line 462
    const/4 v0, 0x2

    .line 463
    .local v0, step:I
    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v3, p5, 0x2

    add-int/2addr v3, p2

    if-ge p4, v3, :cond_0

    .line 464
    mul-int/lit8 v3, p5, 0x2

    add-int/2addr v3, p2

    add-int/lit8 p2, v3, -0x2

    .line 465
    mul-int/lit8 v3, p5, 0x2

    add-int/2addr v3, p4

    add-int/lit8 p4, v3, -0x2

    .line 466
    const/4 v0, -0x2

    .line 468
    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    .line 469
    add-int/lit8 v3, p2, 0x0

    aget v1, p1, v3

    .line 470
    .local v1, x:F
    add-int/lit8 v3, p2, 0x1

    aget v2, p1, v3

    .line 471
    .local v2, y:F
    add-int/lit8 v3, p4, 0x0

    float-to-double v4, v1

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v6

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p3, v3

    .line 472
    add-int/lit8 v3, p4, 0x1

    float-to-double v4, v1

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v4, v6

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p3, v3

    .line 473
    add-int/2addr p2, v0

    .line 474
    add-int/2addr p4, v0

    .line 475
    goto :goto_0

    .line 476
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_1
    return-void
.end method

.method public transform([Lcom/itextpdf/awt/geom/Point2D;I[Lcom/itextpdf/awt/geom/Point2D;II)V
    .locals 14
    .parameter "src"
    .parameter "srcOff"
    .parameter "dst"
    .parameter "dstOff"
    .parameter "length"

    .prologue
    .line 427
    move/from16 v0, p4

    .end local p4
    .local v0, dstOff:I
    move/from16 v2, p2

    .end local p2
    .local v2, srcOff:I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_2

    .line 428
    add-int/lit8 p2, v2, 0x1

    .end local v2           #srcOff:I
    .restart local p2
    aget-object v3, p1, v2

    .line 429
    .local v3, srcPoint:Lcom/itextpdf/awt/geom/Point2D;
    invoke-virtual {v3}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v4

    .line 430
    .local v4, x:D
    invoke-virtual {v3}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v6

    .line 431
    .local v6, y:D
    aget-object v1, p3, v0

    .line 432
    .local v1, dstPoint:Lcom/itextpdf/awt/geom/Point2D;
    if-nez v1, :cond_0

    .line 433
    instance-of v8, v3, Lcom/itextpdf/awt/geom/Point2D$Double;

    if-eqz v8, :cond_1

    .line 434
    new-instance v1, Lcom/itextpdf/awt/geom/Point2D$Double;

    .end local v1           #dstPoint:Lcom/itextpdf/awt/geom/Point2D;
    invoke-direct {v1}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>()V

    .line 439
    .restart local v1       #dstPoint:Lcom/itextpdf/awt/geom/Point2D;
    :cond_0
    :goto_1
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m02:D

    add-double/2addr v8, v10

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v10, v4

    iget-wide v12, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    iget-wide v12, p0, Lcom/itextpdf/awt/geom/AffineTransform;->m12:D

    add-double/2addr v10, v12

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/itextpdf/awt/geom/Point2D;->setLocation(DD)V

    .line 440
    add-int/lit8 p4, v0, 0x1

    .end local v0           #dstOff:I
    .restart local p4
    aput-object v1, p3, v0

    move/from16 v0, p4

    .end local p4
    .restart local v0       #dstOff:I
    move/from16 v2, p2

    .line 441
    .end local p2
    .restart local v2       #srcOff:I
    goto :goto_0

    .line 436
    .end local v2           #srcOff:I
    .restart local p2
    :cond_1
    new-instance v1, Lcom/itextpdf/awt/geom/Point2D$Float;

    .end local v1           #dstPoint:Lcom/itextpdf/awt/geom/Point2D;
    invoke-direct {v1}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>()V

    .restart local v1       #dstPoint:Lcom/itextpdf/awt/geom/Point2D;
    goto :goto_1

    .line 442
    .end local v1           #dstPoint:Lcom/itextpdf/awt/geom/Point2D;
    .end local v3           #srcPoint:Lcom/itextpdf/awt/geom/Point2D;
    .end local v4           #x:D
    .end local v6           #y:D
    .end local p2
    .restart local v2       #srcOff:I
    :cond_2
    return-void
.end method

.method public translate(DD)V
    .locals 1
    .parameter "mx"
    .parameter "my"

    .prologue
    .line 351
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/AffineTransform;->concatenate(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 352
    return-void
.end method
