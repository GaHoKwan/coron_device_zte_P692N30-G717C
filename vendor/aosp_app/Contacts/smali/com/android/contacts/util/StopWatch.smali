.class public Lcom/android/contacts/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/StopWatch$1;,
        Lcom/android/contacts/util/StopWatch$NullStopWatch;
    }
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mLapLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimes:Ljava/util/ArrayList;
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
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    .line 33
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StopWatch;->mLapLabels:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/android/contacts/util/StopWatch;->mLabel:Ljava/lang/String;

    .line 37
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/contacts/util/StopWatch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/contacts/util/StopWatch;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getNullStopWatch()Lcom/android/contacts/util/StopWatch;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/contacts/util/StopWatch$NullStopWatch;->INSTANCE:Lcom/android/contacts/util/StopWatch$NullStopWatch;

    return-object v0
.end method

.method public static start(Ljava/lang/String;)Lcom/android/contacts/util/StopWatch;
    .locals 1
    .parameter "label"

    .prologue
    .line 44
    new-instance v0, Lcom/android/contacts/util/StopWatch;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/StopWatch;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public lap(Ljava/lang/String;)V
    .locals 3
    .parameter "lapLabel"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/android/contacts/util/StopWatch;->mLapLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public stopAndLog(Ljava/lang/String;I)V
    .locals 15
    .parameter "TAG"
    .parameter "timeThresholdToLog"

    .prologue
    .line 60
    const-string v13, ""

    invoke-virtual {p0, v13}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 62
    iget-object v13, p0, Lcom/android/contacts/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 63
    .local v7, start:J
    iget-object v13, p0, Lcom/android/contacts/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    iget-object v14, p0, Lcom/android/contacts/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 65
    .local v9, stop:J
    sub-long v11, v9, v7

    .line 66
    .local v11, total:J
    move/from16 v0, p2

    int-to-long v13, v0

    cmp-long v13, v11, v13

    if-gez v13, :cond_0

    .line 84
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v6, sb:Ljava/lang/StringBuilder;
    iget-object v13, p0, Lcom/android/contacts/util/StopWatch;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    const-string v13, ": "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-wide v4, v7

    .line 75
    .local v4, last:J
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    iget-object v13, p0, Lcom/android/contacts/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_1

    .line 76
    iget-object v13, p0, Lcom/android/contacts/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 77
    .local v1, current:J
    iget-object v13, p0, Lcom/android/contacts/util/StopWatch;->mLapLabels:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    sub-long v13, v1, v4

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    move-wide v4, v1

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    .end local v1           #current:J
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
