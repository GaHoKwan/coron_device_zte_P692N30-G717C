.class public Lcom/mediatek/contacts/util/TimingStatistics;
.super Ljava/lang/Object;
.source "TimingStatistics.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sTimingable:Z


# instance fields
.field private mTargetClassName:Ljava/lang/String;

.field private mTimeTotalUsed:J

.field private mTimingCount:I

.field private mTimingStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    const-class v0, Lcom/mediatek/contacts/util/TimingStatistics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/util/TimingStatistics;->TAG:Ljava/lang/String;

    .line 8
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/contacts/util/TimingStatistics;->sTimingable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "targetClassName"

    .prologue
    const-wide/16 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTargetClassName:Ljava/lang/String;

    .line 9
    iput-wide v1, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimeTotalUsed:J

    .line 10
    iput-wide v1, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimingStart:J

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimingCount:I

    .line 14
    if-nez p1, :cond_0

    const-class v0, Lcom/mediatek/contacts/util/TimingStatistics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTargetClassName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static isTimingEnable()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/mediatek/contacts/util/TimingStatistics;->sTimingable:Z

    return v0
.end method

.method public static setTimingEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 64
    sput-boolean p0, Lcom/mediatek/contacts/util/TimingStatistics;->sTimingable:Z

    .line 65
    return-void
.end method


# virtual methods
.method public getTimingCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimingCount:I

    return v0
.end method

.method public getTimingTotalUsed()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimeTotalUsed:J

    return-wide v0
.end method

.method public varargs log([Ljava/lang/String;)V
    .locals 7
    .parameter "extraInfo"

    .prologue
    .line 80
    invoke-static {}, Lcom/mediatek/contacts/util/TimingStatistics;->isTimingEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 84
    .local v0, info:Ljava/lang/String;
    :goto_1
    sget-object v1, Lcom/mediatek/contacts/util/TimingStatistics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Performance test][Contacts][Timing][ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTargetClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTimeTotalUsed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/contacts/util/TimingStatistics;->getTimingTotalUsed()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mTimingCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",average:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/contacts/util/TimingStatistics;->getTimingTotalUsed()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x3ff0

    mul-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/mediatek/contacts/util/TimingStatistics;->getTimingCount()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0           #info:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public timingEnd()J
    .locals 6

    .prologue
    .line 33
    invoke-static {}, Lcom/mediatek/contacts/util/TimingStatistics;->isTimingEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    const-wide/16 v0, 0x0

    .line 39
    :goto_0
    return-wide v0

    .line 36
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimingStart:J

    sub-long v0, v2, v4

    .line 37
    .local v0, timeMakeUsed:J
    iget-wide v2, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimeTotalUsed:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimeTotalUsed:J

    .line 38
    iget v2, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimingCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimingCount:I

    goto :goto_0
.end method

.method public timingStart()V
    .locals 2

    .prologue
    .line 21
    sget-boolean v0, Lcom/mediatek/contacts/util/TimingStatistics;->sTimingable:Z

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/contacts/util/TimingStatistics;->mTimingStart:J

    goto :goto_0
.end method
