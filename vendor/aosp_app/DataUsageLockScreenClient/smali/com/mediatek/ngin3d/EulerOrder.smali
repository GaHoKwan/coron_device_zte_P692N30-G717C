.class public final Lcom/mediatek/ngin3d/EulerOrder;
.super Ljava/lang/Object;
.source "EulerOrder.java"


# static fields
.field public static final XYX:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final XYZ:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final XZX:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final XZY:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final YXY:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final YXZ:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final YZX:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final YZY:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final ZXY:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final ZXZ:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final ZYX:Lcom/mediatek/ngin3d/EulerOrder;

.field public static final ZYZ:Lcom/mediatek/ngin3d/EulerOrder;


# instance fields
.field private final mA1:Lcom/mediatek/ngin3d/Vec3;

.field private final mA2:Lcom/mediatek/ngin3d/Vec3;

.field private final mA3:Lcom/mediatek/ngin3d/Vec3;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 53
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "XYZ"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XYZ:Lcom/mediatek/ngin3d/EulerOrder;

    .line 58
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "XZY"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XZY:Lcom/mediatek/ngin3d/EulerOrder;

    .line 63
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "YXZ"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->YXZ:Lcom/mediatek/ngin3d/EulerOrder;

    .line 68
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "YZX"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->YZX:Lcom/mediatek/ngin3d/EulerOrder;

    .line 73
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "ZXY"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->ZXY:Lcom/mediatek/ngin3d/EulerOrder;

    .line 78
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "ZYX"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->ZYX:Lcom/mediatek/ngin3d/EulerOrder;

    .line 83
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "XYX"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XYX:Lcom/mediatek/ngin3d/EulerOrder;

    .line 88
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "XZX"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XZX:Lcom/mediatek/ngin3d/EulerOrder;

    .line 93
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "YXY"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->YXY:Lcom/mediatek/ngin3d/EulerOrder;

    .line 98
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "YZY"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->YZY:Lcom/mediatek/ngin3d/EulerOrder;

    .line 103
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "ZXZ"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->ZXZ:Lcom/mediatek/ngin3d/EulerOrder;

    .line 108
    new-instance v0, Lcom/mediatek/ngin3d/EulerOrder;

    const-string v1, "ZYZ"

    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v3, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    sget-object v4, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ngin3d/EulerOrder;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V

    sput-object v0, Lcom/mediatek/ngin3d/EulerOrder;->ZYZ:Lcom/mediatek/ngin3d/EulerOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)V
    .locals 0
    .parameter "name"
    .parameter "a1"
    .parameter "a2"
    .parameter "a3"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/mediatek/ngin3d/EulerOrder;->mName:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA1:Lcom/mediatek/ngin3d/Vec3;

    .line 135
    iput-object p3, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA2:Lcom/mediatek/ngin3d/Vec3;

    .line 136
    iput-object p4, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA3:Lcom/mediatek/ngin3d/Vec3;

    .line 137
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    if-ne p0, p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 179
    check-cast v0, Lcom/mediatek/ngin3d/EulerOrder;

    .line 180
    .local v0, order:Lcom/mediatek/ngin3d/EulerOrder;
    iget-object v3, p0, Lcom/mediatek/ngin3d/EulerOrder;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/mediatek/ngin3d/EulerOrder;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 181
    :cond_4
    iget-object v3, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA1:Lcom/mediatek/ngin3d/Vec3;

    iget-object v4, v0, Lcom/mediatek/ngin3d/EulerOrder;->mA1:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 182
    :cond_5
    iget-object v3, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA2:Lcom/mediatek/ngin3d/Vec3;

    iget-object v4, v0, Lcom/mediatek/ngin3d/EulerOrder;->mA2:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 183
    :cond_6
    iget-object v3, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA3:Lcom/mediatek/ngin3d/Vec3;

    iget-object v4, v0, Lcom/mediatek/ngin3d/EulerOrder;->mA3:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getA1()Lcom/mediatek/ngin3d/Vec3;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA1:Lcom/mediatek/ngin3d/Vec3;

    return-object v0
.end method

.method public getA2()Lcom/mediatek/ngin3d/Vec3;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA2:Lcom/mediatek/ngin3d/Vec3;

    return-object v0
.end method

.method public getA3()Lcom/mediatek/ngin3d/Vec3;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA3:Lcom/mediatek/ngin3d/Vec3;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/mediatek/ngin3d/EulerOrder;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 194
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA1:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Point;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA2:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Point;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 196
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/ngin3d/EulerOrder;->mA3:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Point;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 197
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/ngin3d/EulerOrder;->mName:Ljava/lang/String;

    return-object v0
.end method
