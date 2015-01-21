.class public Lcom/mediatek/ngin3d/Actor;
.super Lcom/mediatek/ngin3d/Base;
.source "Actor.java"


# static fields
.field protected static final FLAG_NORMALIZED:I = 0x1

.field protected static final MAX_OPACITY:I = 0xff

.field public static final PROPNAME_MATERIAL:Ljava/lang/String; = "material"

.field public static final PROPNAME_MATERIAL_PROPERTY_BITMAP:Ljava/lang/String; = "material_property_bitmap"

.field public static final PROPNAME_MATERIAL_PROPERTY_BOOLEAN:Ljava/lang/String; = "material_property_boolean"

.field public static final PROPNAME_MATERIAL_PROPERTY_FLOAT:Ljava/lang/String; = "material_property_float"

.field public static final PROPNAME_MATERIAL_PROPERTY_INT:Ljava/lang/String; = "material_property_int"

.field public static final PROPNAME_MATERIAL_PROPERTY_POINT:Ljava/lang/String; = "material_property_point"

.field public static final PROPNAME_MATERIAL_PROPERTY_TEXTURE:Ljava/lang/String; = "material_property_texture"

.field public static final PROP_COLOR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_DISPLAY_AREA:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Box;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_NAME:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_OPACITY:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_POSITION:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Point;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ROTATION:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Rotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SCALE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Scale;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VISIBLE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "Ngin3d"

.field private static sSerial:I


# instance fields
.field private final mAnimationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ngin3d/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:I

.field private mLayer:Lcom/mediatek/ngin3d/Layer;

.field protected mLockedProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ngin3d/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final mNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ngin3d/ActorNode;",
            ">;"
        }
    .end annotation
.end field

.field protected mOwner:Ljava/lang/Object;

.field protected mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

.field protected mReactive:Z

