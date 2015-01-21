.class public Lcom/mediatek/ngin3d/j3m/ActorPresentation;
.super Ljava/lang/Object;
.source "ActorPresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/Presentation;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_RENDER_LAYER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActorPresentation"


# instance fields
.field private mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/j3m/ActorPresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mColor:Lcom/mediatek/ngin3d/Color;

.field private mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

.field private mHasDynamicMaterial:Z

.field private mHasDynamicMaterialDirty:Z

.field private mName:Ljava/lang/String;

.field private final mNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private mOpacity:F

.field private mOwner:Ljava/lang/Object;

.field private mParent:Lcom/mediatek/ngin3d/j3m/ActorPresentation;

.field private mParentOpacity:F

.field private mRenderLayer:I

.field private mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

.field private mSceneNode:Lcom/mediatek/j3m/SceneNode;

.field private mShape:Lcom/mediatek/j3m/Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V
    .locals 3
    .parameter "engine"

    .prologue
    const/high16 v2, 0x3f80

    const/16 v1, 0xff

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterialDirty:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mNodes:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/mediatek/ngin3d/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/mediatek/ngin3d/Color;-><init>(IIII)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mColor:Lcom/mediatek/ngin3d/Color;

    .line 94
    iput v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mOpacity:F

    .line 95
    iput v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mParentOpacity:F

    .line 98
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    .line 99
    return-void
.end method

