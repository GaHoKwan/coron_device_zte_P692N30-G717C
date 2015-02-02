.class public Lcom/dolby/ds1appUI/FPSCounter;
.super Ljava/lang/Object;
.source "FPSCounter.java"


# instance fields
.field private mFps:D

.field private final mTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolby/ds1appUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getFPS()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/dolby/ds1appUI/FPSCounter;->mFps:D

    return-wide v0
.end method

.method public nextFrame()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dolby/ds1appUI/FPSCounter;->nextFrame(J)V

    .line 26
    return-void
.end method

.method public nextFrame(J)V
    .locals 7
    .parameter "now"

    .prologue
    const/4 v6, 0x0

    .line 29
    iget-object v2, p0, Lcom/dolby/ds1appUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/dolby/ds1appUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/dolby/ds1appUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long v4, p1, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/dolby/ds1appUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/dolby/ds1appUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/dolby/ds1appUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v2, p0, Lcom/dolby/ds1appUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v2, v3, v5

    long-to-double v0, v2

    .line 38
    .local v0, fps:D
    iget-object v2, p0, Lcom/dolby/ds1appUI/FPSCounter;->mTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 39
    const-wide v2, 0x408f400000000000L

    div-double v0, v2, v0

    .line 40
    iput-wide v0, p0, Lcom/dolby/ds1appUI/FPSCounter;->mFps:D

    .line 42
    return-void
.end method
