.class public Lcom/mediatek/videoplayer/CachedVideoInfo;
.super Ljava/lang/Object;
.source "CachedVideoInfo.java"


# static fields
.field private static final COLON:Ljava/lang/String; = ":"

.field private static final ONE_HOUR:I = 0xe10

.field private static final ONE_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "CachedVideoInfo"

.field private static final TEN:I = 0xa

.field private static final THOUSAND:I = 0x3e8

.field private static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private mCanOpitmized:Z

.field private final mCanOptimizedLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final mDateTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDurations:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDateTimes:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mFileSizes:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    .line 64
    iget-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/videoplayer/CachedVideoInfo;->setLocale(Ljava/util/Locale;)V

    .line 73
    return-void
.end method

.method private stringForDurationOptimized(J)Ljava/lang/String;
    .locals 8
    .parameter "millis"

    .prologue
    const/16 v7, 0xa

    .line 131
    long-to-int v5, p1

    div-int/lit16 v4, v5, 0x3e8

    .line 132
    .local v4, totalSeconds:I
    rem-int/lit8 v3, v4, 0x3c

    .line 133
    .local v3, seconds:I
    div-int/lit8 v5, v4, 0x3c

    rem-int/lit8 v2, v5, 0x3c

    .line 134
    .local v2, minutes:I
    div-int/lit16 v1, v4, 0xe10

    .line 136
    .local v1, hours:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v0, builder:Ljava/lang/StringBuilder;
    if-lez v1, :cond_0

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    if-ge v2, v7, :cond_1

    .line 142
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    if-ge v3, v7, :cond_2

    .line 147
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public declared-synchronized getDuration(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .parameter "millis"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, duration:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 120
    iget-boolean v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOpitmized:Z

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/mediatek/videoplayer/CachedVideoInfo;->stringForDurationOptimized(J)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-object v0

    .line 123
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkUtils;->stringForTime(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 118
    .end local v0           #duration:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getFileSize(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "size"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mFileSizes:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, fileSize:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mFileSizes:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-object v0

    .line 100
    .end local v0           #fileSize:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTime(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .parameter "millis"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDateTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, time:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkUtils;->localTime(J)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDateTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-object v0

    .line 109
    .end local v0           #time:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLocale(Ljava/util/Locale;)V
    .locals 4
    .parameter "locale"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    const-string v1, "CachedVideoInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocale("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mLocale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCanOpitmized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOpitmized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez p1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDateTimes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 79
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDurations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 80
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mFileSizes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 96
    :cond_0
    :goto_0
    const-string v1, "CachedVideoInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocale() mCanOpitmized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOpitmized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iput-object p1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mLocale:Ljava/util/Locale;

    .line 84
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDateTimes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 85
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mFileSizes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, newOptimized:Z
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOptimizedLocales:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    const/4 v0, 0x1

    .line 90
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOpitmized:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 91
    :cond_3
    iput-boolean v0, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mCanOpitmized:Z

    .line 92
    iget-object v1, p0, Lcom/mediatek/videoplayer/CachedVideoInfo;->mDurations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    .end local v0           #newOptimized:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