.method private getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;
    .locals 4
    .parameter "name"

    .prologue
    .line 246
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v1, p1}, Lcom/mediatek/j3m/SceneNode;->find(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    .line 248
    .local v0, node:Lcom/mediatek/j3m/SceneNode;
    if-nez v0, :cond_0

    .line 249
    const-string v1, "ActorPresentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find node with name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    return-object v0
.end method

.method private getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;
    .locals 4
    .parameter "name"

    .prologue
    .line 378
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/j3m/AssetPool;->getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v0

    .line 380
    .local v0, texture:Lcom/mediatek/j3m/Texture2D;
    if-nez v0, :cond_0

    .line 381
    const-string v1, "ActorPresentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Texture \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" cannot be found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    return-object v0
.end method

.method private raycast(Lcom/mediatek/j3m/Ray;Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;)V
    .locals 5
    .parameter "ray"
    .parameter "nearest"

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 756
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->raycast(Lcom/mediatek/j3m/Ray;Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;)V

    .line 759
    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;

    .line 760
    .local v3, subActor:Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;
    invoke-direct {p0, p1, p2, v3}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->raycast(Lcom/mediatek/j3m/Ray;Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;)V

    goto :goto_0

    .line 764
    .end local v3           #subActor:Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getChildrenCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 765
    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getChild(I)Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    .line 766
    .local v0, child:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    invoke-direct {v0, p1, p2}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->raycast(Lcom/mediatek/j3m/Ray;Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;)V

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 769
    .end local v0           #child:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private raycast(Lcom/mediatek/j3m/Ray;Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;)V
    .locals 9
    .parameter "ray"
    .parameter "nearest"
    .parameter "subActor"

    .prologue
    .line 776
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getShape()Lcom/mediatek/j3m/Shape;

    move-result-object v6

    .line 779
    .local v6, shape:Lcom/mediatek/j3m/Shape;
    :goto_0
    if-eqz v6, :cond_0

    .line 780
    invoke-interface {v6, p1}, Lcom/mediatek/j3m/Shape;->raycast(Lcom/mediatek/j3m/Ray;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 782
    invoke-virtual {p2}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getActorPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v8

    if-nez v8, :cond_2

    .line 783
    invoke-virtual {p2, p0}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->setActorPresentation(Lcom/mediatek/ngin3d/presentation/Presentation;)V

    .line 784
    invoke-virtual {p2, p3}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->setActorNodePresentation(Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;)V

    .line 817
    :cond_0
    :goto_1
    return-void

    .line 776
    .end local v6           #shape:Lcom/mediatek/j3m/Shape;
    :cond_1
    invoke-virtual {p3}, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->getShape()Lcom/mediatek/j3m/Shape;

    move-result-object v6

    goto :goto_0

    .line 786
    .restart local v6       #shape:Lcom/mediatek/j3m/Shape;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRenderLayer()I

    move-result v2

    .line 787
    .local v2, layer:I
    invoke-interface {v6}, Lcom/mediatek/j3m/Shape;->getRaycastDistance()F

    move-result v1

    .line 789
    .local v1, distance:F
    invoke-virtual {p2}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getActorPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    .line 791
    .local v0, actorPresentation:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    invoke-virtual {p2}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getActorNodePresentation()Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;

    .line 794
    .local v7, subActorPresentation:Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRenderLayer()I

    move-result v4

    .line 797
    .local v4, nearestLayer:I
    if-nez v7, :cond_3

    .line 798
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getShape()Lcom/mediatek/j3m/Shape;

    move-result-object v5

    .line 803
    .local v5, nearestShape:Lcom/mediatek/j3m/Shape;
    :goto_2
    sget-boolean v8, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->$assertionsDisabled:Z

    if-nez v8, :cond_4

    if-nez v5, :cond_4

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 800
    .end local v5           #nearestShape:Lcom/mediatek/j3m/Shape;
    :cond_3
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->getShape()Lcom/mediatek/j3m/Shape;

    move-result-object v5

    .restart local v5       #nearestShape:Lcom/mediatek/j3m/Shape;
    goto :goto_2

    .line 804
    :cond_4
    invoke-interface {v5}, Lcom/mediatek/j3m/Shape;->getRaycastDistance()F

    move-result v3

    .line 808
    .local v3, nearestDistance:F
    if-lt v2, v4, :cond_0

    if-gt v2, v4, :cond_5

    cmpg-float v8, v1, v3

    if-gez v8, :cond_0

    .line 811
    :cond_5
    invoke-virtual {p2, p0}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->setActorPresentation(Lcom/mediatek/ngin3d/presentation/Presentation;)V

    .line 812
    invoke-virtual {p2, p3}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->setActorNodePresentation(Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;)V

    goto :goto_1
.end method

.method private setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .parameter "sceneNode"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1070
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v5}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->DEBUG:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {p1, v5}, Lcom/mediatek/j3m/SceneNode;->getFlags(Lcom/mediatek/j3m/FlagMask;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1109
    :cond_0
    return-void

    .line 1074
    :cond_1
    const-class v5, Lcom/mediatek/j3m/Solid;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 1075
    check-cast v4, Lcom/mediatek/j3m/Solid;

    .line 1081
    .local v4, solid:Lcom/mediatek/j3m/Solid;
    const-class v5, Ljava/lang/Float;

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1082
    invoke-interface {v4}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v6

    move-object v5, p3

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v6, p2, v5}, Lcom/mediatek/j3m/Appearance;->setFloat(Ljava/lang/String;F)V

    .line 1104
    .end local v4           #solid:Lcom/mediatek/j3m/Solid;
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/mediatek/j3m/SceneNode;->getChildCount()I

    move-result v2

    .line 1105
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 1106
    invoke-interface {p1, v1}, Lcom/mediatek/j3m/SceneNode;->getChild(I)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    .line 1107
    .local v0, childSceneNode:Lcom/mediatek/j3m/SceneNode;
    invoke-direct {p0, v0, p2, p3}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1084
    .end local v0           #childSceneNode:Lcom/mediatek/j3m/SceneNode;
    .end local v1           #i:I
    .end local v2           #numChildren:I
    .restart local v4       #solid:Lcom/mediatek/j3m/Solid;
    :cond_3
    const-class v5, Lcom/mediatek/ngin3d/Point;

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, p3

    .line 1085
    check-cast v3, Lcom/mediatek/ngin3d/Point;

    .line 1086
    .local v3, point:Lcom/mediatek/ngin3d/Point;
    invoke-interface {v4}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ngin3d/Point;->x:F

    iget v7, v3, Lcom/mediatek/ngin3d/Point;->y:F

    iget v8, v3, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-interface {v5, p2, v6, v7, v8}, Lcom/mediatek/j3m/Appearance;->setVector3f(Ljava/lang/String;FFF)V

    goto :goto_0

    .line 1089
    .end local v3           #point:Lcom/mediatek/ngin3d/Point;
    :cond_4
    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1090
    invoke-interface {v4}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v6

    move-object v5, p3

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v6, p2, v5}, Lcom/mediatek/j3m/Appearance;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1092
    :cond_5
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1093
    invoke-interface {v4}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v6

    move-object v5, p3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, p2, v5}, Lcom/mediatek/j3m/Appearance;->setInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1095
    :cond_6
    const-class v5, Lcom/mediatek/j3m/Texture2D;

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1096
    invoke-interface {v4}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v6

    move-object v5, p3

    check-cast v5, Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v6, p2, v5}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    goto :goto_0

    .line 1099
    :cond_7
    const-string v5, "ActorPresentation"

    const-string v6, "Unrecognised property type."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMaterialRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;)V
    .locals 6
    .parameter "sceneNode"
    .parameter "name"

    .prologue
    .line 1049
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v4

    iget-object v4, v4, Lcom/mediatek/ngin3d/j3m/RenderFlags;->DEBUG:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {p1, v4}, Lcom/mediatek/j3m/SceneNode;->getFlags(Lcom/mediatek/j3m/FlagMask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1064
    :cond_0
    return-void

    .line 1053
    :cond_1
    const-class v4, Lcom/mediatek/j3m/Solid;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 1054
    check-cast v3, Lcom/mediatek/j3m/Solid;

    .line 1055
    .local v3, solid:Lcom/mediatek/j3m/Solid;
    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v4

    invoke-interface {v3}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lcom/mediatek/j3m/AssetPool;->applyAppearance(Lcom/mediatek/j3m/Appearance;Ljava/lang/String;)V

    .line 1059
    .end local v3           #solid:Lcom/mediatek/j3m/Solid;
    :cond_2
    invoke-interface {p1}, Lcom/mediatek/j3m/SceneNode;->getChildCount()I

    move-result v2

    .line 1060
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1061
    invoke-interface {p1, v1}, Lcom/mediatek/j3m/SceneNode;->getChild(I)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    .line 1062
    .local v0, childSceneNode:Lcom/mediatek/j3m/SceneNode;
    invoke-direct {p0, v0, p2}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;)V

    .line 1060
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateHasDynamicMaterial(Lcom/mediatek/j3m/SceneNode;)V
    .locals 6
    .parameter "node"

    .prologue
    .line 454
    const-class v4, Lcom/mediatek/j3m/Solid;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 455
    check-cast v3, Lcom/mediatek/j3m/Solid;

    .line 458
    .local v3, solid:Lcom/mediatek/j3m/Solid;
    invoke-interface {v3}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v4

    const-string v5, "DYNAMIC"

    invoke-interface {v4, v5}, Lcom/mediatek/j3m/Appearance;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterial:Z

    .line 463
    .end local v3           #solid:Lcom/mediatek/j3m/Solid;
    :cond_0
    invoke-interface {p1}, Lcom/mediatek/j3m/SceneNode;->getChildCount()I

    move-result v0

    .line 467
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-boolean v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterial:Z

    if-nez v4, :cond_1

    .line 468
    invoke-interface {p1, v2}, Lcom/mediatek/j3m/SceneNode;->getChild(I)Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    .line 469
    .local v1, childNode:Lcom/mediatek/j3m/SceneNode;
    invoke-direct {p0, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->updateHasDynamicMaterial(Lcom/mediatek/j3m/SceneNode;)V

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v1           #childNode:Lcom/mediatek/j3m/SceneNode;
    :cond_1
    return-void
.end method

.method private updateOpacity()V
    .locals 4

    .prologue
    .line 642
    iget v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mParentOpacity:F

    iget v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mOpacity:F

    mul-float v1, v2, v3

    .line 647
    .local v1, opacity:F
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-static {v2, v3, v1}, Lcom/mediatek/ngin3d/j3m/Utility;->setOpacityRecursive(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/SceneNode;F)V

    .line 657
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 658
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mNodes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;

    invoke-virtual {v2, v1}, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->notifyOfParentOpacity(F)V

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 651
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    invoke-virtual {v2, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->notifyOfParentOpacity(F)V

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 660
    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Lcom/mediatek/ngin3d/presentation/Presentation;)V
    .locals 3
    .parameter "presentation"

    .prologue
    .line 844
    sget-boolean v1, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 845
    check-cast v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    .line 847
    .local v0, actorPresentation:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v1, v2}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 848
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    iput-object p0, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mParent:Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    .line 852
    iget v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mOpacity:F

    iget v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mParentOpacity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->notifyOfParentOpacity(F)V

    .line 853
    return-void
