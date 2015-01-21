.class public Lcom/mediatek/ngin3d/animation/AnimationGroup;
.super Lcom/mediatek/ngin3d/animation/BasicAnimation;
.source "AnimationGroup.java"


# static fields
.field private static final START:Ljava/lang/String; = "{Start}"

.field private static final STOP:Ljava/lang/String; = "{Stop}"

.field private static final TAG:Ljava/lang/String; = "AnimationGroup"


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ngin3d/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mProposedHeight:I

.field private mProposedWidth:I

.field private mTarget:Lcom/mediatek/ngin3d/Actor;

.field private mTimelineGroup:Lcom/mediatek/ngin3d/animation/TimelineGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/mediatek/ngin3d/animation/TimelineGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/animation/TimelineGroup;-><init>(I)V

    sget-object v1, Lcom/mediatek/ngin3d/animation/Mode;->LINEAR:Lcom/mediatek/ngin3d/animation/Mode;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>(Lcom/mediatek/ngin3d/animation/Timeline;Lcom/mediatek/ngin3d/animation/Mode;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    check-cast v0, Lcom/mediatek/ngin3d/animation/TimelineGroup;

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTimelineGroup:Lcom/mediatek/ngin3d/animation/TimelineGroup;

    .line 71
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->setupTimelineListener()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ngin3d/animation/AnimationGroup;)Lcom/mediatek/ngin3d/Actor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTarget:Lcom/mediatek/ngin3d/Actor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ngin3d/animation/AnimationGroup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ngin3d/animation/AnimationGroup;Lcom/mediatek/ngin3d/animation/Animation;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->action(Lcom/mediatek/ngin3d/animation/Animation;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ngin3d/animation/AnimationGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->alignAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ngin3d/animation/AnimationGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->startAll()V

    return-void
.end method

.method private action(Lcom/mediatek/ngin3d/animation/Animation;II)V
    .locals 3
    .parameter "animation"
    .parameter "elapsedMsecs"
    .parameter "direction"

    .prologue
    .line 578
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Animation;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    invoke-virtual {p1, p3}, Lcom/mediatek/ngin3d/animation/Animation;->setDirection(I)V

    move-object v0, p1

    .line 583
    check-cast v0, Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 584
    .local v0, basicAnimation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    iget-object v1, v0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Timeline;->rewind()V

    .line 585
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTimelineGroup:Lcom/mediatek/ngin3d/animation/TimelineGroup;

    iget-object v2, v0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/animation/TimelineGroup;->attach(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 586
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Animation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 588
    .end local v0           #basicAnimation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    :cond_0
    return-void
.end method

.method private alignAnimation()V
    .locals 5

    .prologue
    .line 402
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Animation;

    .line 403
    .local v1, animation:Lcom/mediatek/ngin3d/animation/Animation;
    instance-of v3, v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 404
    check-cast v3, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-direct {v3}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->alignAnimation()V

    :cond_0
    move-object v0, v1

    .line 406
    check-cast v0, Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 407
    .local v0, ani:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDuration()I

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    iget-object v3, v0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/animation/Timeline;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Timeline;->extendDuration(I)V

    .line 414
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTimelineGroup:Lcom/mediatek/ngin3d/animation/TimelineGroup;

    iget-object v4, v0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/TimelineGroup;->attach(Lcom/mediatek/ngin3d/animation/Timeline;)V

    goto :goto_0

    .line 416
    .end local v0           #ani:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .end local v1           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_2
    return-void
.end method

.method private calculateDuration()V
    .locals 5

    .prologue
    .line 188
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/animation/Timeline;->setDuration(I)V

    .line 189
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 190
    .local v0, ani:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->getDuration()I

    move-result v1

    .line 191
    .local v1, duration:I
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDuration()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v3, v1}, Lcom/mediatek/ngin3d/animation/Timeline;->setDuration(I)V

    goto :goto_0

    .line 197
    .end local v0           #ani:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #duration:I
    :cond_1
    return-void
.end method

.method private findChildByBFS(I)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 6
    .parameter "tag"

    .prologue
    .line 278
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 279
    .local v3, queue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/mediatek/ngin3d/animation/AnimationGroup;>;"
    invoke-interface {v3, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 281
    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    .line 282
    .local v1, group:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getAnimationCount()I

    move-result v4

    .line 283
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 284
    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getAnimation(I)Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v0

    .line 285
    .local v0, ani:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->getTag()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 286
    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getAnimation(I)Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v5

    .line 293
    .end local v0           #ani:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #group:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    .end local v2           #i:I
    .end local v4           #size:I
    :goto_1
    return-object v5

    .line 288
    .restart local v0       #ani:Lcom/mediatek/ngin3d/animation/Animation;
    .restart local v1       #group:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    .restart local v2       #i:I
    .restart local v4       #size:I
    :cond_1
    instance-of v5, v0, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    if-eqz v5, :cond_2

    .line 289
    check-cast v0, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    .end local v0           #ani:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v1           #group:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private findChildByDFS(I)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 5
    .parameter "tag"

    .prologue
    .line 297
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 298
    .local v3, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/animation/Animation;>;"
    invoke-virtual {v3, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 300
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Animation;

    .line 301
    .local v1, popped:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Animation;->getTag()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 311
    .end local v1           #popped:Lcom/mediatek/ngin3d/animation/Animation;
    :goto_0
    return-object v1

    .line 304
    .restart local v1       #popped:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_1
    instance-of v4, v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 305
    check-cast v4, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    check-cast v4, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getAnimationCount()I

    move-result v2

    .line 306
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    move-object v4, v1

    .line 307
    check-cast v4, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    check-cast v4, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v4, v0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getAnimation(I)Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v0           #i:I
    .end local v1           #popped:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v2           #size:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupTimelineListener()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    new-instance v1, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;-><init>(Lcom/mediatek/ngin3d/animation/AnimationGroup;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Timeline;->addListener(Lcom/mediatek/ngin3d/animation/Timeline$Listener;)V

    .line 139
    return-void
.end method

.method private startAll()V
    .locals 3

    .prologue
    .line 383
    :try_start_0
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->beginPropertiesModification()Lcom/mediatek/ngin3d/BatchPropertyModification;

    .line 384
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 385
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->start()Lcom/mediatek/ngin3d/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 389
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->commit()V

    throw v2

    .line 387
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->commit()V

    .line 394
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/ngin3d/animation/Animation;)Lcom/mediatek/ngin3d/animation/AnimationGroup;
    .locals 3
    .parameter "animation"

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Animation cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Animation;->getDuration()I

    move-result v0

    .line 155
    .local v0, duration:I
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDuration()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v1, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->setDuration(I)V

    .line 161
    :cond_1
    return-object p0
.end method

.method public clear()Lcom/mediatek/ngin3d/animation/AnimationGroup;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->clone()Lcom/mediatek/ngin3d/animation/AnimationGroup;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/ngin3d/animation/AnimationGroup;
    .locals 5

    .prologue
    .line 602
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->clone()Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    .line 603
    .local v1, animation:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    invoke-direct {v1}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->setupTimelineListener()V

    .line 604
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTimelineGroup:Lcom/mediatek/ngin3d/animation/TimelineGroup;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/animation/Timeline;->clone()Lcom/mediatek/ngin3d/animation/Timeline;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ngin3d/animation/TimelineGroup;

    iput-object v3, v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTimelineGroup:Lcom/mediatek/ngin3d/animation/TimelineGroup;

    .line 606
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    .line 607
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 608
    .local v0, ani:Lcom/mediatek/ngin3d/animation/Animation;
    iget-object v3, v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->clone()Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    .end local v0           #ani:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->clone()Lcom/mediatek/ngin3d/animation/AnimationGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->clone()Lcom/mediatek/ngin3d/animation/AnimationGroup;

    move-result-object v0

    return-object v0
.end method

.method public complete()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 3

    .prologue
    .line 460
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 461
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->complete()Lcom/mediatek/ngin3d/animation/Animation;

    goto :goto_0

    .line 463
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->complete()Lcom/mediatek/ngin3d/animation/Animation;

    .line 464
    return-object p0
.end method

.method public disableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 3
    .parameter "options"

    .prologue
    .line 568
    const/16 v2, 0x80

    if-ne p1, v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 570
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->disableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;

    goto :goto_0

    .line 573
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->disableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;

    .line 574
    return-object p0
.end method

.method public dump()V
    .locals 5

    .prologue
    .line 615
    const-string v2, "AnimationGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent animation tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Animation;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Original Duration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getOriginalDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 617
    .local v0, ani:Lcom/mediatek/ngin3d/animation/Animation;
    instance-of v2, v0, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 618
    check-cast v2, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->dump()V

    .line 620
    :cond_0
    const-string v2, "AnimationGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "children animation tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Original Duration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->getOriginalDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    .end local v0           #ani:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_1
    return-void
.end method

.method public enableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 3
    .parameter "options"

    .prologue
    .line 558
    const/16 v2, 0x80

    if-ne p1, v2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 560
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->enableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;

    goto :goto_0

    .line 563
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->enableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;

    .line 564
    return-object p0
.end method

.method public getAnimation(I)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1
    .parameter "index"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    return-object v0
.end method

.method public getAnimationByTag(I)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 3
    .parameter "index"

    .prologue
    .line 252
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 253
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 257
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationByTag(II)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1
    .parameter "tag"
    .parameter "searchMode"

    .prologue
    .line 268
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->findChildByBFS(I)Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 270
    :cond_0
    if-nez p2, :cond_1

    .line 271
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->findChildByDFS(I)Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getAnimationByTag(I)Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnimationCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDescendantCount()I
    .locals 4

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 226
    .local v1, count:I
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 227
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    instance-of v3, v0, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    if-eqz v3, :cond_0

    .line 228
    check-cast v0, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->getDescendantCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 231
    :cond_1
    monitor-exit p0

    return v1

    .line 232
    .end local v1           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getProposedHeight()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mProposedHeight:I

    return v0
.end method

.method public getProposedWidth()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mProposedWidth:I

    return v0
.end method

.method public getTarget()Lcom/mediatek/ngin3d/Actor;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTarget:Lcom/mediatek/ngin3d/Actor;

    return-object v0
.end method

.method public final isStarted()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/mediatek/ngin3d/animation/Animation;)Lcom/mediatek/ngin3d/animation/AnimationGroup;
    .locals 5
    .parameter "animation"

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "AnimationGroup"

    const-string v1, "Remove children animation %d when animation group %d is starting"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Animation;->getTag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Animation;->getTag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Animation;->getDuration()I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDuration()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->calculateDuration()V

    .line 184
    :cond_2
    return-object p0
.end method

.method public reset()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 3

    .prologue
    .line 446
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 447
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->reset()Lcom/mediatek/ngin3d/animation/Animation;

    goto :goto_0

    .line 449
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->reset()Lcom/mediatek/ngin3d/animation/Animation;

    .line 450
    return-object p0
.end method

.method public reverse()V
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->setDirection(I)V

    .line 546
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 547
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->setDirection(I)V

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 530
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 531
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->setDirection(I)V

    goto :goto_0

    .line 533
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDirection(I)V

    .line 534
    return-void
.end method

.method public setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 2
    .parameter "duration"

    .prologue
    .line 597
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v1, "Can not specify the duration of AnimationGroup"

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMode(Lcom/mediatek/ngin3d/animation/Mode;)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 2
    .parameter "mode"

    .prologue
    .line 592
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v1, "Can not set animation mode of AnimationGroup"

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProgress(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 551
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 552
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->setProgress(F)V

    goto :goto_0

    .line 554
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setProgress(F)V

    .line 555
    return-void
.end method

.method public setProposedHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 332
    iput p1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mProposedHeight:I

    .line 333
    return-void
.end method

.method public setProposedWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 323
    iput p1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mProposedWidth:I

    .line 324
    return-void
.end method

.method public setTarget(Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 3
    .parameter "target"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 485
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 486
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->setTarget(Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/Animation;

    goto :goto_0

    .line 488
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    return-object p0
.end method

.method public setTargetVisible(Z)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 3
    .parameter "visible"

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setTargetVisible(Z)Lcom/mediatek/ngin3d/animation/Animation;

    .line 499
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 500
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->setTargetVisible(Z)Lcom/mediatek/ngin3d/animation/Animation;

    goto :goto_0

    .line 502
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    return-object p0
.end method

.method public setTimeScale(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 517
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 518
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->setTimeScale(F)V

    goto :goto_0

    .line 520
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setTimeScale(F)V

    .line 521
    return-void
.end method

.method public final start()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->alignAnimation()V

    .line 365
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->startAll()V

    .line 366
    return-object p0
.end method

.method public startDragging()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->alignAnimation()V

    .line 373
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->startDragging()Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public stop()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 3

    .prologue
    .line 428
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->stop()Lcom/mediatek/ngin3d/animation/Animation;

    .line 429
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 430
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->stop()Lcom/mediatek/ngin3d/animation/Animation;

    goto :goto_0

    .line 436
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    return-object p0
.end method
