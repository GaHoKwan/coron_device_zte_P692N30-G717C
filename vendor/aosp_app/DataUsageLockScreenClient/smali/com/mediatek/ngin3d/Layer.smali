.class public Lcom/mediatek/ngin3d/Layer;
.super Lcom/mediatek/ngin3d/Container;
.source "Layer.java"


# static fields
.field public static final MOTION_BLUR_QUALITY_HIGH:I = 0x1

.field public static final MOTION_BLUR_QUALITY_LOW:I = 0x0

.field public static final ORTHOGRAPHIC:I = 0x0

.field public static final PERSPECTIVE:I = 0x1

.field static final PROP_CAMERA_FAR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_CAMERA_FOV:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_CAMERA_NEAR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_CAMERA_POS:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Point;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_CAMERA_ROT:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Rotation;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_CAMERA_WIDTH:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_CLEAR_DEPTH:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_DEPTH_OF_FIELD_ENABLED:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_FOCUS_BLUR_FACTOR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_FOCUS_DISTANCE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_FOCUS_RANGE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_MOTION_BLUR_ENABLED:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_MOTION_BLUR_FACTOR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_MOTION_BLUR_QUALITY:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_NAMED_CAMERA:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_PROJECTION_MODE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TARGET_IMAGE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Plane;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "Layer"


# instance fields
.field private mPosition:Lcom/mediatek/ngin3d/Point;

.field private mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "camera"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_POS:Lcom/mediatek/ngin3d/Property;

    .line 97
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "camera_rotation"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_ROT:Lcom/mediatek/ngin3d/Property;

    .line 102
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "camera_fov"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_FOV:Lcom/mediatek/ngin3d/Property;

    .line 107
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "camera_near"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_NEAR:Lcom/mediatek/ngin3d/Property;

    .line 112
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "camera_far"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_FAR:Lcom/mediatek/ngin3d/Property;

    .line 117
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "camera_width"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_WIDTH:Lcom/mediatek/ngin3d/Property;

    .line 122
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "proj_mode"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_PROJECTION_MODE:Lcom/mediatek/ngin3d/Property;

    .line 127
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "clear_depth"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CLEAR_DEPTH:Lcom/mediatek/ngin3d/Property;

    .line 132
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "target_image"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_TARGET_IMAGE:Lcom/mediatek/ngin3d/Property;

    .line 137
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "named_camera"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_NAMED_CAMERA:Lcom/mediatek/ngin3d/Property;

    .line 142
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "focus_distance"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_FOCUS_DISTANCE:Lcom/mediatek/ngin3d/Property;

    .line 147
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "focus_range"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_FOCUS_RANGE:Lcom/mediatek/ngin3d/Property;

    .line 152
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "focus_blur_factor"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_FOCUS_BLUR_FACTOR:Lcom/mediatek/ngin3d/Property;

    .line 157
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "dof_enabled"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_DEPTH_OF_FIELD_ENABLED:Lcom/mediatek/ngin3d/Property;

    .line 162
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "motion_blur_enabled"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_MOTION_BLUR_ENABLED:Lcom/mediatek/ngin3d/Property;

    .line 167
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "motion_blur_factor"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_MOTION_BLUR_FACTOR:Lcom/mediatek/ngin3d/Property;

    .line 172
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "motion_blur_quality"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_MOTION_BLUR_QUALITY:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Container;-><init>()V

    .line 71
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0, v1, v1, v1}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Layer;->mPosition:Lcom/mediatek/ngin3d/Point;

    return-void
.end method


