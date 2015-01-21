.class public Lcom/nuance/dragon/toolkit/elvis/DefaultResultFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/elvis/ElvisResultFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->getConstraint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->getConstraint()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->getWords()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->getWords()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eq v7, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_1
    if-ge v4, v7, :cond_7

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_2
    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public applyFilter(Lcom/nuance/dragon/toolkit/elvis/ElvisResult;)Lcom/nuance/dragon/toolkit/elvis/ElvisResult;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->getChoiceCount()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->getChoiceList()Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v4}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {v6, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    move v3, v4

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/elvis/DefaultResultFilter;->a(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v5

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    invoke-direct {v1, v7}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->getGateConfidence()I

    move-result v2

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->getWakeupTimestamp()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;IJ)V

    :goto_3
    move-object v5, v0

    goto :goto_0

    :cond_5
    move-object v0, v5

    goto :goto_3
.end method