.field protected mTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 251
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "name"

    const-string v2, "noname"

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_NAME:Lcom/mediatek/ngin3d/Property;

    .line 259
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "rotation"

    new-instance v2, Lcom/mediatek/ngin3d/ImmutableRotation;

    invoke-direct {v2, v5, v5, v5}, Lcom/mediatek/ngin3d/ImmutableRotation;-><init>(FFF)V

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;I[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_ROTATION:Lcom/mediatek/ngin3d/Property;

    .line 268
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "scale"

    new-instance v2, Lcom/mediatek/ngin3d/ImmutableScale;

    invoke-direct {v2, v7, v7, v7}, Lcom/mediatek/ngin3d/ImmutableScale;-><init>(FFF)V

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;I[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_SCALE:Lcom/mediatek/ngin3d/Property;

    .line 277
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "visible"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_VISIBLE:Lcom/mediatek/ngin3d/Property;

    .line 285
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "position"

    new-instance v2, Lcom/mediatek/ngin3d/ImmutablePoint;

    invoke-direct {v2, v5, v5, v5}, Lcom/mediatek/ngin3d/ImmutablePoint;-><init>(FFF)V

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;I[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_POSITION:Lcom/mediatek/ngin3d/Property;

    .line 294
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "color"

    new-array v2, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v8, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    .line 302
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "opacity"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_OPACITY:Lcom/mediatek/ngin3d/Property;

    .line 310
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "display_area"

    new-array v2, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v8, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_DISPLAY_AREA:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Base;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mNodes:Ljava/util/Map;

    .line 1269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    .line 136
    sget v0, Lcom/mediatek/ngin3d/Actor;->sSerial:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/ngin3d/Actor;->sSerial:I

    iput v0, p0, Lcom/mediatek/ngin3d/Actor;->mId:I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/Actor;->mReactive:Z

    .line 138
    return-void
.end method

.method public static animate(ILjava/lang/Runnable;Ljava/lang/Runnable;)Lcom/mediatek/ngin3d/ImplicitAnimation;
    .locals 2
    .parameter "duration"
    .parameter "animations"
    .parameter "completion"

    .prologue
    .line 1382
    :try_start_0
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->beginImplicitAnimation()Lcom/mediatek/ngin3d/ImplicitAnimation;

    move-result-object v0

    .line 1384
    .local v0, animation:Lcom/mediatek/ngin3d/ImplicitAnimation;
    invoke-static {p0}, Lcom/mediatek/ngin3d/Transaction;->setAnimationDuration(I)V

    .line 1385
    invoke-static {p2}, Lcom/mediatek/ngin3d/Transaction;->setCompletion(Ljava/lang/Runnable;)V

    .line 1387
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->commit()V

    .line 1392
    return-object v0

    .line 1389
    .end local v0           #animation:Lcom/mediatek/ngin3d/ImplicitAnimation;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->commit()V

    throw v1
.end method

.method public static animate(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "animations"

    .prologue
    .line 1356
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/ngin3d/Actor;->animate(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1357
    return-void
.end method

.method public static animate(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "animations"
    .parameter "completion"

    .prologue
    .line 1367
    const/16 v0, 0x7d0

    invoke-static {v0, p0, p1}, Lcom/mediatek/ngin3d/Actor;->animate(ILjava/lang/Runnable;Ljava/lang/Runnable;)Lcom/mediatek/ngin3d/ImplicitAnimation;

    .line 1368
    return-void
.end method

.method private checkPropertyLocked(Lcom/mediatek/ngin3d/Property;)V
    .locals 3
    .parameter "property"

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Actor;->isPropertyLocked(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Property"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is locked, can not be modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    return-void
.end method

.method private dirtyActorNodeExists()Z
    .locals 3

    .prologue
    .line 690
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mNodes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/ActorNode;

    .line 691
    .local v1, node:Lcom/mediatek/ngin3d/ActorNode;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/ActorNode;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    const/4 v2, 0x1

    .line 696
    .end local v1           #node:Lcom/mediatek/ngin3d/ActorNode;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getLockProperties()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ngin3d/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mLockedProperties:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mLockedProperties:Ljava/util/ArrayList;

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mLockedProperties:Ljava/util/ArrayList;

    return-object v0
.end method

.method private wrapAnimationGroup(Lcom/mediatek/ngin3d/animation/Animation;)Ljava/lang/String;
    .locals 7
    .parameter "animation"

    .prologue
    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1441
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v5, "Ngin3d"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrapAnimationGroup: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p1

    check-cast v4, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getAnimationCount()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    move-object v4, p1

    check-cast v4, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getAnimationCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    move-object v4, p1

    .line 1444
    check-cast v4, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v4, v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getAnimation(I)Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v0

    .line 1446
    .local v0, ani:Lcom/mediatek/ngin3d/animation/Animation;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    const-string v4, "Ngin3d"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrapAnimationGroup  -- string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const-string v3, ""

    .line 1450
    .local v3, temp:Ljava/lang/String;
    instance-of v4, v0, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    if-eqz v4, :cond_0

    .line 1451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/Actor;->wrapAnimationGroup(Lcom/mediatek/ngin3d/animation/Animation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1457
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1453
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Actor;->wrapSingleAnimation(Lcom/mediatek/ngin3d/animation/Animation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1454
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1455
    invoke-static {v3}, Lcom/mediatek/ngin3d/utils/JSON;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1461
    .end local v0           #ani:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v3           #temp:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1464
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ngin3d/utils/JSON;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1466
    :goto_2
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wrapSingleAnimation(Lcom/mediatek/ngin3d/animation/Animation;)Ljava/lang/String;
    .locals 4
    .parameter "animation"

    .prologue
    .line 1471
    const-string v0, ""

    .line 1473
    .local v0, property:Ljava/lang/String;
    instance-of v1, p1, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    if-eqz v1, :cond_0

    .line 1474
    const-string v2, "Ngin3d"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrapSingleAnimation  -- getPropertyName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/ngin3d/Actor;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AutoReverse"

    move-object v1, p1

    check-cast v1, Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getAutoReverse()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ngin3d/Actor;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Loop"

    move-object v1, p1

    check-cast v1, Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getLoop()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ngin3d/Actor;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Duration"

    move-object v1, p1

    check-cast v1, Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ngin3d/Actor;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Direction"

    move-object v1, p1

    check-cast v1, Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDirection()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ngin3d/Actor;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TimeScale"

    check-cast p1, Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getTimeScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ngin3d/Actor;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected applyBatchValues()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 16
    .parameter "property"
    .parameter "value"

    .prologue
    .line 376
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/mediatek/ngin3d/KeyPathProperty;

    if-eqz v14, :cond_16

    move-object/from16 v3, p1

    .line 377
    check-cast v3, Lcom/mediatek/ngin3d/KeyPathProperty;

    .line 378
    .local v3, kp:Lcom/mediatek/ngin3d/KeyPathProperty;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/mediatek/ngin3d/KeyPathProperty;->getKey(I)Ljava/lang/String;

    move-result-object v11

    .line 379
    .local v11, propertyName:Ljava/lang/String;
    const-string v8, ""

    .line 386
    .local v8, nodeName:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/KeyPathProperty;->getKeyPathLength()I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_0

    .line 387
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ngin3d/KeyPathProperty;->getKey(I)Ljava/lang/String;

    move-result-object v8

    .line 390
    :cond_0
    const-string v14, "material"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 391
    if-eqz p2, :cond_1

    move-object/from16 v6, p2

    .line 392
    check-cast v6, Ljava/lang/String;

    .line 393
    .local v6, materialName:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v6}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterial(Ljava/lang/String;)V

    .line 399
    .end local v6           #materialName:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v14, 0x1

    .line 525
    .end local v3           #kp:Lcom/mediatek/ngin3d/KeyPathProperty;
    .end local v8           #nodeName:Ljava/lang/String;
    .end local v11           #propertyName:Ljava/lang/String;
    :goto_1
    return v14

    .line 396
    .restart local v3       #kp:Lcom/mediatek/ngin3d/KeyPathProperty;
    .restart local v6       #materialName:Ljava/lang/String;
    .restart local v8       #nodeName:Ljava/lang/String;
    .restart local v11       #propertyName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v8, v6}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterial(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    .end local v6           #materialName:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/KeyPathProperty;->getKeyPathLength()I

    move-result v14

    const/4 v15, 0x3

    if-ge v14, v15, :cond_4

    .line 403
    const/4 v14, 0x0

    goto :goto_1

    .line 406
    :cond_4
    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Lcom/mediatek/ngin3d/KeyPathProperty;->getKey(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, matPropName:Ljava/lang/String;
    const-string v14, "material_property_int"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 409
    if-eqz p2, :cond_5

    move-object/from16 v5, p2

    .line 410
    check-cast v5, Ljava/lang/Integer;

    .line 411
    .local v5, matPropValue:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v4, v15}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;I)V

    .line 419
    .end local v5           #matPropValue:Ljava/lang/Integer;
    :cond_5
    :goto_2
    const/4 v14, 0x1

    goto :goto_1

    .line 415
    .restart local v5       #matPropValue:Ljava/lang/Integer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v8, v4, v15}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 421
    .end local v5           #matPropValue:Ljava/lang/Integer;
    :cond_7
    const-string v14, "material_property_float"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 422
    if-eqz p2, :cond_8

    move-object/from16 v5, p2

    .line 423
    check-cast v5, Ljava/lang/Float;

    .line 424
    .local v5, matPropValue:Ljava/lang/Float;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-interface {v14, v4, v15}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;F)V

    .line 432
    .end local v5           #matPropValue:Ljava/lang/Float;
    :cond_8
    :goto_3
    const/4 v14, 0x1

    goto :goto_1

    .line 428
    .restart local v5       #matPropValue:Ljava/lang/Float;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-interface {v14, v8, v4, v15}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_3

    .line 434
    .end local v5           #matPropValue:Ljava/lang/Float;
    :cond_a
    const-string v14, "material_property_boolean"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 436
    if-eqz p2, :cond_b

    move-object/from16 v5, p2

    .line 437
    check-cast v5, Ljava/lang/Boolean;

    .line 438
    .local v5, matPropValue:Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-interface {v14, v4, v15}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Z)V

    .line 446
    .end local v5           #matPropValue:Ljava/lang/Boolean;
    :cond_b
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 442
    .restart local v5       #matPropValue:Ljava/lang/Boolean;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-interface {v14, v8, v4, v15}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 448
    .end local v5           #matPropValue:Ljava/lang/Boolean;
    :cond_d
    const-string v14, "material_property_point"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 449
    if-eqz p2, :cond_e

    move-object/from16 v5, p2

    .line 450
    check-cast v5, Lcom/mediatek/ngin3d/Point;

    .line 451
    .local v5, matPropValue:Lcom/mediatek/ngin3d/Point;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v4, v5}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Lcom/mediatek/ngin3d/Point;)V

    .line 459
    .end local v5           #matPropValue:Lcom/mediatek/ngin3d/Point;
    :cond_e
    :goto_5
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 455
    .restart local v5       #matPropValue:Lcom/mediatek/ngin3d/Point;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v8, v4, v5}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/ngin3d/Point;)V

    goto :goto_5

    .line 461
    .end local v5           #matPropValue:Lcom/mediatek/ngin3d/Point;
    :cond_10
    const-string v14, "material_property_texture"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 463
    if-eqz p2, :cond_11

    move-object/from16 v5, p2

    .line 464
    check-cast v5, Ljava/lang/String;

    .line 465
    .local v5, matPropValue:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 466
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v4, v5}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .end local v5           #matPropValue:Ljava/lang/String;
    :cond_11
    :goto_6
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 469
    .restart local v5       #matPropValue:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v8, v4, v5}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 475
    .end local v5           #matPropValue:Ljava/lang/String;
    :cond_13
    const-string v14, "material_property_bitmap"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 477
    if-eqz p2, :cond_14

    move-object/from16 v5, p2

    .line 478
    check-cast v5, Landroid/graphics/Bitmap;

    .line 479
    .local v5, matPropValue:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v4, v5}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 487
    .end local v5           #matPropValue:Landroid/graphics/Bitmap;
    :cond_14
    :goto_7
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 483
    .restart local v5       #matPropValue:Landroid/graphics/Bitmap;
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v8, v4, v5}, Lcom/mediatek/ngin3d/presentation/Presentation;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_7

    .line 490
    .end local v3           #kp:Lcom/mediatek/ngin3d/KeyPathProperty;
    .end local v4           #matPropName:Ljava/lang/String;
    .end local v5           #matPropValue:Landroid/graphics/Bitmap;
    .end local v8           #nodeName:Ljava/lang/String;
    .end local v11           #propertyName:Ljava/lang/String;
    :cond_16
    sget-object v14, Lcom/mediatek/ngin3d/Actor;->PROP_POSITION:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v10, p2

    .line 491
    check-cast v10, Lcom/mediatek/ngin3d/Point;

    .line 492
    .local v10, pos:Lcom/mediatek/ngin3d/Point;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v10}, Lcom/mediatek/ngin3d/presentation/Presentation;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 493
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 494
    .end local v10           #pos:Lcom/mediatek/ngin3d/Point;
    :cond_17
    sget-object v14, Lcom/mediatek/ngin3d/Actor;->PROP_ROTATION:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v12, p2

    .line 495
    check-cast v12, Lcom/mediatek/ngin3d/Rotation;

    .line 496
    .local v12, rotation:Lcom/mediatek/ngin3d/Rotation;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v12}, Lcom/mediatek/ngin3d/presentation/Presentation;->setRotation(Lcom/mediatek/ngin3d/Rotation;)V

    .line 497
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 498
    .end local v12           #rotation:Lcom/mediatek/ngin3d/Rotation;
    :cond_18
    sget-object v14, Lcom/mediatek/ngin3d/Actor;->PROP_SCALE:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v13, p2

    .line 499
    check-cast v13, Lcom/mediatek/ngin3d/Scale;

    .line 500
    .local v13, scale:Lcom/mediatek/ngin3d/Scale;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v13}, Lcom/mediatek/ngin3d/presentation/Presentation;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    .line 501
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 502
    .end local v13           #scale:Lcom/mediatek/ngin3d/Scale;
    :cond_19
    sget-object v14, Lcom/mediatek/ngin3d/Actor;->PROP_VISIBLE:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-static/range {p2 .. p2}, Lcom/mediatek/ngin3d/Actor;->asBoolean(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v14, v15}, Lcom/mediatek/ngin3d/presentation/Presentation;->setVisible(Z)V

    .line 504
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 505
    :cond_1a
    sget-object v14, Lcom/mediatek/ngin3d/Actor;->PROP_NAME:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v14

    if-eqz v14, :cond_1b

    move-object/from16 v7, p2

    .line 506
    check-cast v7, Ljava/lang/String;

    .line 507
    .local v7, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v7}, Lcom/mediatek/ngin3d/presentation/Presentation;->setName(Ljava/lang/String;)V

    .line 508
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 509
    .end local v7           #name:Ljava/lang/String;
    :cond_1b
    sget-object v14, Lcom/mediatek/ngin3d/Actor;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 510
    if-eqz p2, :cond_1c

    move-object/from16 v2, p2

    .line 511
    check-cast v2, Lcom/mediatek/ngin3d/Color;

    .line 512
    .local v2, color:Lcom/mediatek/ngin3d/Color;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v2}, Lcom/mediatek/ngin3d/presentation/Presentation;->setColor(Lcom/mediatek/ngin3d/Color;)V

    .line 514
    .end local v2           #color:Lcom/mediatek/ngin3d/Color;
    :cond_1c
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 515
    :cond_1d
    sget-object v14, Lcom/mediatek/ngin3d/Actor;->PROP_OPACITY:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v14

    if-eqz v14, :cond_1e

    move-object/from16 v9, p2

    .line 516
    check-cast v9, Ljava/lang/Integer;

    .line 517
    .local v9, opacity:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/mediatek/ngin3d/presentation/Presentation;->setOpacity(I)V

    .line 518
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 519
    .end local v9           #opacity:Ljava/lang/Integer;
    :cond_1e
    sget-object v14, Lcom/mediatek/ngin3d/Actor;->PROP_DISPLAY_AREA:Lcom/mediatek/ngin3d/Property;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v14

    if-eqz v14, :cond_1f

    move-object/from16 v1, p2

    .line 520
    check-cast v1, Lcom/mediatek/ngin3d/Box;

    .line 521
    .local v1, area:Lcom/mediatek/ngin3d/Box;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v14, v1}, Lcom/mediatek/ngin3d/presentation/Presentation;->setDisplayArea(Lcom/mediatek/ngin3d/Box;)V

    .line 522
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 525
    .end local v1           #area:Lcom/mediatek/ngin3d/Box;
    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 2
    .parameter "engine"

    .prologue
    .line 217
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v1, "Should be overrided to create Presentation object"

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->dumpProperties(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpAnimation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1412
    .local v2, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1413
    .local v4, index:I
    iget-object v6, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1414
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1415
    .local v1, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 1416
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    const-string v5, ""

    .line 1418
    .local v5, temp:Ljava/lang/String;
    instance-of v6, v0, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    if-eqz v6, :cond_0

    .line 1419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/Actor;->wrapAnimationGroup(Lcom/mediatek/ngin3d/animation/Animation;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1425
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    add-int/lit8 v4, v4, 0x1

    .line 1428
    goto :goto_0

    .line 1421
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/Actor;->wrapSingleAnimation(Lcom/mediatek/ngin3d/animation/Animation;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1422
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1423
    invoke-static {v5}, Lcom/mediatek/ngin3d/utils/JSON;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1431
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #temp:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/ngin3d/utils/JSON;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1436
    :goto_2
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public bridge synthetic dumpProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/mediatek/ngin3d/Base;->dumpProperties()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dumpProperties(Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->dumpProperties(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finishAnimations()V
    .locals 5

    .prologue
    .line 1324
    iget-object v3, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 1325
    iget-object v4, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    monitor-enter v4

    .line 1326
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1327
    .local v1, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 1328
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->complete()Lcom/mediatek/ngin3d/animation/Animation;

    goto :goto_0

    .line 1330
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1332
    .end local v1           #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getColor()Lcom/mediatek/ngin3d/Color;
    .locals 2

    .prologue
    .line 1056
    sget-object v1, Lcom/mediatek/ngin3d/Actor;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Color;

    .line 1058
    .local v0, value:Lcom/mediatek/ngin3d/Color;
    if-nez v0, :cond_0

    .line 1059
    sget-object v0, Lcom/mediatek/ngin3d/Color;->WHITE:Lcom/mediatek/ngin3d/Color;

    .line 1062
    :cond_0
    return-object v0
.end method

.method public getDisplayArea()Lcom/mediatek/ngin3d/Box;
    .locals 1

    .prologue
    .line 1113
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_DISPLAY_AREA:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Box;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/mediatek/ngin3d/Actor;->mId:I

    return v0
.end method

.method public bridge synthetic getKeyPathValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->getKeyPathValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLayer()Lcom/mediatek/ngin3d/Layer;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mLayer:Lcom/mediatek/ngin3d/Layer;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 718
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_NAME:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNode()Lcom/mediatek/ngin3d/ActorNode;
    .locals 1

    .prologue
    .line 1244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getNode(Ljava/lang/String;)Lcom/mediatek/ngin3d/ActorNode;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;)Lcom/mediatek/ngin3d/ActorNode;
    .locals 2
    .parameter "nodeName"

    .prologue
    .line 1256
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mNodes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/ActorNode;

    .line 1258
    .local v0, node:Lcom/mediatek/ngin3d/ActorNode;
    if-nez v0, :cond_0

    .line 1259
    new-instance v0, Lcom/mediatek/ngin3d/ActorNode;

    .end local v0           #node:Lcom/mediatek/ngin3d/ActorNode;
    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/ActorNode;-><init>(Ljava/lang/String;)V

    .line 1260
    .restart local v0       #node:Lcom/mediatek/ngin3d/ActorNode;
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mNodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    :cond_0
    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1091
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_OPACITY:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOwner()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mOwner:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()Lcom/mediatek/ngin3d/Point;
    .locals 6

    .prologue
    .line 738
    sget-object v2, Lcom/mediatek/ngin3d/Actor;->PROP_POSITION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Point;

    .line 740
    .local v0, point:Lcom/mediatek/ngin3d/Point;
    instance-of v2, v0, Lcom/mediatek/ngin3d/ImmutablePoint;

    if-eqz v2, :cond_0

    .line 741
    new-instance v1, Lcom/mediatek/ngin3d/Point;

    iget v2, v0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v3, v0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v4, v0, Lcom/mediatek/ngin3d/Point;->z:F

    iget-boolean v5, v0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/ngin3d/Point;-><init>(FFFZ)V

    .line 742
    .end local v0           #point:Lcom/mediatek/ngin3d/Point;
    .local v1, point:Lcom/mediatek/ngin3d/Point;
    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    move-object v0, v1

    .line 744
    .end local v1           #point:Lcom/mediatek/ngin3d/Point;
    .restart local v0       #point:Lcom/mediatek/ngin3d/Point;
    :cond_0
    return-object v0
.end method

.method public getPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    return-object v0
.end method

.method public getPresentationValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;
    .locals 1
    .parameter "property"

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ngin3d/Actor;->getPresentationValue(Lcom/mediatek/ngin3d/Property;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPresentationValue(Lcom/mediatek/ngin3d/Property;I)Ljava/lang/Object;
    .locals 4
    .parameter "property"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .line 562
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-nez v1, :cond_0

    .line 578
    :goto_0
    return-object v0

    .line 566
    :cond_0
    sget-object v1, Lcom/mediatek/ngin3d/Actor;->PROP_POSITION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/mediatek/ngin3d/presentation/Presentation;->getPosition(Z)Lcom/mediatek/ngin3d/Point;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 568
    :cond_2
    sget-object v1, Lcom/mediatek/ngin3d/Actor;->PROP_ROTATION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/Presentation;->getRotation()Lcom/mediatek/ngin3d/Rotation;

    move-result-object v0

    goto :goto_0

    .line 570
    :cond_3
    sget-object v1, Lcom/mediatek/ngin3d/Actor;->PROP_SCALE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 571
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/Presentation;->getScale()Lcom/mediatek/ngin3d/Scale;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_4
    sget-object v1, Lcom/mediatek/ngin3d/Actor;->PROP_VISIBLE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v1}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 573
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/Presentation;->getVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_5
    const-string v1, "Ngin3d"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown property name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;

    move-result-object v0

    return-object v0
.end method

.method public getReactive()Z
    .locals 1

    .prologue
    .line 994
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/Actor;->mReactive:Z

    return v0
.end method

.method public getRotation()Lcom/mediatek/ngin3d/Rotation;
    .locals 1

    .prologue
    .line 954
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_ROTATION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Rotation;

    return-object v0
.end method

.method public getScale()Lcom/mediatek/ngin3d/Scale;
    .locals 1

    .prologue
    .line 973
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_SCALE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Scale;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/mediatek/ngin3d/Actor;->mTag:I

    return v0
.end method

.method public getTrulyVisible()Z
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-nez v0, :cond_0

    .line 780
    const/4 v0, 0x0

    .line 782
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/Presentation;->getTrulyVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 766
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_VISIBLE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hitTest(Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Actor;
    .locals 2
    .parameter "screenPoint"

    .prologue
    .line 1189
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Actor;->hitTestFull(Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/HitTestResult;

    move-result-object v0

    .line 1190
    .local v0, result:Lcom/mediatek/ngin3d/HitTestResult;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/HitTestResult;->getActor()Lcom/mediatek/ngin3d/Actor;

    move-result-object v1

    return-object v1
.end method

.method public hitTestFull(Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/HitTestResult;
    .locals 12
    .parameter "screenPoint"

    .prologue
    const/4 v3, 0x0

    .line 1201
    new-instance v0, Lcom/mediatek/ngin3d/HitTestResult;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/HitTestResult;-><init>()V

    .line 1203
    .local v0, result:Lcom/mediatek/ngin3d/HitTestResult;
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-eqz v1, :cond_3

    .line 1204
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->getLayer()Lcom/mediatek/ngin3d/Layer;

    move-result-object v9

    .line 1205
    .local v9, layer:Lcom/mediatek/ngin3d/Layer;
    if-nez v9, :cond_0

    move-object v11, v3

    .line 1207
    .local v11, renderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v1, p1, v11}, Lcom/mediatek/ngin3d/presentation/Presentation;->hitTest(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/presentation/RenderLayer;)Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;

    move-result-object v8

    .line 1210
    .local v8, hit:Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
    invoke-virtual {v8}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getActorPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v7

    .line 1211
    .local v7, actorPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;
    if-eqz v7, :cond_2

    .line 1212
    invoke-interface {v7}, Lcom/mediatek/ngin3d/presentation/Presentation;->getOwner()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ngin3d/Actor;

    .line 1214
    .local v6, actor:Lcom/mediatek/ngin3d/Actor;
    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/Actor;->getReactive()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v6, p0, :cond_1

    .line 1215
    invoke-virtual {v6}, Lcom/mediatek/ngin3d/Actor;->getOwner()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #actor:Lcom/mediatek/ngin3d/Actor;
    check-cast v6, Lcom/mediatek/ngin3d/Actor;

    .restart local v6       #actor:Lcom/mediatek/ngin3d/Actor;
    goto :goto_1

    .line 1205
    .end local v6           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v7           #actorPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;
    .end local v8           #hit:Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
    .end local v11           #renderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;
    :cond_0
    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Layer;->getRenderLayer()Lcom/mediatek/ngin3d/presentation/RenderLayer;

    move-result-object v11

    goto :goto_0

    .line 1218
    .restart local v6       #actor:Lcom/mediatek/ngin3d/Actor;
    .restart local v7       #actorPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;
    .restart local v8       #hit:Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
    .restart local v11       #renderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;
    :cond_1
    invoke-virtual {v0, v6}, Lcom/mediatek/ngin3d/HitTestResult;->setActor(Lcom/mediatek/ngin3d/Actor;)V

    .line 1221
    invoke-virtual {v8}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getActorNodePresentation()Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    move-result-object v10

    .line 1222
    .local v10, nodePresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;
    if-eqz v10, :cond_2

    .line 1223
    invoke-interface {v10}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/ActorNode;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/HitTestResult;->setNode(Lcom/mediatek/ngin3d/ActorNode;)V

    .line 1227
    .end local v6           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v10           #nodePresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;
    :cond_2
    invoke-virtual {v8}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getRayStart()Lcom/mediatek/ngin3d/Point;

    move-result-object v1

    invoke-virtual {v8}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getRayDirection()Lcom/mediatek/ngin3d/Point;

    move-result-object v2

    invoke-virtual {v8}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getRayHit()Lcom/mediatek/ngin3d/Point;

    move-result-object v4

    invoke-virtual {v8}, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->getRayHitNormal()Lcom/mediatek/ngin3d/Point;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ngin3d/HitTestResult;->setRay(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V

    .line 1235
    .end local v7           #actorPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;
    .end local v8           #hit:Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
    .end local v9           #layer:Lcom/mediatek/ngin3d/Layer;
    .end local v11           #renderLayer:Lcom/mediatek/ngin3d/presentation/RenderLayer;
    :cond_3
    return-object v0
.end method

.method public isAnimationStarted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1340
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1341
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    monitor-enter v1

    .line 1342
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    .line 1345
    :cond_1
    return v0

    .line 1343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Base;->dirtyValueExists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/Presentation;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;->dirtyActorNodeExists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyLocked(Lcom/mediatek/ngin3d/Property;)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mLockedProperties:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mLockedProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRealized()Z
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs lockProperty([Lcom/mediatek/ngin3d/Property;)V
    .locals 2
    .parameter "properties"

    .prologue
    .line 1005
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;->getLockProperties()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1006
    return-void
.end method

.method protected notifyOfLayer(Lcom/mediatek/ngin3d/Layer;)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mediatek/ngin3d/Actor;->mLayer:Lcom/mediatek/ngin3d/Layer;

    .line 195
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/String;Lcom/mediatek/ngin3d/animation/Animation;)V
    .locals 3
    .parameter "key"
    .parameter "animation"

    .prologue
    .line 1280
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    monitor-enter v2

    .line 1281
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 1282
    .local v0, existing:Lcom/mediatek/ngin3d/animation/Animation;
    if-eq v0, p2, :cond_1

    .line 1283
    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->stop()Lcom/mediatek/ngin3d/animation/Animation;

    .line 1286
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    :cond_1
    monitor-exit v2

    .line 1289
    return-void

    .line 1288
    .end local v0           #existing:Lcom/mediatek/ngin3d/animation/Animation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAnimationStopped(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    monitor-enter v1

    .line 1300
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    monitor-exit v1

    .line 1303
    :cond_0
    return-void

    .line 1301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V
    .locals 3
    .parameter "presentationEngine"

    .prologue
    .line 1126
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-nez v2, :cond_0

    .line 1127
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Actor;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    .line 1128
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v2, p0}, Lcom/mediatek/ngin3d/presentation/Presentation;->initialize(Ljava/lang/Object;)V

    .line 1131
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Base;->applyAllKeyPathProperties()V

    .line 1136
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Base;->applyAllProperties()V

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Base;->applyAllDirtyValues()V

    .line 1144
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->refreshState()V

    .line 1147
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mNodes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/ActorNode;

    .line 1148
    .local v1, node:Lcom/mediatek/ngin3d/ActorNode;
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/ActorNode;->realize(Lcom/mediatek/ngin3d/presentation/Presentation;)V

    goto :goto_0

    .line 1150
    .end local v1           #node:Lcom/mediatek/ngin3d/ActorNode;
    :cond_1
    return-void
.end method

.method protected refreshState()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/Presentation;->requestRender()V

    .line 669
    :cond_0
    return-void
.end method

.method public setColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1047
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 1048
    return-void
.end method

.method public setDisplayArea(Lcom/mediatek/ngin3d/Box;)V
    .locals 1
    .parameter "area"

    .prologue
    .line 1104
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_DISPLAY_AREA:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 1105
    return-void
.end method

.method public setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "keyPath"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 653
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Base;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->requestRender()V

    .line 655
    const/4 v0, 0x1

    .line 657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaterial(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 794
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setMaterial(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public setMaterial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"

    .prologue
    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "material."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ngin3d/Actor;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 809
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;F)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 841
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;F)V

    .line 842
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 818
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;I)V

    .line 819
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 887
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/ngin3d/Point;)V

    .line 888
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "textureName"

    .prologue
    .line 910
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "material_property_float."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 855
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "material_property_int."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 831
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "material_property_bitmap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ngin3d/Actor;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 937
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/ngin3d/Point;)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "material_property_point."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ngin3d/Actor;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 900
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "textureName"

    .prologue
    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "material_property_texture."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ngin3d/Actor;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 924
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "nodeName"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "material_property_boolean."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 878
    return-void
.end method

.method public setMaterialProperty(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 864
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->setMaterialProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 865
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 709
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_NAME:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 710
    return-void
.end method

.method public setOpacity(I)V
    .locals 3
    .parameter "opacity"

    .prologue
    .line 1079
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1080
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid opacity value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_1
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_OPACITY:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 1083
    return-void
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mediatek/ngin3d/Actor;->mOwner:Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public setPosition(Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 729
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_POSITION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 730
    return-void
.end method

.method protected setPropertyChain(Lcom/mediatek/ngin3d/Base$PropertyChain;)V
    .locals 0
    .parameter "chain"

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->setPropertyChain(Lcom/mediatek/ngin3d/Base$PropertyChain;)V

    .line 226
    return-void
.end method

.method public setReactive(Z)V
    .locals 0
    .parameter "reactive"

    .prologue
    .line 985
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/Actor;->mReactive:Z

    .line 986
    return-void
.end method

.method public setRotation(Lcom/mediatek/ngin3d/Rotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 945
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_ROTATION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 946
    return-void
.end method

.method public setScale(Lcom/mediatek/ngin3d/Scale;)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 964
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_SCALE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 965
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 156
    iput p1, p0, Lcom/mediatek/ngin3d/Actor;->mTag:I

    .line 157
    return-void
.end method

.method public final setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/ngin3d/Property",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public final setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/ngin3d/Property",
            "<TT;>;TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Actor;->checkPropertyLocked(Lcom/mediatek/ngin3d/Property;)V

    .line 624
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/Base;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->requestRender()V

    .line 626
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/ngin3d/Property",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Actor;->checkPropertyLocked(Lcom/mediatek/ngin3d/Property;)V

    .line 600
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->getActive()Lcom/mediatek/ngin3d/Transaction;

    move-result-object v0

    .line 601
    .local v0, transaction:Lcom/mediatek/ngin3d/Transaction;
    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v1

    .line 607
    :goto_0
    return v1

    .line 605
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z

    .line 606
    invoke-virtual {v0, p0, p1, p2}, Lcom/mediatek/ngin3d/Transaction;->addPropertyModification(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)V

    .line 607
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 757
    sget-object v0, Lcom/mediatek/ngin3d/Actor;->PROP_VISIBLE:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValueInTransaction(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 758
    return-void
.end method

.method public stopAnimations()V
    .locals 5

    .prologue
    .line 1309
    iget-object v3, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 1310
    iget-object v4, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    monitor-enter v4

    .line 1311
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/ngin3d/Actor;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1312
    .local v1, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 1313
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->stop()Lcom/mediatek/ngin3d/animation/Animation;

    goto :goto_0

    .line 1315
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    .end local v1           #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/ngin3d/animation/Animation;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Actor{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Actor;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Actor;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReactive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/Actor;->mReactive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touchProperty(Lcom/mediatek/ngin3d/Property;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->touchProperty(Lcom/mediatek/ngin3d/Property;)V

    return-void
.end method

.method public bridge synthetic touchProperty(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->touchProperty(Ljava/lang/String;)V

    return-void
.end method

.method public varargs unlockProperty([Lcom/mediatek/ngin3d/Property;)V
    .locals 2
    .parameter "properties"

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;->getLockProperties()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 1017
    return-void
.end method

.method public unrealize()V
    .locals 3

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->finishAnimations()V

    .line 1171
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mNodes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/ActorNode;

    .line 1172
    .local v1, node:Lcom/mediatek/ngin3d/ActorNode;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/ActorNode;->unrealize()V

    goto :goto_0

    .line 1175
    .end local v1           #node:Lcom/mediatek/ngin3d/ActorNode;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-eqz v2, :cond_1

    .line 1176
    iget-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-interface {v2}, Lcom/mediatek/ngin3d/presentation/Presentation;->uninitialize()V

    .line 1177
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    .line 1179
    :cond_1
    return-void
.end method