# virtual methods
.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 13
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v10, 0x1

    .line 177
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 279
    .end local p2
    :cond_0
    :goto_0
    return v10

    .line 181
    .restart local p2
    :cond_1
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_POS:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 182
    if-eqz p2, :cond_0

    move-object v8, p2

    .line 183
    check-cast v8, Lcom/mediatek/ngin3d/Point;

    .line 184
    .local v8, position:Lcom/mediatek/ngin3d/Point;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-interface {v11, v8}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setCameraPosition(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_0

    .line 187
    .end local v8           #position:Lcom/mediatek/ngin3d/Point;
    :cond_2
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_ROT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 188
    if-eqz p2, :cond_0

    move-object v9, p2

    .line 189
    check-cast v9, Lcom/mediatek/ngin3d/Rotation;

    .line 190
    .local v9, rotation:Lcom/mediatek/ngin3d/Rotation;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-interface {v11, v9}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setCameraRotation(Lcom/mediatek/ngin3d/Rotation;)V

    goto :goto_0

    .line 193
    .end local v9           #rotation:Lcom/mediatek/ngin3d/Rotation;
    :cond_3
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_FOV:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 194
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 195
    check-cast v4, Ljava/lang/Float;

    .line 196
    .local v4, fov:Ljava/lang/Float;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setCameraFov(F)V

    goto :goto_0

    .line 199
    .end local v4           #fov:Ljava/lang/Float;
    :cond_4
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_NEAR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 200
    if-eqz p2, :cond_0

    move-object v7, p2

    .line 201
    check-cast v7, Ljava/lang/Float;

    .line 202
    .local v7, near:Ljava/lang/Float;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setCameraNear(F)V

    goto :goto_0

    .line 205
    .end local v7           #near:Ljava/lang/Float;
    :cond_5
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_FAR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 206
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 207
    check-cast v1, Ljava/lang/Float;

    .line 208
    .local v1, far:Ljava/lang/Float;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setCameraFar(F)V

    goto :goto_0

    .line 211
    .end local v1           #far:Ljava/lang/Float;
    :cond_6
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_WIDTH:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 212
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 213
    check-cast v1, Ljava/lang/Float;

    .line 214
    .restart local v1       #far:Ljava/lang/Float;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setCameraWidth(F)V

    goto/16 :goto_0

    .line 217
    .end local v1           #far:Ljava/lang/Float;
    :cond_7
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_PROJECTION_MODE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 218
    if-eqz p2, :cond_0

    move-object v5, p2

    .line 219
    check-cast v5, Ljava/lang/Integer;

    .line 220
    .local v5, mode:Ljava/lang/Integer;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setProjectionMode(I)V

    goto/16 :goto_0

    .line 223
    .end local v5           #mode:Ljava/lang/Integer;
    :cond_8
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_NAMED_CAMERA:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 224
    if-eqz p2, :cond_0

    move-object v6, p2

    .line 225
    check-cast v6, Ljava/lang/String;

    .line 226
    .local v6, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-interface {v11, v6}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->useNamedCamera(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .end local v6           #name:Ljava/lang/String;
    :cond_9
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_CLEAR_DEPTH:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 230
    if-eqz p2, :cond_0

    .line 231
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setDepthClear(Z)V

    goto/16 :goto_0

    .line 234
    .restart local p2
    :cond_a
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_TARGET_IMAGE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 235
    if-eqz p2, :cond_0

    .line 236
    check-cast p2, Lcom/mediatek/ngin3d/Plane;

    .end local p2
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-virtual {p2, v11}, Lcom/mediatek/ngin3d/Plane;->attachToRenderLayer(Lcom/mediatek/ngin3d/presentation/RenderLayer;)V

    goto/16 :goto_0

    .line 239
    .restart local p2
    :cond_b
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_FOCUS_DISTANCE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 240
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 241
    check-cast v2, Ljava/lang/Float;

    .line 242
    .local v2, focusDistance:Ljava/lang/Float;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setFocusDistance(F)V

    goto/16 :goto_0

    .line 245
    .end local v2           #focusDistance:Ljava/lang/Float;
    :cond_c
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_FOCUS_RANGE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 246
    if-eqz p2, :cond_0

    move-object v3, p2

    .line 247
    check-cast v3, Ljava/lang/Float;

    .line 248
    .local v3, focusRange:Ljava/lang/Float;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setFocusRange(F)V

    goto/16 :goto_0

    .line 251
    .end local v3           #focusRange:Ljava/lang/Float;
    :cond_d
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_FOCUS_BLUR_FACTOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 252
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 253
    check-cast v0, Ljava/lang/Float;

    .line 254
    .local v0, blurFactor:Ljava/lang/Float;
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setFocusBlurFactor(F)V

    goto/16 :goto_0

    .line 257
    .end local v0           #blurFactor:Ljava/lang/Float;
    :cond_e
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_DEPTH_OF_FIELD_ENABLED:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 258
    if-eqz p2, :cond_0

    .line 259
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->enableDepthOfField(Z)V

    goto/16 :goto_0

    .line 262
    .restart local p2
    :cond_f
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_MOTION_BLUR_ENABLED:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 263
    if-eqz p2, :cond_0

    .line 264
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->enableMotionBlur(Z)V

    goto/16 :goto_0

    .line 267
    .restart local p2
    :cond_10
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_MOTION_BLUR_FACTOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 268
    if-eqz p2, :cond_0

    .line 269
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setMotionBlurFactor(F)V

    goto/16 :goto_0

    .line 272
    .restart local p2
    :cond_11
    sget-object v11, Lcom/mediatek/ngin3d/Layer;->PROP_MOTION_BLUR_QUALITY:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v11}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 273
    if-eqz p2, :cond_0

    .line 274
    iget-object v11, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/mediatek/ngin3d/presentation/RenderLayer;->setMotionBlurQuality(I)V

    goto/16 :goto_0

    .line 279
    .restart local p2
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "engine"

    .prologue
    .line 78
    invoke-interface {p1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createRenderLayer()Lcom/mediatek/ngin3d/presentation/RenderLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    .line 79
    iget-object v0, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    return-object v0
.end method

.method public enableDepthOfField(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 511
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_DEPTH_OF_FIELD_ENABLED:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method public enableMotionBlur(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 519
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_MOTION_BLUR_ENABLED:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 520
    return-void
.end method

.method public getLayer()Lcom/mediatek/ngin3d/Layer;
    .locals 0

    .prologue
    .line 297
    return-object p0
.end method

.method public getRenderLayer()Lcom/mediatek/ngin3d/presentation/RenderLayer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/ngin3d/Layer;->mRenderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;

    return-object v0
.end method

.method public realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V
    .locals 2
    .parameter "presentationEngine"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->isRealized()Z

    move-result v0

    .line 285
    .local v0, isRealized:Z
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Container;->realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V

    .line 287
    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->getPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->addRenderLayer(Lcom/mediatek/ngin3d/presentation/Presentation;)V

    .line 290
    :cond_0
    return-void
.end method

.method public setCamera(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V
    .locals 0
    .parameter "position"
    .parameter "lookAt"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Layer;->setCameraPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 308
    invoke-virtual {p0, p2}, Lcom/mediatek/ngin3d/Layer;->setCameraLookAt(Lcom/mediatek/ngin3d/Point;)V

    .line 309
    return-void
.end method

.method public setCameraFar(F)V
    .locals 2
    .parameter "far"

    .prologue
    .line 404
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_FAR:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public setCameraFov(F)V
    .locals 2
    .parameter "fov"

    .prologue
    .line 386
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_FOV:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method public setCameraLookAt(Lcom/mediatek/ngin3d/Point;)V
    .locals 3
    .parameter "lookAt"

    .prologue
    const/4 v2, 0x0

    .line 355
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v1, v2}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ngin3d/Layer;->setCameraLookAt(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V

    .line 356
    return-void
.end method

.method public setCameraLookAt(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V
    .locals 8
    .parameter "lookAt"
    .parameter "up"

    .prologue
    const/4 v6, 0x0

    .line 367
    new-instance v1, Lcom/mediatek/ngin3d/Vec3;

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget-object v3, p0, Lcom/mediatek/ngin3d/Layer;->mPosition:Lcom/mediatek/ngin3d/Point;

    iget v3, v3, Lcom/mediatek/ngin3d/Point;->x:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget-object v4, p0, Lcom/mediatek/ngin3d/Layer;->mPosition:Lcom/mediatek/ngin3d/Point;

    iget v4, v4, Lcom/mediatek/ngin3d/Point;->y:F

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/mediatek/ngin3d/Point;->z:F

    iget-object v5, p0, Lcom/mediatek/ngin3d/Layer;->mPosition:Lcom/mediatek/ngin3d/Point;

    iget v5, v5, Lcom/mediatek/ngin3d/Point;->z:F

    sub-float/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    .line 369
    .local v1, to:Lcom/mediatek/ngin3d/Vec3;
    new-instance v2, Lcom/mediatek/ngin3d/Vec3;

    const/high16 v3, -0x4080

    invoke-direct {v2, v6, v6, v3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    new-instance v3, Lcom/mediatek/ngin3d/Vec3;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v6, v4, v6}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    new-instance v4, Lcom/mediatek/ngin3d/Vec3;

    iget v5, p2, Lcom/mediatek/ngin3d/Point;->x:F

    iget v6, p2, Lcom/mediatek/ngin3d/Point;->y:F

    iget v7, p2, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-direct {v4, v5, v6, v7}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    invoke-static {v2, v1, v3, v4}, Lcom/mediatek/ngin3d/Rotation;->pointAt(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Rotation;

    move-result-object v0

    .line 371
    .local v0, rotation:Lcom/mediatek/ngin3d/Rotation;
    sget-object v2, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_ROT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method public setCameraNear(F)V
    .locals 2
    .parameter "near"

    .prologue
    .line 395
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_NEAR:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method public setCameraPosition(Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/mediatek/ngin3d/Layer;->mPosition:Lcom/mediatek/ngin3d/Point;

    .line 333
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_POS:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public setCameraRotation(Lcom/mediatek/ngin3d/Rotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 343
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_ROT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public setCameraWidth(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 418
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CAMERA_WIDTH:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method public setDepthClear(Z)V
    .locals 2
    .parameter "clear"

    .prologue
    .line 440
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_CLEAR_DEPTH:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public setFocusBlurFactor(F)V
    .locals 2
    .parameter "blurFactor"

    .prologue
    .line 503
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_FOCUS_BLUR_FACTOR:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method public setFocusDistance(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 473
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_FOCUS_DISTANCE:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 474
    return-void
.end method

.method public setFocusRange(F)V
    .locals 2
    .parameter "range"

    .prologue
    .line 482
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_FOCUS_RANGE:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 483
    return-void
.end method

.method public setMotionBlurFactor(F)V
    .locals 2
    .parameter "blurFactor"

    .prologue
    .line 534
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_MOTION_BLUR_FACTOR:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method public setMotionBlurQuality(I)V
    .locals 2
    .parameter "quality"

    .prologue
    .line 547
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_MOTION_BLUR_QUALITY:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 548
    return-void
.end method

.method public setProjection(IFF)V
    .locals 0
    .parameter "projectionMode"
    .parameter "zNear"
    .parameter "zFar"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Layer;->setProjectionMode(I)V

    .line 320
    invoke-virtual {p0, p2}, Lcom/mediatek/ngin3d/Layer;->setCameraNear(F)V

    .line 321
    invoke-virtual {p0, p3}, Lcom/mediatek/ngin3d/Layer;->setCameraFar(F)V

    .line 322
    return-void
.end method

.method public setProjectionMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 428
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_PROJECTION_MODE:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method public setTargetImage(Lcom/mediatek/ngin3d/Plane;)V
    .locals 1
    .parameter "plane"

    .prologue
    .line 451
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_TARGET_IMAGE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method public setUiPerspective(FFF)V
    .locals 16
    .parameter "width"
    .parameter "height"
    .parameter "zPos"

    .prologue
    .line 565
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 566
    .local v6, smallerDim:F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 568
    .local v8, zDistance:F
    const/high16 v9, 0x4000

    div-float v9, v6, v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v4, v9

    .line 570
    .local v4, fov:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/ngin3d/Layer;->setCameraFov(F)V

    .line 572
    const/high16 v9, 0x4000

    div-float v2, p1, v9

    .line 573
    .local v2, centX:F
    const/high16 v9, 0x4000

    div-float v3, p2, v9

    .line 575
    .local v3, centY:F
    new-instance v1, Lcom/mediatek/ngin3d/Point;

    move/from16 v0, p3

    invoke-direct {v1, v2, v3, v0}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    .line 577
    .local v1, cameraPosition:Lcom/mediatek/ngin3d/Point;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Layer;->setCameraPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 579
    const/4 v9, 0x0

    cmpg-float v9, p3, v9

    if-gez v9, :cond_0

    const/high16 v7, 0x3f80

    .line 580
    .local v7, zDir:F
    :goto_0
    new-instance v9, Lcom/mediatek/ngin3d/Vec3;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, -0x4080

    invoke-direct {v9, v10, v11, v12}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    new-instance v10, Lcom/mediatek/ngin3d/Vec3;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, v7}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    new-instance v11, Lcom/mediatek/ngin3d/Vec3;

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    new-instance v12, Lcom/mediatek/ngin3d/Vec3;

    const/4 v13, 0x0

    const/high16 v14, -0x4080

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    invoke-static {v9, v10, v11, v12}, Lcom/mediatek/ngin3d/Rotation;->pointAt(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Rotation;

    move-result-object v5

    .line 584
    .local v5, rotation:Lcom/mediatek/ngin3d/Rotation;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/ngin3d/Layer;->setCameraRotation(Lcom/mediatek/ngin3d/Rotation;)V

    .line 588
    const/high16 v9, 0x4000

    mul-float/2addr v9, v8

    const/high16 v10, 0x42ca

    div-float/2addr v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/ngin3d/Layer;->setCameraNear(F)V

    .line 589
    const/high16 v9, 0x4348

    mul-float/2addr v9, v8

    const/high16 v10, 0x42ca

    div-float/2addr v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/ngin3d/Layer;->setCameraFar(F)V

    .line 590
    return-void

    .line 579
    .end local v5           #rotation:Lcom/mediatek/ngin3d/Rotation;
    .end local v7           #zDir:F
    :cond_0
    const/high16 v7, -0x4080

    goto :goto_0
.end method

.method public useNamedCamera(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 464
    sget-object v0, Lcom/mediatek/ngin3d/Layer;->PROP_NAMED_CAMERA:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 465
    return-void
.end method
