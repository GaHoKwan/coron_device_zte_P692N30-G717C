.class public Lcom/mediatek/ngin3d/Rotation;
.super Ljava/lang/Object;
.source "Rotation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# static fields
.field private static final DOT_THRESHOLD:F = 0.9995f

.field public static final MODE_AXIS_ANGLE:I = 0x2

.field public static final MODE_QUATERNION:I = 0x0

.field public static final MODE_XYZ_EULER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Rotation"

.field private static final ZERO_THRESHOLD:F = 1.0E-4f


# instance fields
.field private mAngle:F

.field private mAxis:Lcom/mediatek/ngin3d/Vec3;

.field private mEulerAngles:[F

.field private mMode:I

.field private final mQuaternion:Lcom/mediatek/ngin3d/Quaternion;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 102
    const/high16 v1, 0x3f80

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ngin3d/Rotation;-><init>(FFFFZ)V

    .line 103
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 216
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XYZ:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mediatek/ngin3d/Rotation;-><init>(Lcom/mediatek/ngin3d/EulerOrder;FFF)V

    .line 217
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "angle"

    .prologue
    .line 181
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    invoke-direct {p0, v0, p4}, Lcom/mediatek/ngin3d/Rotation;-><init>(Lcom/mediatek/ngin3d/Vec3;F)V

    .line 182
    return-void
.end method

.method public constructor <init>(FFFFZ)V
    .locals 1
    .parameter "q0"
    .parameter "q1"
    .parameter "q2"
    .parameter "q3"
    .parameter "normalize"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/ngin3d/Quaternion;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    .line 117
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/ngin3d/Rotation;->setByQuaternion(FFFFZ)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/EulerOrder;FFF)V
    .locals 1
    .parameter "order"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/ngin3d/Quaternion;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Rotation;->setByEuler(Lcom/mediatek/ngin3d/EulerOrder;FFF)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/Vec3;F)V
    .locals 1
    .parameter "axis"
    .parameter "angle"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/ngin3d/Quaternion;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ngin3d/Rotation;->setByAxisAngle(Lcom/mediatek/ngin3d/Vec3;F)V

    .line 152
    return-void
.end method

