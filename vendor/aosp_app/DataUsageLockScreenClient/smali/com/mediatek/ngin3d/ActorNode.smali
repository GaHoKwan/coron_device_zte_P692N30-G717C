.class public Lcom/mediatek/ngin3d/ActorNode;
.super Lcom/mediatek/ngin3d/Base;
.source "ActorNode.java"


# static fields
.field public static final PROP_COLLISION_POSITION:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Point;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLLISION_ROTATION:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Rotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLLISION_SCALE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Scale;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLLISION_SHAPE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLLISION_VISIBLE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private static final TAG:Ljava/lang/String; = "ActorNode"


# instance fields
.field private final mNodeName:Ljava/lang/String;

.field private mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

.field private mTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "position"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_POSITION:Lcom/mediatek/ngin3d/Property;

    .line 84
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "rotation"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_ROTATION:Lcom/mediatek/ngin3d/Property;

    .line 91
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "scale"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_SCALE:Lcom/mediatek/ngin3d/Property;

    .line 98
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "visible"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_VISIBLE:Lcom/mediatek/ngin3d/Property;

    .line 105
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "color"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    .line 112
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "opacity"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_OPACITY:Lcom/mediatek/ngin3d/Property;

    .line 119
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "collision_shape"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_SHAPE:Lcom/mediatek/ngin3d/Property;

    .line 126
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "collision_position"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_POSITION:Lcom/mediatek/ngin3d/Property;

    .line 133
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "collision_rotation"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_ROTATION:Lcom/mediatek/ngin3d/Property;

    .line 140
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "collision_scale"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_SCALE:Lcom/mediatek/ngin3d/Property;

    .line 147
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "collision_visible"

    new-array v2, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_VISIBLE:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "nodeName"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Base;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/mediatek/ngin3d/ActorNode;->mNodeName:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method protected applyBatchValues()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 2
    .parameter "property"
    .parameter "value"

    .prologue
    .line 193
    if-eqz p2, :cond_0

    .line 194
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_POSITION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Lcom/mediatek/ngin3d/Point;

    .end local p2
    invoke-interface {v0, p2}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 221
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 196
    .restart local p2
    :cond_1
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_ROTATION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Lcom/mediatek/ngin3d/Rotation;

    .end local p2
    invoke-interface {v0, p2}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setRotation(Lcom/mediatek/ngin3d/Rotation;)V

    goto :goto_0

    .line 198
    .restart local p2
    :cond_2
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_SCALE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Lcom/mediatek/ngin3d/Scale;

    .end local p2
    invoke-interface {v0, p2}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    goto :goto_0

    .line 200
    .restart local p2
    :cond_3
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_VISIBLE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setVisible(Z)V

    goto :goto_0

    .line 202
    .restart local p2
    :cond_4
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Lcom/mediatek/ngin3d/Color;

    .end local p2
    invoke-interface {v0, p2}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setColor(Lcom/mediatek/ngin3d/Color;)V

    goto :goto_0

    .line 204
    .restart local p2
    :cond_5
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_OPACITY:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setOpacity(I)V

    goto :goto_0

    .line 206
    .restart local p2
    :cond_6
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_SHAPE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setCollisionShape(I)V

    goto :goto_0

    .line 208
    .restart local p2
    :cond_7
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_POSITION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Lcom/mediatek/ngin3d/Point;

    .end local p2
    invoke-interface {v0, p2}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setCollisionPosition(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_0

    .line 210
    .restart local p2
    :cond_8
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_ROTATION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Lcom/mediatek/ngin3d/Rotation;

    .end local p2
    invoke-interface {v0, p2}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setCollisionRotation(Lcom/mediatek/ngin3d/Rotation;)V

    goto/16 :goto_0

    .line 212
    .restart local p2
    :cond_9
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_SCALE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 213
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Lcom/mediatek/ngin3d/Scale;

    .end local p2
    invoke-interface {v0, p2}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setCollisionScale(Lcom/mediatek/ngin3d/Scale;)V

    goto/16 :goto_0

    .line 214
    .restart local p2
    :cond_a
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_VISIBLE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->setCollisionVisible(Z)V

    goto/16 :goto_0

    .line 217
    .restart local p2
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public disableCollision()V
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_SHAPE:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public bridge synthetic dumpProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/mediatek/ngin3d/Base;->dumpProperties()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dumpProperties(Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->dumpProperties(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeyPathValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->getKeyPathValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mTag:I

    return v0
.end method

.method public bridge synthetic getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Base;->dirtyValueExists()Z

    move-result v0

    return v0
.end method

.method public isRealized()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public realize(Lcom/mediatek/ngin3d/presentation/Presentation;)V
    .locals 1
    .parameter "actorPresentation"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mNodeName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/mediatek/ngin3d/presentation/Presentation;->createActorNodePresentation(Ljava/lang/String;)Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    .line 240
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    invoke-interface {v0, p0}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->initialize(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Base;->applyAllProperties()V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Base;->applyAllDirtyValues()V

    .line 250
    return-void
.end method

.method public setCollisionPosition(Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 353
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_POSITION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public setCollisionRotation(Lcom/mediatek/ngin3d/Rotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 361
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_ROTATION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public setCollisionScale(Lcom/mediatek/ngin3d/Scale;)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 370
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_SCALE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public setCollisionVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 379
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_VISIBLE:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public setColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 308
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public bridge synthetic setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Base;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setOpacity(I)V
    .locals 2
    .parameter "opacity"

    .prologue
    .line 316
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_OPACITY:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public setPosition(Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 276
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_POSITION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public setRotation(Lcom/mediatek/ngin3d/Rotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 284
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_ROTATION:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method public setScale(Lcom/mediatek/ngin3d/Scale;)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 292
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_SCALE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 397
    iput p1, p0, Lcom/mediatek/ngin3d/ActorNode;->mTag:I

    .line 398
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
    .line 179
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z

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
    .line 160
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/Base;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->requestRender()V

    .line 165
    :cond_0
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 300
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_VISIBLE:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActorNode{mPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNodeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/ActorNode;->mNodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touchProperty(Lcom/mediatek/ngin3d/Property;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->touchProperty(Lcom/mediatek/ngin3d/Property;)V

    return-void
.end method

.method public bridge synthetic touchProperty(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Base;->touchProperty(Ljava/lang/String;)V

    return-void
.end method

.method public unrealize()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;->uninitialize()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/ActorNode;->mPresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    .line 269
    :cond_0
    return-void
.end method

.method public useCollisionPlane()V
    .locals 2

    .prologue
    .line 331
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_SHAPE:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method public useCollisionSphere()V
    .locals 2

    .prologue
    .line 345
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_SHAPE:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public useCollisionSquare()V
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/mediatek/ngin3d/ActorNode;->PROP_COLLISION_SHAPE:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/ActorNode;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 339
    return-void
.end method
