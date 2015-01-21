.class Lqr;
.super Lqt;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lqs;

    invoke-direct {v0}, Lqs;-><init>()V

    sput-object v0, Lqr;->a:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lqt;-><init>()V

    return-void
.end method


# virtual methods
.method a(I[F)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {p0}, Lqr;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 48
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 49
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v7, :cond_5

    .line 50
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqq;

    .line 51
    iget-object v1, v0, Lqq;->a:[F

    array-length v1, v1

    array-length v2, p2

    if-eq v1, v2, :cond_1

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 56
    iget-object v1, v0, Lqq;->a:[F

    invoke-static {v1, p2}, Lqp;->b([F[F)D

    move-result-wide v1

    .line 61
    :goto_2
    const-wide/16 v9, 0x0

    cmpl-double v3, v1, v9

    if-nez v3, :cond_4

    .line 62
    const-wide v1, 0x7fefffffffffffffL

    move-wide v2, v1

    .line 66
    :goto_3
    iget-object v1, v0, Lqq;->a:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 67
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpl-double v1, v2, v9

    if-lez v1, :cond_0

    .line 68
    :cond_2
    iget-object v0, v0, Lqq;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    :cond_3
    iget-object v1, v0, Lqq;->a:[F

    invoke-static {v1, p2}, Lqp;->a([F[F)D

    move-result-wide v1

    goto :goto_2

    .line 64
    :cond_4
    const-wide/high16 v9, 0x3ff0

    div-double v1, v9, v1

    move-wide v2, v1

    goto :goto_3

    .line 73
    :cond_5
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-virtual {v8, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 76
    new-instance v1, Lqu;

    invoke-direct {v1, v0, v3, v4}, Lqu;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 84
    :cond_6
    sget-object v0, Lqr;->a:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v5
.end method
