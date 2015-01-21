.class public Lcom/mediatek/ngin3d/animation/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/animation/Timeline$Owner;,
        Lcom/mediatek/ngin3d/animation/Timeline$Marker;,
        Lcom/mediatek/ngin3d/animation/Timeline$Listener;
    }
.end annotation


# static fields
.field public static final BACKWARD:I = 0x1

.field public static final FORWARD:I = 0x0

.field private static final STATE_FROZEN:I = 0x2

.field private static final STATE_PAUSED:I = 0x0

.field private static final STATE_STARTED:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "Timeline"


# instance fields
.field private mAutoReverse:Z

.field protected mCurrentTickTime:J

.field protected mDeltaTime:I

.field protected mDirection:I

.field protected mDuration:I

.field protected volatile mElapsedTime:I

.field protected mLastFrameTickTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ngin3d/animation/Timeline$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoop:Z

.field mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ngin3d/animation/Timeline$Marker;",
            ">;"
        }
    .end annotation
.end field

.field protected mOriginalDuration:I

.field private mOwner:Lcom/mediatek/ngin3d/animation/Timeline$Owner;

.field protected mStartedTickTime:J

.field private mStartedTime:I

.field private mState:I

.field protected mTag:I

.field protected mTimeScale:F

.field protected mWaitingFirstTick:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    .line 74
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTimeScale:F

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->setDuration(I)V

    .line 84
    iput v1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mState:I

    .line 85
    return-void
.end method

