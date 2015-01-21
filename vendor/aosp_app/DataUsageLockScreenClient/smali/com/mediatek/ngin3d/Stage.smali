.class public Lcom/mediatek/ngin3d/Stage;
.super Lcom/mediatek/ngin3d/Container;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/Stage$Stereo3D;,
        Lcom/mediatek/ngin3d/Stage$Camera;,
        Lcom/mediatek/ngin3d/Stage$ProjectionConfig;
    }
.end annotation


# static fields
.field private static final ATTACHED_PROP_ADD_LAYER:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Stage;",
            ">;"
        }
    .end annotation
.end field

.field public static final ORTHOGRAPHIC:I = 0x0

.field public static final PERSPECTIVE:I = 0x1

.field private static final PM_MAX_LEGAL:I = 0x3

.field static final PROP_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Color;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_CAMERA:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Stage$Camera;",
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

.field static final PROP_DEBUG_CAMERA:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_FOG_COLOR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Color;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_FOG_DENSITY:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_MAX_FPS:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_PROJECTION:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Stage$ProjectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_STEREO3D:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Stage$Stereo3D;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_LOCAL_STAGE:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/mediatek/ngin3d/Stage;",
            ">;"
        }
    .end annotation
.end field

.field public static final UI_PERSPECTIVE:I = 0x2

.field public static final UI_PERSPECTIVE_LHC:I = 0x2


# instance fields
.field private mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

