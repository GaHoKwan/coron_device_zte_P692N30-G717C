.class public Lcom/util/TimeCount;
.super Ljava/lang/Object;
.source "TimeCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/util/TimeCount$TimeData;
    }
.end annotation


# static fields
.field private static NO_LOG:Z

.field private static intance:Lcom/util/TimeCount;


# instance fields
.field private timeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/util/TimeCount$TimeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/util/TimeCount;->NO_LOG:Z

    .line 27
    new-instance v0, Lcom/util/TimeCount;

    invoke-direct {v0}, Lcom/util/TimeCount;-><init>()V

    sput-object v0, Lcom/util/TimeCount;->intance:Lcom/util/TimeCount;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/util/TimeCount;->timeList:Ljava/util/List;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/util/TimeCount;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/util/TimeCount;->intance:Lcom/util/TimeCount;

    return-object v0
.end method


# virtual methods
.method public addDurTimeByTitle(Ljava/lang/String;J)Z
    .locals 4
    .parameter "title"
    .parameter "addTime"

    .prologue
    const/4 v3, 0x1

    .line 90
    sget-boolean v1, Lcom/util/TimeCount;->NO_LOG:Z

    if-eqz v1, :cond_0

    .line 105
    :goto_0
    return v3

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/util/TimeCount;->timeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    new-instance v0, Lcom/util/TimeCount$TimeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/util/TimeCount$TimeData;-><init>(Lcom/util/TimeCount$TimeData;)V

    .line 101
    .local v0, data:Lcom/util/TimeCount$TimeData;
    iput-object p1, v0, Lcom/util/TimeCount$TimeData;->title:Ljava/lang/String;

    .line 102
    iput-wide p2, v0, Lcom/util/TimeCount$TimeData;->time:J

    .line 103
    iget-object v1, p0, Lcom/util/TimeCount;->timeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0           #data:Lcom/util/TimeCount$TimeData;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/util/TimeCount$TimeData;

    .line 94
    .restart local v0       #data:Lcom/util/TimeCount$TimeData;
    iget-object v2, v0, Lcom/util/TimeCount$TimeData;->title:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-wide v1, v0, Lcom/util/TimeCount$TimeData;->time:J

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/util/TimeCount$TimeData;->time:J

    goto :goto_0
.end method

.method public clearRecords()V
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/util/TimeCount;->NO_LOG:Z

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/util/TimeCount;->timeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public getCurTime()J
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public printAllTimeRecords()V
    .locals 6

    .prologue
    .line 71
    sget-boolean v1, Lcom/util/TimeCount;->NO_LOG:Z

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    return-void

    .line 74
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "TimeCount records start"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/util/TimeCount;->timeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/util/TimeCount$TimeData;

    .line 76
    .local v0, data:Lcom/util/TimeCount$TimeData;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/util/TimeCount$TimeData;->title:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/util/TimeCount$TimeData;->time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordTimeBegin(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 40
    sget-boolean v1, Lcom/util/TimeCount;->NO_LOG:Z

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/util/TimeCount;->timeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    new-instance v0, Lcom/util/TimeCount$TimeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/util/TimeCount$TimeData;-><init>(Lcom/util/TimeCount$TimeData;)V

    .line 51
    .local v0, data:Lcom/util/TimeCount$TimeData;
    iput-object p1, v0, Lcom/util/TimeCount$TimeData;->title:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/util/TimeCount$TimeData;->time:J

    .line 54
    iget-object v1, p0, Lcom/util/TimeCount;->timeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v0           #data:Lcom/util/TimeCount$TimeData;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/util/TimeCount$TimeData;

    .line 44
    .restart local v0       #data:Lcom/util/TimeCount$TimeData;
    iget-object v2, v0, Lcom/util/TimeCount$TimeData;->title:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/util/TimeCount$TimeData;->time:J

    goto :goto_0
.end method

.method public recordTimeEnd(Ljava/lang/String;)V
    .locals 6
    .parameter "title"

    .prologue
    .line 59
    sget-boolean v3, Lcom/util/TimeCount;->NO_LOG:Z

    if-eqz v3, :cond_1

    .line 68
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/util/TimeCount;->timeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/util/TimeCount$TimeData;

    .line 63
    .local v2, data:Lcom/util/TimeCount$TimeData;
    iget-object v4, v2, Lcom/util/TimeCount$TimeData;->title:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v0

    .line 65
    .local v0, curTime:J
    iget-wide v4, v2, Lcom/util/TimeCount$TimeData;->time:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Lcom/util/TimeCount$TimeData;->time:J

    goto :goto_0
.end method
