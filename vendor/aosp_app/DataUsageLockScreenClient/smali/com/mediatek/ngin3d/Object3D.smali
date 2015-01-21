.class public abstract Lcom/mediatek/ngin3d/Object3D;
.super Lcom/mediatek/ngin3d/Actor;
.source "Object3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;
    }
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final PROPNAME_NODE_ROTATION:Ljava/lang/String; = "node_rotation"

.field public static final PROP_ANIMATION_LOOP_ENABLED:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ANIMATION_PLAYING:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ANIMATION_PROGRESS:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ANIMATION_SPEED:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "Object3D"


# instance fields
.field private mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

.field private mObjectSource:Lcom/mediatek/ngin3d/presentation/ObjectSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "animation_playing"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PLAYING:Lcom/mediatek/ngin3d/Property;

    .line 76
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "animation_progress"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PROGRESS:Lcom/mediatek/ngin3d/Property;

    .line 85
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "animation_loop_enabled"

    const/4 v2, 0x0

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_LOOP_ENABLED:Lcom/mediatek/ngin3d/Property;

    .line 89
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "animation_speed"

    const/high16 v2, 0x3f80

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v3, v4, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_SPEED:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;-><init>()V

    .line 401
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ngin3d/Object3D;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Object3D;->update(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ngin3d/Object3D;)Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    return-object v0
.end method

.method private update(F)V
    .locals 1
    .parameter "time"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->isRealized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/ngin3d/presentation/IObject3d;->update(F)V

    .line 395
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 7
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 140
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Actor;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    .end local p2
    :cond_0
    :goto_0
    return v4

    .line 144
    .restart local p2
    :cond_1
    instance-of v6, p1, Lcom/mediatek/ngin3d/KeyPathProperty;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 145
    check-cast v0, Lcom/mediatek/ngin3d/KeyPathProperty;

    .line 146
    .local v0, kp:Lcom/mediatek/ngin3d/KeyPathProperty;
    invoke-virtual {v0, v5}, Lcom/mediatek/ngin3d/KeyPathProperty;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, propertyName:Ljava/lang/String;
    const-string v6, "node_rotation"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 149
    invoke-virtual {v0, v4}, Lcom/mediatek/ngin3d/KeyPathProperty;->getKey(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, sceneNodeName:Ljava/lang/String;
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 151
    check-cast v2, Lcom/mediatek/ngin3d/Rotation;

    .line 152
    .local v2, rotation:Lcom/mediatek/ngin3d/Rotation;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Lcom/mediatek/ngin3d/presentation/IObject3d;->setRotation(Ljava/lang/String;Lcom/mediatek/ngin3d/Rotation;)V

    goto :goto_0

    .line 157
    .end local v0           #kp:Lcom/mediatek/ngin3d/KeyPathProperty;
    .end local v1           #propertyName:Ljava/lang/String;
    .end local v2           #rotation:Lcom/mediatek/ngin3d/Rotation;
    .end local v3           #sceneNodeName:Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PLAYING:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v5

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/mediatek/ngin3d/presentation/IObject3d;->setAnimationPlaying(Z)V

    goto :goto_0

    .line 162
    .restart local p2
    :cond_3
    sget-object v6, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PROGRESS:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 163
    if-eqz p2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v5

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {v5, v6}, Lcom/mediatek/ngin3d/presentation/IObject3d;->setAnimationProgress(F)V

    goto :goto_0

    .line 167
    .restart local p2
    :cond_4
    sget-object v6, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_LOOP_ENABLED:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 168
    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v5

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/mediatek/ngin3d/presentation/IObject3d;->setAnimationLoopEnabled(Z)V

    goto :goto_0

    .line 172
    .restart local p2
    :cond_5
    sget-object v6, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_SPEED:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v6}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 173
    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v5

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {v5, v6}, Lcom/mediatek/ngin3d/presentation/IObject3d;->setAnimationSpeed(F)V

    goto/16 :goto_0

    .restart local p2
    :cond_6
    move v4, v5

    .line 180
    goto/16 :goto_0
.end method