.field private final mUiHandler:Lcom/mediatek/ngin3d/UiHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 58
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->THREAD_LOCAL_STAGE:Ljava/lang/ThreadLocal;

    .line 81
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "layer"

    new-array v2, v7, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v9, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->ATTACHED_PROP_ADD_LAYER:Lcom/mediatek/ngin3d/Property;

    .line 336
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "projection"

    new-instance v2, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;

    const/4 v3, 0x2

    const/high16 v4, 0x4000

    const v5, 0x453b8000

    const v6, -0x3b752000

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;-><init>(IFFF)V

    new-array v3, v7, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_PROJECTION:Lcom/mediatek/ngin3d/Property;

    .line 341
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "active_camera"

    new-array v2, v10, [Lcom/mediatek/ngin3d/Property;

    sget-object v3, Lcom/mediatek/ngin3d/Stage;->PROP_PROJECTION:Lcom/mediatek/ngin3d/Property;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v9, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_DEBUG_CAMERA:Lcom/mediatek/ngin3d/Property;

    .line 346
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "camera"

    new-instance v2, Lcom/mediatek/ngin3d/Stage$Camera;

    new-instance v3, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v3, v8, v8, v8}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    new-instance v4, Lcom/mediatek/ngin3d/Point;

    const/high16 v5, -0x4080

    invoke-direct {v4, v8, v8, v5}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    invoke-direct {v2, v3, v4}, Lcom/mediatek/ngin3d/Stage$Camera;-><init>(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V

    new-array v3, v10, [Lcom/mediatek/ngin3d/Property;

    sget-object v4, Lcom/mediatek/ngin3d/Stage;->PROP_PROJECTION:Lcom/mediatek/ngin3d/Property;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA:Lcom/mediatek/ngin3d/Property;

    .line 351
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "camera_fov"

    new-array v2, v10, [Lcom/mediatek/ngin3d/Property;

    sget-object v3, Lcom/mediatek/ngin3d/Stage;->PROP_PROJECTION:Lcom/mediatek/ngin3d/Property;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v9, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA_FOV:Lcom/mediatek/ngin3d/Property;

    .line 356
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "camera_width"

    new-array v2, v10, [Lcom/mediatek/ngin3d/Property;

    sget-object v3, Lcom/mediatek/ngin3d/Stage;->PROP_PROJECTION:Lcom/mediatek/ngin3d/Property;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v9, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA_WIDTH:Lcom/mediatek/ngin3d/Property;

    .line 361
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "background_color"

    sget-object v2, Lcom/mediatek/ngin3d/Color;->BLACK:Lcom/mediatek/ngin3d/Color;

    new-array v3, v7, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property;

    .line 366
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "fog_density"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v3, v7, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_FOG_DENSITY:Lcom/mediatek/ngin3d/Property;

    .line 371
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "fog_color"

    sget-object v2, Lcom/mediatek/ngin3d/Color;->BLACK:Lcom/mediatek/ngin3d/Color;

    new-array v3, v7, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_FOG_COLOR:Lcom/mediatek/ngin3d/Property;

    .line 376
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "max_fps"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v7, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_MAX_FPS:Lcom/mediatek/ngin3d/Property;

    .line 381
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "stereo3d"

    new-array v2, v7, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v9, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_STEREO3D:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/mediatek/ngin3d/Stage$1;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Stage$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/Stage;-><init>(Lcom/mediatek/ngin3d/UiHandler;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/UiHandler;)V
    .locals 0
    .parameter "uiHandler"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Container;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/mediatek/ngin3d/Stage;->mUiHandler:Lcom/mediatek/ngin3d/UiHandler;

    .line 107
    return-void
.end method

.method private getProjectionConfig()Lcom/mediatek/ngin3d/Stage$ProjectionConfig;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Stage;->getProjection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;

    return-object v0
.end method

.method public static getUiHandler()Lcom/mediatek/ngin3d/UiHandler;
    .locals 2

    .prologue
    .line 158
    sget-object v1, Lcom/mediatek/ngin3d/Stage;->THREAD_LOCAL_STAGE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Stage;

    .line 159
    .local v0, stage:Lcom/mediatek/ngin3d/Stage;
    if-nez v0, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 162
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/mediatek/ngin3d/Stage;->mUiHandler:Lcom/mediatek/ngin3d/UiHandler;

    goto :goto_0
.end method


# virtual methods
.method public addTextureAtlas(Landroid/content/res/Resources;II)V
    .locals 1
    .parameter "res"
    .parameter "imageId"
    .parameter "scriptId"

    .prologue
    .line 717
    invoke-static {}, Lcom/mediatek/ngin3d/TextureAtlas;->getDefault()Lcom/mediatek/ngin3d/TextureAtlas;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ngin3d/TextureAtlas;->add(Landroid/content/res/Resources;II)V

    .line 718
    return-void
.end method

.method public addTextureAtlas(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 1
    .parameter "res"
    .parameter "asset"
    .parameter "scriptId"

    .prologue
    .line 728
    invoke-static {}, Lcom/mediatek/ngin3d/TextureAtlas;->getDefault()Lcom/mediatek/ngin3d/TextureAtlas;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ngin3d/TextureAtlas;->add(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 729
    return-void
.end method

.method public applyChanges(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V
    .locals 0
    .parameter "presentationEngine"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Container;->realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V

    .line 120
    return-void
.end method

.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 12
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    .line 389
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 448
    .end local p2
    :cond_0
    :goto_0
    return v7

    .line 393
    .restart local p2
    :cond_1
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_DEBUG_CAMERA:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 394
    if-eqz p2, :cond_0

    move-object v3, p2

    .line 395
    check-cast v3, Ljava/lang/String;

    .line 396
    .local v3, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v8, v3}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setDebugCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 400
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 401
    check-cast v0, Lcom/mediatek/ngin3d/Stage$Camera;

    .line 402
    .local v0, camera:Lcom/mediatek/ngin3d/Stage$Camera;
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    iget-object v9, v0, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    iget-object v10, v0, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    invoke-interface {v8, v9, v10}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setCamera(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V

    goto :goto_0

    .line 405
    .end local v0           #camera:Lcom/mediatek/ngin3d/Stage$Camera;
    :cond_3
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA_FOV:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 406
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 407
    check-cast v1, Ljava/lang/Float;

    .line 408
    .local v1, fov:Ljava/lang/Float;
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v8, v9}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setCameraFov(F)V

    goto :goto_0

    .line 411
    .end local v1           #fov:Ljava/lang/Float;
    :cond_4
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA_WIDTH:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 412
    if-eqz p2, :cond_0

    move-object v6, p2

    .line 413
    check-cast v6, Ljava/lang/Float;

    .line 414
    .local v6, width:Ljava/lang/Float;
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v8, v9}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setCameraWidth(F)V

    goto :goto_0

    .line 417
    .end local v6           #width:Ljava/lang/Float;
    :cond_5
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_PROJECTION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 418
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 419
    check-cast v4, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;

    .line 420
    .local v4, p:Lcom/mediatek/ngin3d/Stage$ProjectionConfig;
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    iget v9, v4, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    iget v10, v4, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    invoke-interface {v8, v9, v10}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setClipDistances(FF)V

    .line 421
    iget v8, v4, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 422
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    iget v9, v4, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    invoke-interface {v8, v9}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setCameraZ(F)V

    .line 424
    :cond_6
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    iget v9, v4, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    invoke-interface {v8, v9}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setProjectionMode(I)V

    goto/16 :goto_0

    .line 427
    .end local v4           #p:Lcom/mediatek/ngin3d/Stage$ProjectionConfig;
    :cond_7
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 430
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_FOG_DENSITY:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 431
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v8, v9}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setFogDensity(F)V

    goto/16 :goto_0

    .line 433
    .restart local p2
    :cond_8
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_FOG_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 434
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    check-cast p2, Lcom/mediatek/ngin3d/Color;

    .end local p2
    invoke-interface {v8, p2}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setFogColor(Lcom/mediatek/ngin3d/Color;)V

    goto/16 :goto_0

    .line 436
    .restart local p2
    :cond_9
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_MAX_FPS:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v2, p2

    .line 437
    check-cast v2, Ljava/lang/Integer;

    .line 438
    .local v2, fps:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setMaxFPS(I)V

    goto/16 :goto_0

    .line 440
    .end local v2           #fps:Ljava/lang/Integer;
    :cond_a
    sget-object v8, Lcom/mediatek/ngin3d/Stage;->PROP_STEREO3D:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v8}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 441
    if-eqz p2, :cond_0

    move-object v5, p2

    .line 442
    check-cast v5, Lcom/mediatek/ngin3d/Stage$Stereo3D;

    .line 443
    .local v5, stereo3D:Lcom/mediatek/ngin3d/Stage$Stereo3D;
    iget-object v8, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    iget-boolean v9, v5, Lcom/mediatek/ngin3d/Stage$Stereo3D;->enable:Z

    iget v10, v5, Lcom/mediatek/ngin3d/Stage$Stereo3D;->focalDistance:F

    iget v11, v5, Lcom/mediatek/ngin3d/Stage$Stereo3D;->intensity:F

    invoke-interface {v8, v9, v10, v11}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->enableStereoscopic3D(ZFF)V

    goto/16 :goto_0

    .line 448
    .end local v5           #stereo3D:Lcom/mediatek/ngin3d/Stage$Stereo3D;
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 751
    invoke-super {p0}, Lcom/mediatek/ngin3d/Container;->dump()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, dump:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/ngin3d/utils/JSON;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    const-string v1, "Ngin3d"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-object v0
.end method

.method public getBackgroundColor()Lcom/mediatek/ngin3d/Color;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Color;

    return-object v0
.end method

.method public getCamera()Lcom/mediatek/ngin3d/Stage$Camera;
    .locals 1

    .prologue
    .line 633
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Stage$Camera;

    return-object v0
.end method

.method public getDebugCameraNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    if-nez v0, :cond_0

    .line 560
    const/4 v0, 0x0

    .line 562
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getDebugCameraNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrameInterval()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getFrameInterval()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMaxFPS()I
    .locals 1

    .prologue
    .line 744
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_MAX_FPS:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProjection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_PROJECTION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStereo3D()Lcom/mediatek/ngin3d/Stage$Stereo3D;
    .locals 1

    .prologue
    .line 706
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_STEREO3D:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Stage$Stereo3D;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getWidth()I

    move-result v0

    return v0
.end method

.method public realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V
    .locals 0
    .parameter "presentationEngine"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    .line 134
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Stage;->registerCurrentThread()V

    .line 136
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Container;->realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V

    .line 137
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Container;->reloadBitmapTexture()V

    .line 138
    return-void
.end method

.method public registerCurrentThread()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->THREAD_LOCAL_STAGE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public setBackgroundColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 1
    .parameter "bkgColor"

    .prologue
    .line 642
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 643
    return-void
.end method

.method public setCamera(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V
    .locals 2
    .parameter "position"
    .parameter "lookAt"

    .prologue
    .line 573
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/Stage$Camera;

    invoke-direct {v1, p1, p2}, Lcom/mediatek/ngin3d/Stage$Camera;-><init>(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 574
    return-void
.end method

.method public setCameraFar(F)V
    .locals 4
    .parameter "far"

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Stage;->getProjectionConfig()Lcom/mediatek/ngin3d/Stage$ProjectionConfig;

    move-result-object v0

    .line 537
    .local v0, config:Lcom/mediatek/ngin3d/Stage$ProjectionConfig;
    iget v1, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    iget v2, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    iget v3, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/mediatek/ngin3d/Stage;->setProjection(IFFF)V

    .line 538
    return-void
.end method

.method public setCameraFov(F)V
    .locals 2
    .parameter "fov"

    .prologue
    .line 610
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA_FOV:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 611
    return-void
.end method

.method public setCameraLookAt(Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "lookAt"

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Stage;->getCamera()Lcom/mediatek/ngin3d/Stage$Camera;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Stage;->setCamera(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V

    .line 596
    return-void
.end method

.method public setCameraNear(F)V
    .locals 4
    .parameter "near"

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Stage;->getProjectionConfig()Lcom/mediatek/ngin3d/Stage$ProjectionConfig;

    move-result-object v0

    .line 521
    .local v0, config:Lcom/mediatek/ngin3d/Stage$ProjectionConfig;
    iget v1, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    iget v2, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    iget v3, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mediatek/ngin3d/Stage;->setProjection(IFFF)V

    .line 522
    return-void
.end method

.method public setCameraPosition(Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Stage;->getCamera()Lcom/mediatek/ngin3d/Stage$Camera;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ngin3d/Stage;->setCamera(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V

    .line 584
    return-void
.end method

.method public setCameraWidth(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 624
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_CAMERA_WIDTH:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 625
    return-void
.end method

.method public setDebugCamera(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/mediatek/ngin3d/Stage;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    invoke-interface {v0, p1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->setDebugCamera(Ljava/lang/String;)V

    .line 551
    :cond_0
    return-void
.end method

.method public setFogColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 673
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_FOG_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 674
    return-void
.end method

.method public setFogDensity(F)V
    .locals 2
    .parameter "density"

    .prologue
    .line 664
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_FOG_DENSITY:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 665
    return-void
.end method

.method public setMaxFPS(I)V
    .locals 2
    .parameter "fps"

    .prologue
    .line 736
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_MAX_FPS:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 737
    return-void
.end method

.method public setProjection(IFFF)V
    .locals 3
    .parameter "projectionMode"
    .parameter "zNear"
    .parameter "zFar"
    .parameter "zStage"

    .prologue
    .line 473
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 474
    :cond_0
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal projection mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_1
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_PROJECTION:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;-><init>(IFFF)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method public setProjectionMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Stage;->getProjectionConfig()Lcom/mediatek/ngin3d/Stage$ProjectionConfig;

    move-result-object v0

    .line 506
    .local v0, config:Lcom/mediatek/ngin3d/Stage$ProjectionConfig;
    iget v1, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    iget v2, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    iget v3, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/mediatek/ngin3d/Stage;->setProjection(IFFF)V

    .line 507
    return-void
.end method

.method public setStereo3D(ZF)V
    .locals 1
    .parameter "enable"
    .parameter "focalDistance"

    .prologue
    .line 684
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/Stage;->setStereo3D(ZFF)V

    .line 685
    return-void
.end method

.method public setStereo3D(ZFF)V
    .locals 2
    .parameter "enable"
    .parameter "focalDistance"
    .parameter "intensity"

    .prologue
    .line 697
    sget-object v0, Lcom/mediatek/ngin3d/Stage;->PROP_STEREO3D:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/Stage$Stereo3D;

    invoke-direct {v1, p1, p2, p3}, Lcom/mediatek/ngin3d/Stage$Stereo3D;-><init>(ZFF)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 698
    return-void
.end method
