.class public Lcom/mediatek/ngin3d/animation/MasterClock;
.super Ljava/lang/Object;
.source "MasterClock.java"


# static fields
.field private static sMasterClock:Lcom/mediatek/ngin3d/animation/MasterClock;


# instance fields
.field private mTimeScale:D

.field private final mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mediatek/ngin3d/animation/Timeline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/mediatek/ngin3d/animation/MasterClock;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/animation/MasterClock;-><init>()V

    sput-object v0, Lcom/mediatek/ngin3d/animation/MasterClock;->sMasterClock:Lcom/mediatek/ngin3d/animation/MasterClock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimeScale:D

    .line 77
    return-void
.end method

.method public static cleanup()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getDefault()Lcom/mediatek/ngin3d/animation/MasterClock;

    move-result-object v0

    invoke-direct {v0}, Lcom/mediatek/ngin3d/animation/MasterClock;->removeAllTimelines()V

    .line 73
    return-void
.end method

.method public static getDefault()Lcom/mediatek/ngin3d/animation/MasterClock;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/mediatek/ngin3d/animation/MasterClock;->sMasterClock:Lcom/mediatek/ngin3d/animation/MasterClock;

    return-object v0
.end method

.method public static getTime()J
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static register(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 1
    .parameter "timeline"

    .prologue
    .line 64
    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getDefault()Lcom/mediatek/ngin3d/animation/MasterClock;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/animation/MasterClock;->registerTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 65
    return-void
.end method

.method private removeAllTimelines()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 161
    return-void
.end method

.method public static setDefault(Lcom/mediatek/ngin3d/animation/MasterClock;)V
    .locals 0
    .parameter "clock"

    .prologue
    .line 60
    sput-object p0, Lcom/mediatek/ngin3d/animation/MasterClock;->sMasterClock:Lcom/mediatek/ngin3d/animation/MasterClock;

    .line 61
    return-void
.end method

.method public static unregister(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 1
    .parameter "timeline"

    .prologue
    .line 68
    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getDefault()Lcom/mediatek/ngin3d/animation/MasterClock;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/animation/MasterClock;->unregisterTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getTickTime()J
    .locals 6

    .prologue
    .line 120
    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v0

    .line 121
    .local v0, tickTime:J
    iget-wide v2, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimeScale:D

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    .line 122
    long-to-double v2, v0

    iget-wide v4, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimeScale:D

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 124
    :cond_0
    return-wide v0
.end method

.method public getTimeScale()D
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimeScale:D

    return-wide v0
.end method

.method public isTimelineRegistered(Lcom/mediatek/ngin3d/animation/Timeline;)Z
    .locals 1
    .parameter "timeline"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 131
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Timeline;

    .line 132
    .local v1, timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Timeline;->freeze()V

    goto :goto_0

    .line 134
    .end local v1           #timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    :cond_0
    return-void
.end method

.method public registerTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 2
    .parameter "timeline"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeline cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 141
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Timeline;

    .line 142
    .local v1, timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Timeline;->unfreeze()V

    goto :goto_0

    .line 144
    .end local v1           #timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    :cond_0
    return-void
.end method

.method public setTimeScale(D)V
    .locals 2
    .parameter "timeScale"

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeScale cannot be nagative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iput-wide p1, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimeScale:D

    .line 108
    return-void
.end method

.method public tick()V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTickTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/animation/MasterClock;->tick(J)V

    .line 151
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "tickTime"

    .prologue
    .line 154
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Timeline;

    .line 155
    .local v1, timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/ngin3d/animation/Timeline;->doTick(J)V

    goto :goto_0

    .line 157
    .end local v1           #timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    :cond_0
    return-void
.end method

.method public unregisterTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 1
    .parameter "timeline"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/MasterClock;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
