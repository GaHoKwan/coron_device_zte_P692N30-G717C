.class public abstract Lcom/mediatek/ngin3d/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/animation/Animation$Listener;
    }
.end annotation


# static fields
.field public static final ACTIVATE_TARGET_ON_COMPLETED:I = 0x8

.field public static final BACKWARD:I = 0x1

.field public static final BACK_TO_START_POINT_ON_COMPLETED:I = 0x20

.field public static final CAN_START_WITHOUT_TARGET:I = 0x10

.field public static final DEACTIVATE_TARGET_DURING_ANIMATION:I = 0xc

.field public static final DEACTIVATE_TARGET_ON_STARTED:I = 0x4

.field public static final DEBUG_ANIMATION_TIMING:I = 0x8000

.field public static final FORWARD:I = 0x0

.field public static final HIDE_TARGET_ON_COMPLETED:I = 0x2

.field public static final LOCK_Z_ROTATION:I = 0x40

.field public static final SHOW_TARGET_DURING_ANIMATION:I = 0x3

.field public static final SHOW_TARGET_ON_STARTED:I = 0x1

.field public static final START_TARGET_WITH_INITIAL_VALUE:I = 0x80

.field protected static final TAG:Ljava/lang/String; = "Animation"


# instance fields
.field protected mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/animation/Animation$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mName:Ljava/lang/String;

.field protected mOptions:I

.field protected mTag:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/16 v0, 0x91

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mName:Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    .line 122
    return-void
.end method


# virtual methods
.method public addListener(Lcom/mediatek/ngin3d/animation/Animation$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected applyOnCompletedFlags()V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Animation;->getTarget()Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    .line 326
    .local v0, target:Lcom/mediatek/ngin3d/Actor;
    if-eqz v0, :cond_1

    .line 327
    iget v1, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 328
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 330
    :cond_0
    iget v1, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 331
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setReactive(Z)V

    .line 334
    :cond_1
    return-void
.end method

.method protected applyOnStartedFlags()V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Animation;->getTarget()Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    .line 314
    .local v0, target:Lcom/mediatek/ngin3d/Actor;
    if-eqz v0, :cond_1

    .line 315
    iget v1, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 316
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 318
    :cond_0
    iget v1, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->setReactive(Z)V

    .line 322
    :cond_1
    return-void
.end method

.method public clone()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 3

    .prologue
    .line 345
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 346
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    .line 347
    const-string v2, ""

    iput-object v2, v0, Lcom/mediatek/ngin3d/animation/Animation;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    return-object v0

    .line 349
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :catch_0
    move-exception v1

    .line 350
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Animation;->clone()Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public abstract complete()Lcom/mediatek/ngin3d/animation/Animation;
.end method

.method public disableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 2
    .parameter "options"

    .prologue
    .line 218
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    .line 219
    return-object p0
.end method

.method public enableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1
    .parameter "options"

    .prologue
    .line 208
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    .line 209
    return-object p0
.end method

.method public abstract getDirection()I
.end method

.method public abstract getDuration()I
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    return v0
.end method

.method public abstract getOriginalDuration()I
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mTag:I

    return v0
.end method

.method public abstract getTarget()Lcom/mediatek/ngin3d/Actor;
.end method

.method public abstract getTimeScale()F
.end method

.method public abstract isStarted()Z
.end method

.method public abstract pause()Lcom/mediatek/ngin3d/animation/Animation;
.end method

.method public removeListener(Lcom/mediatek/ngin3d/animation/Animation$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract reset()Lcom/mediatek/ngin3d/animation/Animation;
.end method

.method public abstract reverse()V
.end method

.method public abstract setDirection(I)V
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/Animation;->mName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public abstract setProgress(F)V
.end method

.method public setTag(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 134
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Animation;->mTag:I

    .line 135
    return-void
.end method

.method public abstract setTarget(Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/Animation;
.end method

.method public abstract setTargetVisible(Z)Lcom/mediatek/ngin3d/animation/Animation;
.end method

.method public abstract setTimeScale(F)V
.end method

.method public abstract start()Lcom/mediatek/ngin3d/animation/Animation;
.end method

.method public abstract startDragging()Lcom/mediatek/ngin3d/animation/Animation;
.end method

.method public abstract stop()Lcom/mediatek/ngin3d/animation/Animation;
.end method

.method public abstract stopDragging()Lcom/mediatek/ngin3d/animation/Animation;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Animation;->mName:Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