.method public static final fromTo(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Rotation;
    .locals 12
    .parameter "startingDirection"
    .parameter "finishingDirection"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Vec3;->getNormalized()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v3

    .line 290
    .local v3, from:Lcom/mediatek/ngin3d/Vec3;
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Vec3;->getNormalized()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v8

    .line 292
    .local v8, to:Lcom/mediatek/ngin3d/Vec3;
    invoke-virtual {v3, v8}, Lcom/mediatek/ngin3d/Vec3;->add(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v4

    .line 293
    .local v4, half:Lcom/mediatek/ngin3d/Vec3;
    invoke-virtual {v4}, Lcom/mediatek/ngin3d/Vec3;->getLength()F

    move-result v5

    .line 297
    .local v5, halfLength:F
    new-instance v7, Lcom/mediatek/ngin3d/Rotation;

    invoke-direct {v7}, Lcom/mediatek/ngin3d/Rotation;-><init>()V

    .line 298
    .local v7, rotation:Lcom/mediatek/ngin3d/Rotation;
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v6

    .line 299
    .local v6, quaternion:Lcom/mediatek/ngin3d/Quaternion;
    const v9, 0x38d1b717

    cmpg-float v9, v5, v9

    if-gez v9, :cond_0

    .line 300
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Vec3;->getOrthogonal()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v0

    .line 301
    .local v0, axis:Lcom/mediatek/ngin3d/Vec3;
    const/high16 v9, 0x4334

    invoke-virtual {v6, v0, v9}, Lcom/mediatek/ngin3d/Quaternion;->set(Lcom/mediatek/ngin3d/Vec3;F)Lcom/mediatek/ngin3d/Quaternion;

    .line 310
    .end local v0           #axis:Lcom/mediatek/ngin3d/Vec3;
    :goto_0
    return-object v7

    .line 303
    :cond_0
    invoke-virtual {v4}, Lcom/mediatek/ngin3d/Vec3;->getNormalized()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v4

    .line 304
    invoke-static {v3, v4}, Lcom/mediatek/ngin3d/Vec3;->dotProduct(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)F

    move-result v2

    .line 305
    .local v2, dot:F
    invoke-static {v3, v4}, Lcom/mediatek/ngin3d/Vec3;->crossProduct(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v1

    .line 306
    .local v1, cross:Lcom/mediatek/ngin3d/Vec3;
    iget v9, v1, Lcom/mediatek/ngin3d/Point;->x:F

    iget v10, v1, Lcom/mediatek/ngin3d/Point;->y:F

    iget v11, v1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-virtual {v6, v2, v9, v10, v11}, Lcom/mediatek/ngin3d/Quaternion;->set(FFFF)Lcom/mediatek/ngin3d/Quaternion;

    .line 307
    invoke-virtual {v6}, Lcom/mediatek/ngin3d/Quaternion;->nor()Lcom/mediatek/ngin3d/Quaternion;

    goto :goto_0
.end method

.method public static newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Rotation;
    .locals 5
    .parameter "positionString"

    .prologue
    .line 535
    invoke-static {p0}, Lcom/mediatek/ngin3d/Utils;->parseStringToFloat(Ljava/lang/String;)[F

    move-result-object v0

    .line 536
    .local v0, xyz:[F
    new-instance v1, Lcom/mediatek/ngin3d/Rotation;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/ngin3d/Rotation;-><init>(FFF)V

    return-object v1
.end method

.method public static final pointAt(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Rotation;
    .locals 5
    .parameter "s"
    .parameter "f"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    new-instance v1, Lcom/mediatek/ngin3d/Vec3;

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget v4, p1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/Rotation;->fromTo(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public static final pointAt(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Rotation;
    .locals 10
    .parameter "startingDirection"
    .parameter "finishingDirection"
    .parameter "startingUp"
    .parameter "finishingUp"

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Vec3;->getNormalized()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v5

    .line 335
    .local v5, to:Lcom/mediatek/ngin3d/Vec3;
    invoke-virtual {p2}, Lcom/mediatek/ngin3d/Vec3;->getNormalized()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v8

    .line 336
    .local v8, upStart:Lcom/mediatek/ngin3d/Vec3;
    invoke-virtual {p3}, Lcom/mediatek/ngin3d/Vec3;->getNormalized()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v6

    .line 339
    .local v6, up:Lcom/mediatek/ngin3d/Vec3;
    invoke-static {p0, p1}, Lcom/mediatek/ngin3d/Rotation;->fromTo(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Rotation;

    move-result-object v4

    .line 340
    .local v4, rotation:Lcom/mediatek/ngin3d/Rotation;
    invoke-virtual {v4}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v0

    .line 346
    .local v0, quaternion:Lcom/mediatek/ngin3d/Quaternion;
    invoke-virtual {v0, v8}, Lcom/mediatek/ngin3d/Quaternion;->applyTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v2

    .line 353
    .local v2, rolledUp:Lcom/mediatek/ngin3d/Vec3;
    invoke-static {v5, v2}, Lcom/mediatek/ngin3d/Vec3;->dotProduct(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)F

    move-result v9

    invoke-virtual {v2, v9, v5}, Lcom/mediatek/ngin3d/Vec3;->subtract(FLcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v3

    .line 355
    .local v3, rolledUpProjected:Lcom/mediatek/ngin3d/Vec3;
    invoke-static {v5, v6}, Lcom/mediatek/ngin3d/Vec3;->dotProduct(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)F

    move-result v9

    invoke-virtual {v6, v9, v5}, Lcom/mediatek/ngin3d/Vec3;->subtract(FLcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v7

    .line 361
    .local v7, upProjected:Lcom/mediatek/ngin3d/Vec3;
    invoke-static {v3, v7}, Lcom/mediatek/ngin3d/Rotation;->pointAt(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Rotation;

    move-result-object v1

    .line 364
    .local v1, rollRotation:Lcom/mediatek/ngin3d/Rotation;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mediatek/ngin3d/Quaternion;->multiply(Lcom/mediatek/ngin3d/Quaternion;)Lcom/mediatek/ngin3d/Quaternion;

    .line 366
    return-object v4
.end method

.method private setByAxisAngle(Lcom/mediatek/ngin3d/Vec3;F)V
    .locals 1
    .parameter "axis"
    .parameter "angle"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ngin3d/Quaternion;->set(Lcom/mediatek/ngin3d/Vec3;F)Lcom/mediatek/ngin3d/Quaternion;

    .line 167
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    .line 168
    iput p2, p0, Lcom/mediatek/ngin3d/Rotation;->mAngle:F

    .line 169
    iput-object p1, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    .line 170
    return-void
.end method

.method private setByEuler(Lcom/mediatek/ngin3d/EulerOrder;FFF)V
    .locals 3
    .parameter "order"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v2, 0x1

    .line 232
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XYZ:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/EulerOrder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Quaternion;->setEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;FFF)Lcom/mediatek/ngin3d/Quaternion;

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 249
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aput p3, v0, v2

    .line 250
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 252
    iput v2, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    .line 253
    return-void

    .line 234
    :cond_0
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XZY:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/EulerOrder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/mediatek/ngin3d/Quaternion;->setEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;FFF)Lcom/mediatek/ngin3d/Quaternion;

    goto :goto_0

    .line 236
    :cond_1
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->ZYX:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/EulerOrder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1, p4, p3, p2}, Lcom/mediatek/ngin3d/Quaternion;->setEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;FFF)Lcom/mediatek/ngin3d/Quaternion;

    goto :goto_0

    .line 238
    :cond_2
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->ZXY:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/EulerOrder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/mediatek/ngin3d/Quaternion;->setEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;FFF)Lcom/mediatek/ngin3d/Quaternion;

    goto :goto_0

    .line 240
    :cond_3
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->YZX:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/EulerOrder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/mediatek/ngin3d/Quaternion;->setEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;FFF)Lcom/mediatek/ngin3d/Quaternion;

    goto :goto_0

    .line 242
    :cond_4
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->YXZ:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/EulerOrder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/mediatek/ngin3d/Quaternion;->setEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;FFF)Lcom/mediatek/ngin3d/Quaternion;

    goto :goto_0

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Quaternion;->setEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;FFF)Lcom/mediatek/ngin3d/Quaternion;

    goto :goto_0
.end method

.method private setByQuaternion(FFFFZ)V
    .locals 1
    .parameter "q0"
    .parameter "q1"
    .parameter "q2"
    .parameter "q3"
    .parameter "normalize"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Quaternion;->set(FFFF)Lcom/mediatek/ngin3d/Quaternion;

    .line 137
    if-eqz p5, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->nor()Lcom/mediatek/ngin3d/Quaternion;

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    .line 141
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 448
    if-ne p0, p1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v4

    .line 449
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    move-object v3, p1

    .line 451
    check-cast v3, Lcom/mediatek/ngin3d/Rotation;

    .line 453
    .local v3, rotation:Lcom/mediatek/ngin3d/Rotation;
    iget v6, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Rotation;->getMode()I

    move-result v7

    if-eq v6, v7, :cond_4

    move v4, v5

    goto :goto_0

    .line 455
    :cond_4
    iget v6, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    if-ne v6, v4, :cond_7

    .line 456
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Rotation;->getEulerAngles()[F

    move-result-object v2

    .line 457
    .local v2, euler:[F
    iget-object v6, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v6, v6, v5

    aget v7, v2, v5

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    goto :goto_0

    .line 458
    :cond_5
    iget-object v6, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v6, v6, v4

    aget v7, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_6

    move v4, v5

    goto :goto_0

    .line 459
    :cond_6
    iget-object v6, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v6, v6, v8

    aget v7, v2, v8

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 460
    .end local v2           #euler:[F
    :cond_7
    iget v4, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    if-ne v4, v8, :cond_9

    .line 461
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Rotation;->getAxisAngle()F

    move-result v0

    .line 462
    .local v0, angle:F
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Rotation;->getAxis()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v1

    .line 463
    .local v1, axis:Lcom/mediatek/ngin3d/Vec3;
    iget v4, p0, Lcom/mediatek/ngin3d/Rotation;->mAngle:F

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    goto :goto_0

    .line 465
    :cond_8
    iget-object v4, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {v4, v1}, Lcom/mediatek/ngin3d/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 467
    .end local v0           #angle:F
    .end local v1           #axis:Lcom/mediatek/ngin3d/Vec3;
    :cond_9
    iget-object v4, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ngin3d/Quaternion;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public getAxis()Lcom/mediatek/ngin3d/Vec3;
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    .line 379
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getAxis()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v0

    goto :goto_0
.end method

.method public getAxisAngle()F
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 391
    iget v0, p0, Lcom/mediatek/ngin3d/Rotation;->mAngle:F

    .line 393
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getAxisAngle()F

    move-result v0

    goto :goto_0
.end method

.method public getEulerAngles()[F
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XYZ:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Rotation;->getEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;)[F

    move-result-object v0

    return-object v0
.end method

.method public getEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;)[F
    .locals 2
    .parameter "order"

    .prologue
    .line 404
    iget v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    .line 407
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/Quaternion;->getEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;)[F

    move-result-object v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    return v0
.end method

.method public getQuaternion()Lcom/mediatek/ngin3d/Quaternion;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 482
    iget v2, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    if-ne v2, v5, :cond_3

    .line 483
    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    .line 484
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v2, v2, v5

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int v0, v3, v2

    .line 485
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v3, v3, v6

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v2, v1

    .line 494
    .end local v0           #result:I
    :goto_3
    return v0

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    .line 484
    .restart local v0       #result:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    .line 485
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2

    .line 487
    .end local v0           #result:I
    :cond_3
    iget v2, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    if-ne v2, v6, :cond_8

    .line 488
    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->x:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    move v0, v1

    .line 489
    .restart local v0       #result:I
    :goto_4
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->y:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    move v2, v1

    :goto_5
    add-int v0, v3, v2

    .line 490
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->z:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_6

    move v2, v1

    :goto_6
    add-int v0, v3, v2

    .line 491
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/mediatek/ngin3d/Rotation;->mAngle:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    :goto_7
    add-int v0, v2, v1

    .line 492
    goto :goto_3

    .line 488
    .end local v0           #result:I
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_4

    .line 489
    .restart local v0       #result:I
    :cond_5
    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_5

    .line 490
    :cond_6
    iget-object v2, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_6

    .line 491
    :cond_7
    iget v1, p0, Lcom/mediatek/ngin3d/Rotation;->mAngle:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_7

    .line 494
    .end local v0           #result:I
    :cond_8
    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v1, 0x1f

    goto :goto_3
.end method

.method public set(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 263
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XYZ:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mediatek/ngin3d/Rotation;->set(Lcom/mediatek/ngin3d/EulerOrder;FFF)V

    .line 264
    return-void
.end method

.method public set(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "angle"

    .prologue
    .line 193
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ngin3d/Rotation;->set(Lcom/mediatek/ngin3d/Vec3;F)V

    .line 194
    return-void
.end method

.method public set(FFFFZ)V
    .locals 0
    .parameter "q0"
    .parameter "q1"
    .parameter "q2"
    .parameter "q3"
    .parameter "normalize"

    .prologue
    .line 132
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/ngin3d/Rotation;->setByQuaternion(FFFFZ)V

    .line 133
    return-void
.end method

.method public set(Lcom/mediatek/ngin3d/EulerOrder;FFF)V
    .locals 0
    .parameter "order"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Rotation;->setByEuler(Lcom/mediatek/ngin3d/EulerOrder;FFF)V

    .line 229
    return-void
.end method

.method public set(Lcom/mediatek/ngin3d/Vec3;F)V
    .locals 0
    .parameter "axis"
    .parameter "angle"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ngin3d/Rotation;->setByAxisAngle(Lcom/mediatek/ngin3d/Vec3;F)V

    .line 163
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 521
    iget v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    if-ne v0, v4, :cond_0

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Rotation:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Mode: \"Axis Angle\", Angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Rotation;->mAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    .line 523
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    if-ne v0, v3, :cond_1

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Rotation:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Mode: \"Euler\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 526
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Rotation:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Mode: \"Quaternion\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 505
    iget v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    if-ne v0, v4, :cond_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotation:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mAxis:Lcom/mediatek/ngin3d/Vec3;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Mode: \"Axis Angle\", Angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Rotation;->mAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    :goto_0
    return-object v0

    .line 507
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/Rotation;->mMode:I

    if-ne v0, v3, :cond_1

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotation:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mEulerAngles:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Mode: \"Euler\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 510
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotation:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Rotation;->mQuaternion:Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Mode: \"Quaternion\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