.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/IObject3d;
    .locals 4
    .parameter "engine"

    .prologue
    .line 97
    invoke-interface {p1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createObject3d()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v0

    .line 98
    .local v0, iObject3d:Lcom/mediatek/ngin3d/presentation/IObject3d;
    iget-object v2, p0, Lcom/mediatek/ngin3d/Object3D;->mObjectSource:Lcom/mediatek/ngin3d/presentation/ObjectSource;

    invoke-interface {v0, v2}, Lcom/mediatek/ngin3d/presentation/IObject3d;->setObjectSource(Lcom/mediatek/ngin3d/presentation/ObjectSource;)V

    .line 100
    iget-object v2, p0, Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    if-eqz v2, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/IObject3d;->getAnimationLength()F

    move-result v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 102
    .local v1, lengthMs:I
    iget-object v2, p0, Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    invoke-virtual {v2, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 103
    iget-object v2, p0, Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/IObject3d;->getAnimationLoopEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->setLoop(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 104
    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/IObject3d;->disableNewAnimation()V

    .line 107
    .end local v1           #lengthMs:I
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Object3D;->createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation()Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 4

    .prologue
    .line 363
    iget-object v2, p0, Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    if-nez v2, :cond_1

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, lengthMs:I
    const/4 v1, 0x0

    .line 367
    .local v1, loopEnabled:Z
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->isRealized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ngin3d/presentation/IObject3d;->getAnimationLength()F

    move-result v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 369
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ngin3d/presentation/IObject3d;->getAnimationLoopEnabled()Z

    move-result v1

    .line 370
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ngin3d/presentation/IObject3d;->disableNewAnimation()V

    .line 373
    :cond_0
    new-instance v2, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    invoke-direct {v2, p0, p0, v0}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;-><init>(Lcom/mediatek/ngin3d/Object3D;Lcom/mediatek/ngin3d/Object3D;I)V

    iput-object v2, p0, Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    .line 374
    iget-object v2, p0, Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    invoke-virtual {v2, v1}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->setLoop(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 377
    .end local v0           #lengthMs:I
    .end local v1           #loopEnabled:Z
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    return-object v2
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1
    .parameter "name"

    .prologue
    .line 384
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getAnimation()Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationProgress()F
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PROGRESS:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    check-cast v0, Lcom/mediatek/ngin3d/presentation/IObject3d;

    return-object v0
.end method

.method public bridge synthetic getPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v0

    return-object v0
.end method

.method public isAnimationPlaying()Z
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PLAYING:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PLAYING:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PLAYING:Lcom/mediatek/ngin3d/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V
    .locals 1
    .parameter "presentationEngine"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Actor;->realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/IObject3d;->enableApplyProgress()V

    .line 134
    return-void
.end method

.method protected refreshState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-super {p0}, Lcom/mediatek/ngin3d/Actor;->refreshState()V

    .line 191
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PLAYING:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ngin3d/presentation/IObject3d;->isAnimationPlaying()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/ngin3d/Base;->setValueIfNotDirty(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)V

    .line 193
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PROGRESS:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->getPresentation()Lcom/mediatek/ngin3d/presentation/IObject3d;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ngin3d/presentation/IObject3d;->getAnimationProgress()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/ngin3d/Base;->setValueIfNotDirty(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)V

    .line 195
    return-void
.end method

.method public rewind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_SPEED:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 327
    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/Object3D;->setAnimationProgress(F)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Object3D;->setAnimationProgress(F)V

    goto :goto_0
.end method

.method public setAnimationLoopEnabled(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 338
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_LOOP_ENABLED:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 303
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PROGRESS:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public setAnimationSpeed(F)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 351
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_SPEED:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public setObjectFromAsset(Ljava/lang/String;)V
    .locals 2
    .parameter "assetName"

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "assetname cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    new-instance v0, Lcom/mediatek/ngin3d/presentation/ObjectSource;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/mediatek/ngin3d/presentation/ObjectSource;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Object3D;->mObjectSource:Lcom/mediatek/ngin3d/presentation/ObjectSource;

    .line 232
    return-void
.end method

.method public setObjectFromFile(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    new-instance v0, Lcom/mediatek/ngin3d/presentation/ObjectSource;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/mediatek/ngin3d/presentation/ObjectSource;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Object3D;->mObjectSource:Lcom/mediatek/ngin3d/presentation/ObjectSource;

    .line 207
    return-void
.end method

.method public setObjectFromResource(Landroid/content/res/Resources;I)V
    .locals 3
    .parameter "resources"
    .parameter "resId"

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resources cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    new-instance v0, Lcom/mediatek/ngin3d/presentation/ObjectSource;

    const/4 v1, 0x2

    new-instance v2, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;

    invoke-direct {v2, p1, p2}, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;-><init>(Landroid/content/res/Resources;I)V

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/presentation/ObjectSource;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Object3D;->mObjectSource:Lcom/mediatek/ngin3d/presentation/ObjectSource;

    .line 220
    return-void
.end method

.method public setRotation(Ljava/lang/String;Lcom/mediatek/ngin3d/Rotation;)V
    .locals 2
    .parameter "sceneNodeName"
    .parameter "rotation"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "node_rotation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ngin3d/Actor;->setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->pause()V

    .line 272
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->rewind()V

    .line 273
    return-void
.end method

.method public togglePlaying()V
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/mediatek/ngin3d/Object3D;->PROP_ANIMATION_PLAYING:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->pause()V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Object3D;->play()V

    goto :goto_0
.end method