.end method

.method public createActorNodePresentation(Ljava/lang/String;)Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;
    .locals 2
    .parameter "nodeName"

    .prologue
    .line 908
    new-instance v0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;-><init>(Lcom/mediatek/ngin3d/j3m/ActorPresentation;Ljava/lang/String;)V

    .line 910
    .local v0, presentation:Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    return-object v0
.end method

.method public getAnchorPoint()Lcom/mediatek/ngin3d/Point;
    .locals 4

    .prologue
    .line 571
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v1}, Lcom/mediatek/j3m/SceneNode;->getPositionX()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v2}, Lcom/mediatek/j3m/SceneNode;->getPositionY()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v3}, Lcom/mediatek/j3m/SceneNode;->getPositionZ()F

    move-result v3

    neg-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method protected getAnchorSceneNode()Lcom/mediatek/j3m/SceneNode;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    return-object v0
.end method

.method public getChild(I)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "index"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/presentation/Presentation;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColor()Lcom/mediatek/ngin3d/Color;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mColor:Lcom/mediatek/ngin3d/Color;

    return-object v0
.end method

.method protected getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 625
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mOpacity:F

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOwner()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mOwner:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition(Z)Lcom/mediatek/ngin3d/Point;
    .locals 4
    .parameter "normalized"

    .prologue
    .line 195
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v1}, Lcom/mediatek/j3m/SceneNode;->getPositionX()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v2}, Lcom/mediatek/j3m/SceneNode;->getPositionY()F

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v3}, Lcom/mediatek/j3m/SceneNode;->getPositionZ()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    .line 200
    .local v0, pos:Lcom/mediatek/ngin3d/Point;
    if-eqz p1, :cond_0

    .line 201
    iget v1, v0, Lcom/mediatek/ngin3d/Point;->x:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 202
    iget v1, v0, Lcom/mediatek/ngin3d/Point;->y:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    .line 206
    :cond_0
    return-object v0
