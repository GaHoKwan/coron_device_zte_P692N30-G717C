.class public Leu/chainfire/supersu/PromptQueue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/PromptQueue$Entry;,
        Leu/chainfire/supersu/PromptQueue$HistoricEntry;
    }
.end annotation


# static fields
.field private static 櫯:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Leu/chainfire/supersu/PromptQueue$HistoricEntry;>;"
        }
    .end annotation
.end field

.field private static 鷭:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Leu/chainfire/supersu/PromptQueue$Entry;>;"
        }
    .end annotation
.end field


# direct methods
.method static <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leu/chainfire/supersu/PromptQueue;->櫯:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static 鷭(ILeu/chainfire/supersu/PromptQueue$Entry;Z)I
    .locals 10

    .line 0
    const/4 v4, -0x1

    .line 48
    sget-object v5, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    monitor-enter v5

    .line 50
    :cond_0
    :try_start_0
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/PromptQueue$Entry;

    iget v0, v0, Leu/chainfire/supersu/PromptQueue$Entry;->鷭:I

    if-ne v0, p0, :cond_2

    .line 53
    move v4, v7

    .line 54
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v7, v7, 0x1

    :goto_0
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 57
    :goto_1
    const/4 v0, -0x1

    if-eq v4, v0, :cond_3

    if-eqz p2, :cond_3

    .line 58
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    const/4 v4, -0x1

    .line 60
    const/4 v6, 0x1

    .line 62
    :cond_3
    const/4 v0, -0x1

    if-ne v4, v0, :cond_8

    if-eqz p1, :cond_8

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 64
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    goto :goto_2

    .line 65
    :cond_4
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;

    iget-wide v0, v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->ˮ͈:J

    sub-long v0, v7, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 66
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    :cond_5
    add-int/lit8 v9, v9, -0x1

    :goto_2
    if-gez v9, :cond_4

    .line 70
    const/4 v9, 0x0

    .line 71
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    goto :goto_3

    .line 72
    :cond_6
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;

    move-object v8, v0

    .line 73
    iget v0, v8, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->鷭:I

    if-ne v0, p0, :cond_7

    iget v0, v8, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->櫯:I

    iget v1, p1, Leu/chainfire/supersu/PromptQueue$Entry;->ȃ:I

    if-ne v0, v1, :cond_7

    .line 74
    const/4 v9, 0x1

    .line 75
    goto :goto_4

    .line 71
    :cond_7
    add-int/lit8 v7, v7, -0x1

    :goto_3
    if-gez v7, :cond_6

    .line 79
    :goto_4
    if-nez v9, :cond_8

    .line 80
    new-instance v4, Leu/chainfire/supersu/PromptQueue;

    invoke-direct {v4}, Leu/chainfire/supersu/PromptQueue;-><init>()V

    .line 81
    iget v8, p1, Leu/chainfire/supersu/PromptQueue$Entry;->ȃ:I

    new-instance v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;

    invoke-direct {v0, v4}, Leu/chainfire/supersu/PromptQueue$HistoricEntry;-><init>(Leu/chainfire/supersu/PromptQueue;)V

    move-object v4, v0

    iput p0, v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->鷭:I

    iput v8, v4, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->櫯:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v4, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->ˮ͈:J

    move-object v8, v4

    .line 82
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 88
    :cond_8
    if-nez v6, :cond_0

    .line 48
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    :try_start_1
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 91
    :goto_5
    return v4
.end method

.method public static 鷭(I)V
    .locals 2

    .line 0
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Leu/chainfire/supersu/PromptQueue;->鷭(ILeu/chainfire/supersu/PromptQueue$Entry;Z)I

    .line 104
    return-void
.end method

.method public static 鷭(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 3

    .line 0
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 96
    new-instance v0, Leu/chainfire/supersu/PromptQueue;

    invoke-direct {v0}, Leu/chainfire/supersu/PromptQueue;-><init>()V

    .line 97
    move-object v2, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move p1, p0

    move-object p0, v0

    new-instance v0, Leu/chainfire/supersu/PromptQueue$Entry;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/PromptQueue$Entry;-><init>(Leu/chainfire/supersu/PromptQueue;)V

    move-object p0, v0

    iput p1, v0, Leu/chainfire/supersu/PromptQueue$Entry;->鷭:I

    iput-object p2, p0, Leu/chainfire/supersu/PromptQueue$Entry;->櫯:Ljava/lang/String;

    iput-object p3, p0, Leu/chainfire/supersu/PromptQueue$Entry;->ˮ͈:Ljava/lang/String;

    iput p4, p0, Leu/chainfire/supersu/PromptQueue$Entry;->ȃ:I

    iput p5, p0, Leu/chainfire/supersu/PromptQueue$Entry;->Ą:I

    iput-object v2, p0, Leu/chainfire/supersu/PromptQueue$Entry;->ą:Ljava/lang/String;

    .line 98
    iget v0, p0, Leu/chainfire/supersu/PromptQueue$Entry;->鷭:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Leu/chainfire/supersu/PromptQueue;->鷭(ILeu/chainfire/supersu/PromptQueue$Entry;Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static 鷭(Landroid/content/Context;)Z
    .locals 9

    .line 0
    :goto_0
    const/4 v7, 0x0

    .line 108
    sget-object v8, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    monitor-enter v8

    .line 109
    :try_start_0
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->鷭:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/PromptQueue$Entry;

    move-object v7, v0

    .line 108
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :try_start_1
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 113
    :goto_1
    if-eqz v7, :cond_4

    .line 114
    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    .line 115
    iget-object v1, v7, Leu/chainfire/supersu/PromptQueue$Entry;->ˮ͈:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v7, Leu/chainfire/supersu/PromptQueue$Entry;->ˮ͈:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v1, v7, Leu/chainfire/supersu/PromptQueue$Entry;->櫯:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v8

    .line 116
    iget-boolean v0, v8, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-nez v0, :cond_2

    iget v0, v8, Leu/chainfire/supersu/Settings$App;->庸:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 117
    iget v0, v7, Leu/chainfire/supersu/PromptQueue$Entry;->鷭:I

    iget v1, v8, Leu/chainfire/supersu/Settings$App;->庸:I

    invoke-virtual {v8, p0, v0, v1}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V

    .line 118
    iget v0, v7, Leu/chainfire/supersu/PromptQueue$Entry;->鷭:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/PromptQueue;->鷭(ILeu/chainfire/supersu/PromptQueue$Entry;Z)I

    .line 119
    goto/16 :goto_0

    .line 121
    :cond_2
    iget-boolean v0, v8, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Leu/chainfire/supersu/Settings$App;->ȃ()V

    .line 123
    :cond_3
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 124
    move-object v0, p0

    iget v1, v7, Leu/chainfire/supersu/PromptQueue$Entry;->鷭:I

    iget-object v2, v7, Leu/chainfire/supersu/PromptQueue$Entry;->櫯:Ljava/lang/String;

    iget-object v3, v7, Leu/chainfire/supersu/PromptQueue$Entry;->ˮ͈:Ljava/lang/String;

    iget v4, v7, Leu/chainfire/supersu/PromptQueue$Entry;->ȃ:I

    iget v5, v7, Leu/chainfire/supersu/PromptQueue$Entry;->Ą:I

    iget-object v6, v7, Leu/chainfire/supersu/PromptQueue$Entry;->ą:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Leu/chainfire/supersu/PromptActivity;->鷭(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_4
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 130
    const/4 v0, 0x0

    return v0
.end method