.method private calculateProgress(I)F
    .locals 2
    .parameter "duration"

    .prologue
    .line 230
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-gez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    .line 232
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-le v0, p1, :cond_1

    .line 233
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 235
    :cond_1
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private checkIfMarkerHit()V
    .locals 10

    .prologue
    .line 682
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mMarkers:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 695
    :cond_0
    return-void

    .line 686
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->getMarkers()Ljava/util/List;

    move-result-object v4

    .line 687
    .local v4, markers:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/animation/Timeline$Marker;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .local v5, size:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 688
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ngin3d/animation/Timeline$Marker;

    .line 689
    .local v3, m:Lcom/mediatek/ngin3d/animation/Timeline$Marker;
    invoke-direct {p0, v3}, Lcom/mediatek/ngin3d/animation/Timeline;->hasPassedTime(Lcom/mediatek/ngin3d/animation/Timeline$Marker;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 690
    const/4 v1, 0x0

    .local v1, j:I
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, listenersCount:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 691
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    iget v7, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iget-object v8, v3, Lcom/mediatek/ngin3d/animation/Timeline$Marker;->name:Ljava/lang/String;

    iget v9, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    invoke-interface {v6, p0, v7, v8, v9}, Lcom/mediatek/ngin3d/animation/Timeline$Listener;->onMarkerReached(Lcom/mediatek/ngin3d/animation/Timeline;ILjava/lang/String;I)V

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 687
    .end local v1           #j:I
    .end local v2           #listenersCount:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getMarker(Ljava/lang/String;)Lcom/mediatek/ngin3d/animation/Timeline$Marker;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 615
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mMarkers:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    move-object v1, v4

    .line 627
    :cond_0
    :goto_0
    return-object v1

    .line 619
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->getMarkers()Ljava/util/List;

    move-result-object v2

    .line 620
    .local v2, markers:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/animation/Timeline$Marker;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, size:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 621
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Timeline$Marker;

    .line 622
    .local v1, m:Lcom/mediatek/ngin3d/animation/Timeline$Marker;
    iget-object v5, v1, Lcom/mediatek/ngin3d/animation/Timeline$Marker;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #m:Lcom/mediatek/ngin3d/animation/Timeline$Marker;
    :cond_2
    move-object v1, v4

    .line 627
    goto :goto_0
.end method

.method private getMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/animation/Timeline$Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mMarkers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mMarkers:Ljava/util/ArrayList;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private hasPassedTime(Lcom/mediatek/ngin3d/animation/Timeline$Marker;)Z
    .locals 5
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 664
    iget v0, p1, Lcom/mediatek/ngin3d/animation/Timeline$Marker;->time:I

    .line 665
    .local v0, t:I
    if-ltz v0, :cond_0

    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-le v0, v3, :cond_2

    :cond_0
    move v1, v2

    .line 677
    :cond_1
    :goto_0
    return v1

    .line 668
    :cond_2
    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v3, :cond_5

    .line 669
    if-nez v0, :cond_3

    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iget v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1

    .line 672
    :cond_3
    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iget v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_4

    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-le v0, v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 674
    :cond_5
    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-ne v0, v3, :cond_6

    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    if-lez v3, :cond_6

    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iget v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-ge v3, v4, :cond_1

    .line 677
    :cond_6
    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-lt v0, v3, :cond_7

    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iget v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_1

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method private notifyNewFrame()V
    .locals 4

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 412
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    invoke-interface {v2, p0, v3}, Lcom/mediatek/ngin3d/animation/Timeline$Listener;->onNewFrame(Lcom/mediatek/ngin3d/animation/Timeline;I)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    return-void
.end method

.method private restoreDuration()V
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOriginalDuration:I

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    .line 407
    return-void
.end method

.method private setState(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 88
    iget v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mState:I

    if-ne v2, p1, :cond_0

    .line 135
    :goto_0
    :pswitch_0
    return-void

    .line 92
    :cond_0
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mState:I

    .line 93
    iget v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 133
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown timeline state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->getProgress()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/animation/Timeline;->setProgress(F)V

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mWaitingFirstTick:Z

    .line 97
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    .line 98
    .local v1, l:Lcom/mediatek/ngin3d/animation/Timeline$Listener;
    invoke-interface {v1, p0}, Lcom/mediatek/ngin3d/animation/Timeline$Listener;->onStarted(Lcom/mediatek/ngin3d/animation/Timeline;)V

    goto :goto_1

    .line 101
    .end local v1           #l:Lcom/mediatek/ngin3d/animation/Timeline$Listener;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOwner:Lcom/mediatek/ngin3d/animation/Timeline$Owner;

    if-nez v2, :cond_2

    .line 103
    invoke-static {p0}, Lcom/mediatek/ngin3d/animation/MasterClock;->register(Lcom/mediatek/ngin3d/animation/Timeline;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOwner:Lcom/mediatek/ngin3d/animation/Timeline$Owner;

    invoke-interface {v2, p0}, Lcom/mediatek/ngin3d/animation/Timeline$Owner;->register(Lcom/mediatek/ngin3d/animation/Timeline;)V

    goto :goto_0

    .line 110
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    .line 111
    .restart local v1       #l:Lcom/mediatek/ngin3d/animation/Timeline$Listener;
    invoke-interface {v1, p0}, Lcom/mediatek/ngin3d/animation/Timeline$Listener;->onPaused(Lcom/mediatek/ngin3d/animation/Timeline;)V

    goto :goto_2

    .line 114
    .end local v1           #l:Lcom/mediatek/ngin3d/animation/Timeline$Listener;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOwner:Lcom/mediatek/ngin3d/animation/Timeline$Owner;

    if-nez v2, :cond_4

    .line 116
    invoke-static {p0}, Lcom/mediatek/ngin3d/animation/MasterClock;->unregister(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 122
    :goto_3
    monitor-enter p0

    .line 123
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mWaitingFirstTick:Z

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOwner:Lcom/mediatek/ngin3d/animation/Timeline$Owner;

    invoke-interface {v2, p0}, Lcom/mediatek/ngin3d/animation/Timeline$Owner;->unregister(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOwner:Lcom/mediatek/ngin3d/animation/Timeline$Owner;

    goto :goto_3

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lcom/mediatek/ngin3d/animation/Timeline$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    return-void
.end method

.method public addMarkerAtTime(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "time"

    .prologue
    .line 631
    iget v1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-gt p2, v1, :cond_0

    if-gez p2, :cond_1

    .line 632
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "time exceeds duration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_1
    new-instance v0, Lcom/mediatek/ngin3d/animation/Timeline$Marker;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/ngin3d/animation/Timeline$Marker;-><init>(Ljava/lang/String;I)V

    .line 635
    .local v0, m:Lcom/mediatek/ngin3d/animation/Timeline$Marker;
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->getMarkers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    return-void
.end method

.method public advance(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 197
    if-gez p1, :cond_1

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    .line 205
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mWaitingFirstTick:Z

    if-nez v0, :cond_0

    .line 206
    iget-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLastFrameTickTime:J

    iput-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    .line 208
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    .line 209
    return-void

    .line 199
    :cond_1
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-le p1, v0, :cond_2

    .line 200
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    goto :goto_0

    .line 202
    :cond_2
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    goto :goto_0
.end method

.method public advanceToMarker(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->getMarker(Ljava/lang/String;)Lcom/mediatek/ngin3d/animation/Timeline$Marker;

    move-result-object v0

    .line 658
    .local v0, m:Lcom/mediatek/ngin3d/animation/Timeline$Marker;
    if-eqz v0, :cond_0

    .line 659
    iget v1, v0, Lcom/mediatek/ngin3d/animation/Timeline$Marker;->time:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/animation/Timeline;->advance(I)V

    .line 661
    :cond_0
    return-void
.end method

.method protected clone()Lcom/mediatek/ngin3d/animation/Timeline;
    .locals 3

    .prologue
    .line 725
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Timeline;

    .line 726
    .local v1, timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    .line 727
    const/4 v2, 0x0

    iput v2, v1, Lcom/mediatek/ngin3d/animation/Timeline;->mState:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    return-object v1

    .line 729
    .end local v1           #timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->clone()Lcom/mediatek/ngin3d/animation/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public complete()V
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v0, :cond_0

    .line 176
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->advance(I)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->advance(I)V

    goto :goto_0
.end method

.method protected doFrame(J)Z
    .locals 5
    .parameter "tickTime"

    .prologue
    .line 294
    iput-wide p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mCurrentTickTime:J

    .line 295
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v0, :cond_0

    .line 296
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    iget-wide v1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mCurrentTickTime:J

    iget-wide v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTimeScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    .line 300
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ngin3d/animation/Timeline;->onComplete(J)Z

    move-result v0

    .line 305
    :goto_1
    return v0

    .line 298
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    iget-wide v1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mCurrentTickTime:J

    iget-wide v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTimeScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    goto :goto_0

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->notifyNewFrame()V

    .line 304
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->checkIfMarkerHit()V

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public doTick(J)V
    .locals 4
    .parameter "tickTime"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mWaitingFirstTick:Z

    if-eqz v2, :cond_2

    .line 267
    iput-wide p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    .line 268
    iput-wide p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLastFrameTickTime:J

    .line 269
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mWaitingFirstTick:Z

    goto :goto_0

    .line 271
    :cond_2
    iget-wide v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLastFrameTickTime:J

    sub-long v0, p1, v2

    .line 272
    .local v0, delta:J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 277
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/animation/Timeline;->updateDeltaTime(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ngin3d/animation/Timeline;->doFrame(J)Z

    goto :goto_0
.end method

.method public final extendDuration(I)V
    .locals 2
    .parameter "extendedDuration"

    .prologue
    .line 433
    if-gez p1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Progress duration can not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    .line 437
    return-void
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->setState(I)V

    .line 515
    :cond_0
    return-void
.end method

.method public getAutoReverse()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mAutoReverse:Z

    return v0
.end method

.method public getDelta()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v0, :cond_0

    .line 465
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    .line 467
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    return v0
.end method

.method public getLoop()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLoop:Z

    return v0
.end method

.method public getOriginalDuration()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOriginalDuration:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->calculateProgress(I)F

    move-result v0

    return v0
.end method

.method public getRealProgress()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOriginalDuration:I

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->calculateProgress(I)F

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTag:I

    return v0
.end method

.method public getTime()I
    .locals 2

    .prologue
    .line 440
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-gez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 445
    :goto_0
    return v0

    .line 442
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iget v1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-le v0, v1, :cond_1

    .line 443
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    goto :goto_0

    .line 445
    :cond_1
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    goto :goto_0
.end method

.method public getTimeScale()F
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTimeScale:F

    return v0
.end method

.method public hasMarker(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->getMarker(Ljava/lang/String;)Lcom/mediatek/ngin3d/animation/Timeline$Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    iget v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onComplete(J)Z
    .locals 11
    .parameter "tickTime"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 310
    iget v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    .line 311
    .local v4, savedDirection:I
    iget v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    .line 313
    .local v3, overflowTime:I
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v5, :cond_0

    .line 314
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    iput v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    .line 319
    :goto_0
    iput v7, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    .line 321
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    .line 323
    .local v0, endTime:I
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->notifyNewFrame()V

    .line 324
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->checkIfMarkerHit()V

    .line 327
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-eq v5, v0, :cond_1

    move v5, v6

    .line 400
    :goto_1
    return v5

    .line 316
    .end local v0           #endTime:I
    :cond_0
    iput v7, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    goto :goto_0

    .line 331
    .restart local v0       #endTime:I
    :cond_1
    iget-boolean v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLoop:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 332
    invoke-direct {p0, v7}, Lcom/mediatek/ngin3d/animation/Timeline;->setState(I)V

    .line 336
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 337
    .local v2, listenerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 338
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    invoke-interface {v5, p0}, Lcom/mediatek/ngin3d/animation/Timeline$Listener;->onCompleted(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 342
    :cond_3
    iget-boolean v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mAutoReverse:Z

    if-eqz v5, :cond_4

    .line 343
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v5, :cond_7

    .line 344
    iput v6, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    .line 345
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    iput v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    .line 352
    :cond_4
    :goto_3
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-eq v0, v5, :cond_8

    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-nez v5, :cond_5

    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-eq v0, v5, :cond_8

    :cond_5
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iget v8, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-ne v5, v8, :cond_6

    if-eqz v0, :cond_8

    :cond_6
    move v5, v6

    .line 355
    goto :goto_1

    .line 347
    :cond_7
    iput v7, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    .line 348
    iput v7, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    goto :goto_3

    .line 358
    :cond_8
    iget-boolean v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLoop:Z

    if-eqz v5, :cond_e

    .line 360
    if-nez v4, :cond_a

    .line 362
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    sub-int v5, v3, v5

    iput v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    .line 363
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    int-to-long v8, v5

    sub-long v8, p1, v8

    iput-wide v8, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    .line 370
    :goto_4
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-eq v4, v5, :cond_9

    .line 371
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    iget v8, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    sub-int/2addr v5, v8

    iput v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    .line 374
    :cond_9
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->checkIfMarkerHit()V

    .line 377
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 378
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_b

    .line 379
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    invoke-interface {v5, p0}, Lcom/mediatek/ngin3d/animation/Timeline$Listener;->onLooped(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 366
    :cond_a
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    .line 367
    int-to-long v8, v3

    add-long/2addr v8, p1

    iput-wide v8, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    goto :goto_4

    .line 383
    :cond_b
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iget v8, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    if-lt v5, v8, :cond_d

    if-nez v4, :cond_d

    .line 384
    const-string v5, "Timeline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error case happened with Forward, correct it. mStartedTickTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mElapsedTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tickTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput-wide p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    .line 387
    iput v7, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    :cond_c
    :goto_6
    move v5, v6

    .line 395
    goto/16 :goto_1

    .line 388
    :cond_d
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    if-gez v5, :cond_c

    if-ne v4, v6, :cond_c

    .line 389
    const-string v5, "Timeline"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error case happened with backward, correct it. mStartedTickTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mElapsedTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tickTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iput-wide p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    .line 392
    iget v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    iput v5, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    goto :goto_6

    .line 398
    :cond_e
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->restoreDuration()V

    .line 399
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->rewind()V

    move v5, v7

    .line 400
    goto/16 :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->restoreDuration()V

    .line 153
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->setState(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/mediatek/ngin3d/animation/Timeline$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method public removeMarker(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 643
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mMarkers:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->getMarkers()Ljava/util/List;

    move-result-object v1

    .line 648
    .local v1, markers:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/animation/Timeline$Marker;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 649
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ngin3d/animation/Timeline$Marker;

    iget-object v3, v3, Lcom/mediatek/ngin3d/animation/Timeline$Marker;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 650
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 648
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public reverse()V
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v0, :cond_0

    .line 473
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->setDirection(I)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->setDirection(I)V

    goto :goto_0
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->advance(I)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->advance(I)V

    goto :goto_0
.end method

.method public setAutoReverse(Z)V
    .locals 0
    .parameter "autoReverse"

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mAutoReverse:Z

    .line 493
    return-void
.end method

.method public setDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 453
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-eq p1, v0, :cond_1

    .line 454
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    .line 455
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->rewind()V

    .line 458
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    .line 459
    iget-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mCurrentTickTime:J

    iput-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    .line 461
    :cond_1
    return-void
.end method

.method public final setDuration(I)V
    .locals 2
    .parameter "originalDuration"

    .prologue
    .line 425
    if-gez p1, :cond_0

    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Running duration can not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOriginalDuration:I

    .line 429
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    .line 430
    return-void
.end method

.method public setLoop(Z)V
    .locals 0
    .parameter "loop"

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLoop:Z

    .line 481
    return-void
.end method

.method public setOwner(Lcom/mediatek/ngin3d/animation/Timeline$Owner;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 706
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mOwner:Lcom/mediatek/ngin3d/animation/Timeline$Owner;

    .line 707
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 244
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress cannot be nagative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    .line 248
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    .line 249
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->notifyNewFrame()V

    .line 250
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 737
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTag:I

    .line 738
    return-void
.end method

.method public setTimeScale(F)V
    .locals 4
    .parameter "timeScale"

    .prologue
    .line 500
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time scale cannot be zero or negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    .line 504
    iget-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mCurrentTickTime:J

    iput-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    .line 505
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTimeScale:F

    .line 506
    return-void
.end method

.method public skip(I)V
    .locals 1
    .parameter "msecs"

    .prologue
    .line 188
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->advance(I)V

    .line 189
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->setState(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->pause()V

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->rewind()V

    .line 161
    return-void
.end method

.method public unfreeze()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 522
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 523
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mElapsedTime:I

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTime:I

    .line 524
    iput-boolean v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mWaitingFirstTick:Z

    .line 525
    iput v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mState:I

    .line 527
    :cond_0
    return-void
.end method

.method protected updateDeltaTime(J)Z
    .locals 3
    .parameter "delta"

    .prologue
    const-wide/16 v1, 0x0

    .line 284
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    .line 286
    :cond_0
    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    .line 287
    iget-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLastFrameTickTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLastFrameTickTime:J

    .line 288
    long-to-float v0, p1

    iget v1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTimeScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    .line 290
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public waitForCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 710
    monitor-enter p0

    .line 711
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    return-void
.end method