.end method

.method public getRenderLayer()I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRenderLayer:I

    return v0
.end method

.method public getRenderZOrder()I
    .locals 2

    .prologue
    .line 992
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRenderLayer:I

    .line 994
    .local v0, zOrder:I
    rsub-int/lit8 v0, v0, 0x4

    .line 996
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 997
    const/4 v0, -0x1

    .line 1000
    :cond_0
    return v0
.end method

.method protected getRootSceneNode()Lcom/mediatek/j3m/SceneNode;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    return-object v0
.end method

.method public getRotation()Lcom/mediatek/ngin3d/Rotation;
    .locals 6

    .prologue
    .line 525
    new-instance v0, Lcom/mediatek/ngin3d/Rotation;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v1}, Lcom/mediatek/j3m/SceneNode;->getRotationA()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v2}, Lcom/mediatek/j3m/SceneNode;->getRotationB()F

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v3}, Lcom/mediatek/j3m/SceneNode;->getRotationC()F

    move-result v3

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v4}, Lcom/mediatek/j3m/SceneNode;->getRotationD()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ngin3d/Rotation;-><init>(FFFFZ)V

    return-object v0
.end method

.method public getScale()Lcom/mediatek/ngin3d/Scale;
    .locals 4

    .prologue
    .line 549
    new-instance v0, Lcom/mediatek/ngin3d/Scale;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v1}, Lcom/mediatek/j3m/SceneNode;->getScaleX()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v2}, Lcom/mediatek/j3m/SceneNode;->getScaleY()F

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v3}, Lcom/mediatek/j3m/SceneNode;->getScaleZ()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    return-object v0
.end method

