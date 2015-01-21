.class public Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;
.super Ljava/lang/Object;
.source "Crossing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/gl/Crossing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuadCurve"
.end annotation


# instance fields
.field Ax:D

.field Ay:D

.field Bx:D

.field By:D

.field ax:D

.field ay:D

.field bx:D

.field by:D


# direct methods
.method public constructor <init>(DDDDDD)V
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "cx"
    .parameter "cy"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    sub-double v0, p9, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ax:D

    .line 166
    sub-double v0, p11, p3

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ay:D

    .line 167
    sub-double v0, p5, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    .line 168
    sub-double v0, p7, p3

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->by:D

    .line 170
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Bx:D

    .line 171
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ax:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Bx:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ax:D

    .line 173
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->by:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->by:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->By:D

    .line 174
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ay:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->By:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ay:D

    .line 175
    return-void
.end method


# virtual methods
.method addBound([DI[DIDDZI)I
    .locals 11
    .parameter "bound"
    .parameter "bc"
    .parameter "res"
    .parameter "rc"
    .parameter "minX"
    .parameter "maxX"
    .parameter "changeId"
    .parameter "id"

    .prologue
    .line 234
    const/4 v2, 0x0

    .local v2, i:I
    move v1, p2

    .end local p2
    .local v1, bc:I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 235
    aget-wide v5, p3, v2

    .line 236
    .local v5, t:D
    const-wide v7, -0x411b074a771c970fL

    cmpl-double v7, v5, v7

    if-lez v7, :cond_1

    const-wide v7, 0x3ff0000a7c5ac472L

    cmpg-double v7, v5, v7

    if-gez v7, :cond_1

    .line 237
    iget-wide v7, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ax:D

    mul-double/2addr v7, v5

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Bx:D

    add-double/2addr v7, v9

    mul-double v3, v5, v7

    .line 238
    .local v3, rx:D
    cmpg-double v7, p5, v3

    if-gtz v7, :cond_1

    cmpg-double v7, v3, p7

    if-gtz v7, :cond_1

    .line 239
    add-int/lit8 p2, v1, 0x1

    .end local v1           #bc:I
    .restart local p2
    aput-wide v5, p1, v1

    .line 240
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #bc:I
    aput-wide v3, p1, p2

    .line 241
    add-int/lit8 p2, v1, 0x1

    .end local v1           #bc:I
    .restart local p2
    iget-wide v7, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ay:D

    mul-double/2addr v7, v5

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->By:D

    add-double/2addr v7, v9

    mul-double/2addr v7, v5

    aput-wide v7, p1, v1

    .line 242
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #bc:I
    move/from16 v0, p10

    int-to-double v7, v0

    aput-wide v7, p1, p2

    .line 243
    if-eqz p9, :cond_1

    .line 244
    add-int/lit8 p10, p10, 0x1

    move p2, v1

    .line 234
    .end local v1           #bc:I
    .end local v3           #rx:D
    .restart local p2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #bc:I
    goto :goto_0

    .line 249
    .end local v5           #t:D
    :cond_0
    return v1

    .restart local v5       #t:D
    :cond_1
    move p2, v1

    .end local v1           #bc:I
    .restart local p2
    goto :goto_1
.end method

.method cross([DIDD)I
    .locals 12
    .parameter "res"
    .parameter "rc"
    .parameter "py1"
    .parameter "py2"

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, cross:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_8

    .line 181
    aget-wide v6, p1, v1

    .line 184
    .local v6, t:D
    const-wide v8, -0x411b074a771c970fL

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_0

    const-wide v8, 0x3ff0000a7c5ac472L

    cmpl-double v8, v6, v8

    if-lez v8, :cond_1

    .line 180
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const-wide v8, 0x3ee4f8b588e368f1L

    cmpg-double v8, v6, v8

    if-gez v8, :cond_3

    .line 189
    const-wide/16 v8, 0x0

    cmpg-double v8, p3, v8

    if-gez v8, :cond_0

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_2

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    :goto_2
    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 190
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 189
    :cond_2
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ax:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    sub-double/2addr v8, v10

    goto :goto_2

    .line 195
    :cond_3
    const-wide v8, 0x3fefffeb074a771dL

    cmpl-double v8, v6, v8

    if-lez v8, :cond_5

    .line 196
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ay:D

    cmpg-double v8, p3, v8

    if-gez v8, :cond_0

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ax:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_4

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ax:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    sub-double/2addr v8, v10

    :goto_3
    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_4
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    goto :goto_3

    .line 202
    :cond_5
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ay:D

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->By:D

    add-double/2addr v8, v10

    mul-double v4, v6, v8

    .line 204
    .local v4, ry:D
    cmpl-double v8, v4, p5

    if-lez v8, :cond_0

    .line 205
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ax:D

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->bx:D

    add-double v2, v8, v10

    .line 207
    .local v2, rxt:D
    const-wide v8, -0x411b074a771c970fL

    cmpl-double v8, v2, v8

    if-lez v8, :cond_6

    const-wide v8, 0x3ee4f8b588e368f1L

    cmpg-double v8, v2, v8

    if-ltz v8, :cond_0

    .line 210
    :cond_6
    const-wide/16 v8, 0x0

    cmpl-double v8, v2, v8

    if-lez v8, :cond_7

    const/4 v8, 0x1

    :goto_4
    add-int/2addr v0, v8

    goto :goto_1

    :cond_7
    const/4 v8, -0x1

    goto :goto_4

    .line 214
    .end local v2           #rxt:D
    .end local v4           #ry:D
    .end local v6           #t:D
    :cond_8
    return v0
.end method

.method solveExtrem([D)I
    .locals 10
    .parameter "res"

    .prologue
    const-wide/16 v8, 0x0

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, rc:I
    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ax:D

    cmpl-double v2, v2, v8

    if-eqz v2, :cond_0

    .line 225
    add-int/lit8 v1, v0, 0x1

    .end local v0           #rc:I
    .local v1, rc:I
    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Bx:D

    neg-double v2, v2

    iget-wide v4, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ax:D

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ax:D

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    aput-wide v2, p1, v0

    move v0, v1

    .line 227
    .end local v1           #rc:I
    .restart local v0       #rc:I
    :cond_0
    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ay:D

    cmpl-double v2, v2, v8

    if-eqz v2, :cond_1

    .line 228
    add-int/lit8 v1, v0, 0x1

    .end local v0           #rc:I
    .restart local v1       #rc:I
    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->By:D

    neg-double v2, v2

    iget-wide v4, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ay:D

    iget-wide v6, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ay:D

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    aput-wide v2, p1, v0

    move v0, v1

    .line 230
    .end local v1           #rc:I
    .restart local v0       #rc:I
    :cond_1
    return v0
.end method

.method solvePoint([DD)I
    .locals 4
    .parameter "res"
    .parameter "px"

    .prologue
    .line 218
    const/4 v1, 0x3

    new-array v0, v1, [D

    const/4 v1, 0x0

    neg-double v2, p2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Bx:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->Ax:D

    aput-wide v2, v0, v1

    .line 219
    .local v0, eqn:[D
    invoke-static {v0, p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->solveQuad([D[D)I

    move-result v1

    return v1
.end method