.method protected getSceneNode()Lcom/mediatek/j3m/SceneNode;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    return-object v0
.end method

.method protected getShape()Lcom/mediatek/j3m/Shape;
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mShape:Lcom/mediatek/j3m/Shape;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mShape:Lcom/mediatek/j3m/Shape;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Shape;->setTransform(Lcom/mediatek/j3m/SceneNode;)V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mShape:Lcom/mediatek/j3m/Shape;

    return-object v0
.end method

.method public getTrulyVisible()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->getDerivedFlags(Lcom/mediatek/j3m/FlagMask;)Z

    move-result v0

    return v0
.end method

.method public getVisible()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->getFlags(Lcom/mediatek/j3m/FlagMask;)Z

    move-result v0

    return v0
.end method

.method public hitTest(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/presentation/RenderLayer;)Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
    .locals 16
    .parameter "screenPoint"
    .parameter "layer"

    .prologue
    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getTrulyVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 674
    const/4 v9, 0x0

    .line 740
    .end local p2
    :cond_0
    :goto_0
    return-object v9

    .line 678
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getHitTestRay()Lcom/mediatek/j3m/Ray;

    move-result-object v1

    .line 681
    .local v1, ray:Lcom/mediatek/j3m/Ray;
    if-nez p2, :cond_2

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getCamera()Lcom/mediatek/j3m/Camera;

    move-result-object v2

    .line 688
    .end local p2
    .local v2, camera:Lcom/mediatek/j3m/Camera;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/mediatek/ngin3d/Point;->x:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/mediatek/ngin3d/Point;->y:F

    invoke-interface/range {v1 .. v6}, Lcom/mediatek/j3m/Ray;->setToCameraRay(Lcom/mediatek/j3m/Camera;FFFF)V

    .line 695
    new-instance v9, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;

    invoke-direct {v9}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;-><init>()V

    .line 696
    .local v9, nearest:Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->raycast(Lcom/mediatek/j3m/Ray;Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;)V

    .line 699
    invoke-virtual {v9}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getActorPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    .line 702
    .local v7, actorPresentation:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    if-eqz v7, :cond_0

    .line 703
    invoke-virtual {v9}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getActorNodePresentation()Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    move-result-object v15

    check-cast v15, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;

    .line 708
    .local v15, subActorPresentation:Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;
    if-nez v15, :cond_3

    .line 709
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getShape()Lcom/mediatek/j3m/Shape;

    move-result-object v14

    .line 715
    .local v14, shape:Lcom/mediatek/j3m/Shape;
    :goto_2
    new-instance v13, Lcom/mediatek/ngin3d/Point;

    invoke-interface {v1}, Lcom/mediatek/j3m/Ray;->getPositionX()F

    move-result v3

    invoke-interface {v1}, Lcom/mediatek/j3m/Ray;->getPositionY()F

    move-result v4

    invoke-interface {v1}, Lcom/mediatek/j3m/Ray;->getPositionZ()F

    move-result v5

    invoke-direct {v13, v3, v4, v5}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    .line 720
    .local v13, rayStart:Lcom/mediatek/ngin3d/Point;
    new-instance v10, Lcom/mediatek/ngin3d/Point;

    invoke-interface {v1}, Lcom/mediatek/j3m/Ray;->getDirectionX()F

    move-result v3

    invoke-interface {v1}, Lcom/mediatek/j3m/Ray;->getDirectionY()F

    move-result v4

    invoke-interface {v1}, Lcom/mediatek/j3m/Ray;->getDirectionZ()F

    move-result v5

    invoke-direct {v10, v3, v4, v5}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    .line 725
    .local v10, rayDirection:Lcom/mediatek/ngin3d/Point;
    invoke-interface {v14}, Lcom/mediatek/j3m/Shape;->getRaycastDistance()F

    move-result v8

    .line 727
    .local v8, distance:F
    new-instance v11, Lcom/mediatek/ngin3d/Point;

    iget v3, v13, Lcom/mediatek/ngin3d/Point;->x:F

    iget v4, v10, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v13, Lcom/mediatek/ngin3d/Point;->y:F

    iget v5, v10, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, v13, Lcom/mediatek/ngin3d/Point;->z:F

    iget v6, v10, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    invoke-direct {v11, v3, v4, v5}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    .line 732
    .local v11, rayHit:Lcom/mediatek/ngin3d/Point;
    new-instance v12, Lcom/mediatek/ngin3d/Point;

    invoke-interface {v14}, Lcom/mediatek/j3m/Shape;->getRaycastNormalX()F

    move-result v3

    invoke-interface {v14}, Lcom/mediatek/j3m/Shape;->getRaycastNormalY()F

    move-result v4

    invoke-interface {v14}, Lcom/mediatek/j3m/Shape;->getRaycastNormalZ()F

    move-result v5

    invoke-direct {v12, v3, v4, v5}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    .line 737
    .local v12, rayHitNormal:Lcom/mediatek/ngin3d/Point;
    invoke-virtual {v9, v13, v10, v11, v12}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->setRay(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V

    goto/16 :goto_0

    .line 684
    .end local v2           #camera:Lcom/mediatek/j3m/Camera;
    .end local v7           #actorPresentation:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    .end local v8           #distance:F
    .end local v9           #nearest:Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
    .end local v10           #rayDirection:Lcom/mediatek/ngin3d/Point;
    .end local v11           #rayHit:Lcom/mediatek/ngin3d/Point;
    .end local v12           #rayHitNormal:Lcom/mediatek/ngin3d/Point;
    .end local v13           #rayStart:Lcom/mediatek/ngin3d/Point;
    .end local v14           #shape:Lcom/mediatek/j3m/Shape;
    .end local v15           #subActorPresentation:Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;
    .restart local p2
    :cond_2
    check-cast p2, Lcom/mediatek/ngin3d/j3m/LayerPresentation;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->getCamera()Lcom/mediatek/j3m/Camera;

    move-result-object v2

    .restart local v2       #camera:Lcom/mediatek/j3m/Camera;
    goto/16 :goto_1

    .line 711
    .restart local v7       #actorPresentation:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    .restart local v9       #nearest:Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
    .restart local v15       #subActorPresentation:Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;
    :cond_3
    invoke-virtual {v15}, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->getShape()Lcom/mediatek/j3m/Shape;

    move-result-object v14

    .restart local v14       #shape:Lcom/mediatek/j3m/Shape;
    goto :goto_2
.end method

.method public initialize(Ljava/lang/Object;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onInitialize()V

    .line 112
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mOwner:Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public isDynamic()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterialDirty:Z

    if-eqz v0, :cond_0

    .line 482
    iput-boolean v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterial:Z

    .line 483
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->updateHasDynamicMaterial(Lcom/mediatek/j3m/SceneNode;)V

    .line 484
    iput-boolean v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterialDirty:Z

    .line 487
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterial:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyOfParentOpacity(F)V
    .locals 0
    .parameter "opacity"

    .prologue
    .line 634
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mParentOpacity:F

    .line 635
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->updateOpacity()V

    .line 636
    return-void
.end method

.method protected onInitialize()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    .line 119
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRootNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 123
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    .line 124
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setSceneNode(Lcom/mediatek/j3m/SceneNode;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected onUninitialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mParent:Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mParent:Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->removeChild(Lcom/mediatek/ngin3d/presentation/Presentation;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 162
    :cond_1
    iput-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    .line 163
    iput-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    .line 164
    iput-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    .line 165
    iput-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    .line 166
    iput-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mOwner:Ljava/lang/Object;

    .line 167
    iput-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public removeAllChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 875
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    .line 876
    .local v0, actorPresentation:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    iget-object v2, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v2, v3}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 877
    iput-object v3, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mParent:Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    goto :goto_0

    .line 880
    .end local v0           #actorPresentation:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 881
    return-void
.end method

.method public removeChild(Lcom/mediatek/ngin3d/presentation/Presentation;)V
    .locals 3
    .parameter "presentation"

    .prologue
    const/4 v2, 0x0

    .line 861
    sget-boolean v1, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 862
    check-cast v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    .line 865
    .local v0, actorPresentation:Lcom/mediatek/ngin3d/j3m/ActorPresentation;
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v1, v2}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 867
    iput-object v2, v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mParent:Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    .line 869
    :cond_1
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->requestRender()V

    .line 1045
    return-void
.end method

.method public setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V
    .locals 4
    .parameter "point"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mAnchorSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget v1, p1, Lcom/mediatek/ngin3d/Point;->x:F

    neg-float v1, v1

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->y:F

    neg-float v2, v2

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->z:F

    neg-float v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/SceneNode;->setPosition(FFF)V

    .line 563
    return-void
.end method

.method public setColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 7
    .parameter "color"

    .prologue
    const/high16 v6, 0x437f

    .line 588
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mColor:Lcom/mediatek/ngin3d/Color;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/Color;->set(Lcom/mediatek/ngin3d/Color;)V

    .line 590
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget v2, p1, Lcom/mediatek/ngin3d/Color;->red:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, p1, Lcom/mediatek/ngin3d/Color;->green:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p1, Lcom/mediatek/ngin3d/Color;->blue:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v5, p1, Lcom/mediatek/ngin3d/Color;->alpha:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ngin3d/j3m/Utility;->setColorRecursive(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/SceneNode;FFFF)V

    .line 596
    return-void
.end method

.method public setDisplayArea(Lcom/mediatek/ngin3d/Box;)V
    .locals 7
    .parameter "area"

    .prologue
    .line 1018
    const-class v2, Lcom/mediatek/j3m/Solid;

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    check-cast v1, Lcom/mediatek/j3m/Solid;

    .line 1020
    .local v1, solid:Lcom/mediatek/j3m/Solid;
    invoke-interface {v1}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    .line 1022
    .local v0, appearance:Lcom/mediatek/j3m/Appearance;
    if-nez p1, :cond_1

    .line 1023
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/mediatek/j3m/Appearance;->setScissorTestEnabled(Z)V

    .line 1038
    .end local v0           #appearance:Lcom/mediatek/j3m/Appearance;
    .end local v1           #solid:Lcom/mediatek/j3m/Solid;
    :cond_0
    :goto_0
    return-void

    .line 1030
    .restart local v0       #appearance:Lcom/mediatek/j3m/Appearance;
    .restart local v1       #solid:Lcom/mediatek/j3m/Solid;
    :cond_1
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/mediatek/j3m/Appearance;->setScissorTestEnabled(Z)V

    .line 1031
    iget v2, p1, Lcom/mediatek/ngin3d/Box;->x1:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Lcom/mediatek/ngin3d/Box;->y2:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p1, Lcom/mediatek/ngin3d/Box;->x2:F

    float-to-int v4, v4

    iget v5, p1, Lcom/mediatek/ngin3d/Box;->y2:F

    iget v6, p1, Lcom/mediatek/ngin3d/Box;->y1:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/mediatek/j3m/Appearance;->setScissorRectangle(IIII)V

    goto :goto_0
.end method

.method public setMaterial(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterialDirty:Z

    .line 263
    return-void
.end method

.method public setMaterial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "nodeName"
    .parameter "name"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterialDirty:Z

    .line 274
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;F)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 424
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getTextureCache()Lcom/mediatek/ngin3d/j3m/TextureCache;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/ngin3d/j3m/TextureCache;->getTexture(Landroid/graphics/Bitmap;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v0

    .line 426
    .local v0, texture:Lcom/mediatek/j3m/Texture2D;
    if-eqz v0, :cond_0

    .line 427
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-direct {p0, v1, p1, v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    :cond_0
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "textureName"

    .prologue
    .line 394
    invoke-direct {p0, p2}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v0

    .line 396
    .local v0, texture:Lcom/mediatek/j3m/Texture2D;
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-direct {p0, v1, p1, v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    :cond_0
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 440
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getTextureCache()Lcom/mediatek/ngin3d/j3m/TextureCache;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mediatek/ngin3d/j3m/TextureCache;->getTexture(Landroid/graphics/Bitmap;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v0

    .line 442
    .local v0, texture:Lcom/mediatek/j3m/Texture2D;
    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    :cond_0
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "nodeName"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "textureName"

    .prologue
    .line 410
    invoke-direct {p0, p3}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v0

    .line 412
    .local v0, texture:Lcom/mediatek/j3m/Texture2D;
    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    :cond_0
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterialDirty:Z

    .line 347
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setMaterialPropertyRecursive(Lcom/mediatek/j3m/SceneNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mHasDynamicMaterialDirty:Z

    .line 332
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mName:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setOpacity(I)V
    .locals 2
    .parameter "opacity"

    .prologue
    .line 615
    int-to-float v0, p1

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mOpacity:F

    .line 616
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->updateOpacity()V

    .line 617
    return-void
.end method

.method public setPosition(Lcom/mediatek/ngin3d/Point;)V
    .locals 4
    .parameter "pos"

    .prologue
    .line 176
    iget-boolean v0, p1, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget v1, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/SceneNode;->setPosition(FFF)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget v1, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/SceneNode;->setPosition(FFF)V

    goto :goto_0
.end method

.method public setRenderZOrder(I)V
    .locals 5
    .parameter "zOrder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 969
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRenderLayer:I

    .line 971
    iget v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRenderLayer:I

    if-gez v4, :cond_0

    .line 972
    const/4 v4, 0x4

    iput v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRenderLayer:I

    .line 975
    :cond_0
    iget v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRenderLayer:I

    rsub-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRenderLayer:I

    .line 977
    iget v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRenderLayer:I

    rem-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_1

    move v0, v2

    .line 978
    .local v0, bit0:Z
    :goto_0
    iget v4, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRenderLayer:I

    shr-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_2

    move v1, v2

    .line 980
    .local v1, bit1:Z
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v3

    iget-object v3, v3, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_0:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v2, v3, v0}, Lcom/mediatek/j3m/SceneNode;->setFlags(Lcom/mediatek/j3m/FlagMask;Z)V

    .line 982
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v3

    iget-object v3, v3, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_1:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v2, v3, v1}, Lcom/mediatek/j3m/SceneNode;->setFlags(Lcom/mediatek/j3m/FlagMask;Z)V

    .line 984
    return-void

    .end local v0           #bit0:Z
    .end local v1           #bit1:Z
    :cond_1
    move v0, v3

    .line 977
    goto :goto_0

    .restart local v0       #bit0:Z
    :cond_2
    move v1, v3

    .line 978
    goto :goto_1
.end method

.method public setRotation(Lcom/mediatek/ngin3d/Rotation;)V
    .locals 6
    .parameter "rotation"

    .prologue
    .line 515
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v0

    .line 516
    .local v0, q:Lcom/mediatek/ngin3d/Quaternion;
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v2

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v3

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v4

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/mediatek/j3m/SceneNode;->setRotation(FFFF)V

    .line 517
    return-void
.end method

.method public setScale(Lcom/mediatek/ngin3d/Scale;)V
    .locals 4
    .parameter "scale"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget v1, p1, Lcom/mediatek/ngin3d/Scale;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Scale;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Scale;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/SceneNode;->setScale(FFF)V

    .line 541
    return-void
.end method

.method protected setSceneNode(Lcom/mediatek/j3m/SceneNode;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 936
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mSceneNode:Lcom/mediatek/j3m/SceneNode;

    .line 939
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRenderZOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setRenderZOrder(I)V

    .line 940
    return-void
.end method

.method protected setShape(Lcom/mediatek/j3m/Shape;)V
    .locals 0
    .parameter "shape"

    .prologue
    .line 823
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mShape:Lcom/mediatek/j3m/Shape;

    .line 824
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mRootSceneNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v0, v1, p1}, Lcom/mediatek/j3m/SceneNode;->setFlags(Lcom/mediatek/j3m/FlagMask;Z)V

    .line 216
    return-void
.end method

.method public uninitialize()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onUninitialize()V

    .line 148
    return-void
.end method
