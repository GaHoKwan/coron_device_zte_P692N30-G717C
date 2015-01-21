.class public Lcom/mediatek/ngin3d/Container;
.super Lcom/mediatek/ngin3d/Actor;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/Container$PropertyChainNode;
    }
.end annotation


# static fields
.field static final ATTACHED_PROP_PARENT:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Container;",
            ">;"
        }
    .end annotation
.end field

.field public static final BREADTH_FIRST_SEARCH:I = 0x1

.field public static final DEPTH_FIRST_SEARCH:I = 0x0

.field public static final SEARCH_BY_ID:I = 0x1

.field public static final SEARCH_BY_TAG:I


# instance fields
.field protected mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingRm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/Actor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "parent"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Container;->ATTACHED_PROP_PARENT:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Actor;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Container;->mPendingRm:Ljava/util/List;

    .line 194
    return-void
.end method

.method private findChildByBFS(II)Lcom/mediatek/ngin3d/Actor;
    .locals 6
    .parameter "tag"
    .parameter "attribute"

    .prologue
    .line 441
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 442
    .local v4, queue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/mediatek/ngin3d/Container;>;"
    invoke-interface {v4, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_0
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 444
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Container;

    .line 445
    .local v1, group:Lcom/mediatek/ngin3d/Container;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Container;->getAllChildren()Ljava/util/List;

    move-result-object v3

    .line 446
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 447
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    if-nez p2, :cond_3

    .line 448
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->getTag()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 461
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v1           #group:Lcom/mediatek/ngin3d/Container;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    :cond_2
    :goto_1
    return-object v0

    .line 451
    .restart local v0       #actor:Lcom/mediatek/ngin3d/Actor;
    .restart local v1       #group:Lcom/mediatek/ngin3d/Container;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    :cond_3
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    .line 452
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->getId()I

    move-result v5

    if-eq v5, p1, :cond_2

    .line 456
    :cond_4
    instance-of v5, v0, Lcom/mediatek/ngin3d/Container;

    if-eqz v5, :cond_1

    .line 457
    check-cast v0, Lcom/mediatek/ngin3d/Container;

    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    .end local v1           #group:Lcom/mediatek/ngin3d/Container;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findChildByBFS(Ljava/lang/CharSequence;)Lcom/mediatek/ngin3d/Actor;
    .locals 6
    .parameter "childName"

    .prologue
    .line 470
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 471
    .local v4, queue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/mediatek/ngin3d/Container;>;"
    invoke-interface {v4, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_0
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 473
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Container;

    .line 474
    .local v1, group:Lcom/mediatek/ngin3d/Container;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Container;->getAllChildren()Ljava/util/List;

    move-result-object v3

    .line 475
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 476
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 484
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v1           #group:Lcom/mediatek/ngin3d/Container;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    :goto_1
    return-object v0

    .line 479
    .restart local v0       #actor:Lcom/mediatek/ngin3d/Actor;
    .restart local v1       #group:Lcom/mediatek/ngin3d/Container;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    :cond_2
    instance-of v5, v0, Lcom/mediatek/ngin3d/Container;

    if-eqz v5, :cond_1

    .line 480
    check-cast v0, Lcom/mediatek/ngin3d/Container;

    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .end local v1           #group:Lcom/mediatek/ngin3d/Container;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findChildByDFS(II)Lcom/mediatek/ngin3d/Actor;
    .locals 6
    .parameter "tag"
    .parameter "attribute"

    .prologue
    .line 494
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 495
    .local v4, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Actor;>;"
    invoke-virtual {v4, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 497
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ngin3d/Actor;

    .line 498
    .local v3, popped:Lcom/mediatek/ngin3d/Actor;
    if-nez p2, :cond_2

    .line 499
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Actor;->getTag()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 514
    .end local v3           #popped:Lcom/mediatek/ngin3d/Actor;
    :cond_1
    :goto_0
    return-object v3

    .line 502
    .restart local v3       #popped:Lcom/mediatek/ngin3d/Actor;
    :cond_2
    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    .line 503
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Actor;->getId()I

    move-result v5

    if-eq v5, p1, :cond_1

    .line 507
    :cond_3
    instance-of v5, v3, Lcom/mediatek/ngin3d/Container;

    if-eqz v5, :cond_0

    .line 508
    check-cast v3, Lcom/mediatek/ngin3d/Container;

    .end local v3           #popped:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Container;->getAllChildren()Ljava/util/List;

    move-result-object v2

    .line 509
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 510
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 514
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findChildByDFS(Ljava/lang/CharSequence;)Lcom/mediatek/ngin3d/Actor;
    .locals 6
    .parameter "childName"

    .prologue
    .line 523
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 524
    .local v4, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Actor;>;"
    invoke-virtual {v4, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 526
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ngin3d/Actor;

    .line 527
    .local v3, popped:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Actor;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 537
    .end local v3           #popped:Lcom/mediatek/ngin3d/Actor;
    :goto_0
    return-object v3

    .line 530
    .restart local v3       #popped:Lcom/mediatek/ngin3d/Actor;
    :cond_1
    instance-of v5, v3, Lcom/mediatek/ngin3d/Container;

    if-eqz v5, :cond_0

    .line 531
    check-cast v3, Lcom/mediatek/ngin3d/Container;

    .end local v3           #popped:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Container;->getAllChildren()Ljava/util/List;

    move-result-object v2

    .line 532
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 533
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 537
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Actor;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs add([Lcom/mediatek/ngin3d/Actor;)V
    .locals 0
    .parameter "actors"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Container;->addChild([Lcom/mediatek/ngin3d/Actor;)V

    .line 701
    return-void
.end method

.method protected varargs addChild([Lcom/mediatek/ngin3d/Actor;)V
    .locals 6
    .parameter "actors"

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    move-object v0, p1

    .local v0, arr$:[Lcom/mediatek/ngin3d/Actor;
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 229
    .local v1, child:Lcom/mediatek/ngin3d/Actor;
    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    const-string v4, "Ngin3d"

    const-string v5, "The actor is already in the group"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v1           #child:Lcom/mediatek/ngin3d/Actor;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 237
    .restart local v1       #child:Lcom/mediatek/ngin3d/Actor;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mPendingRm:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    sget-object v4, Lcom/mediatek/ngin3d/Container;->ATTACHED_PROP_PARENT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v1, v4, p0}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 244
    new-instance v4, Lcom/mediatek/ngin3d/Container$PropertyChainNode;

    invoke-direct {v4, p0}, Lcom/mediatek/ngin3d/Container$PropertyChainNode;-><init>(Lcom/mediatek/ngin3d/Container;)V

    invoke-virtual {v1, v4}, Lcom/mediatek/ngin3d/Actor;->setPropertyChain(Lcom/mediatek/ngin3d/Base$PropertyChain;)V

    goto :goto_1

    .line 247
    .end local v1           #child:Lcom/mediatek/ngin3d/Actor;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->requestRender()V

    .line 250
    return-void
.end method

.method protected createPresentation(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1
    .parameter "engine"

    .prologue
    .line 95
    invoke-interface {p1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->createContainer()Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v0

    return-object v0
.end method

.method public dump()Ljava/lang/String;
    .locals 7

    .prologue
    .line 575
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 576
    .local v1, buffer:Ljava/lang/StringBuffer;
    monitor-enter p0

    .line 577
    :try_start_0
    invoke-super {p0}, Lcom/mediatek/ngin3d/Actor;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 579
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 580
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 581
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ngin3d/utils/JSON;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 585
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    :cond_0
    invoke-static {v1}, Lcom/mediatek/ngin3d/utils/JSON;->wrap(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 586
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 587
    .end local v2           #count:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public findChildById(I)Lcom/mediatek/ngin3d/Actor;
    .locals 3
    .parameter "id"

    .prologue
    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 407
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 408
    monitor-exit p0

    .line 411
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 412
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected findChildById(II)Lcom/mediatek/ngin3d/Actor;
    .locals 1
    .parameter "id"
    .parameter "searchMode"

    .prologue
    const/4 v0, 0x1

    .line 423
    monitor-enter p0

    .line 424
    if-ne p2, v0, :cond_0

    .line 425
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/Container;->findChildByBFS(II)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    monitor-exit p0

    .line 429
    :goto_0
    return-object v0

    .line 426
    :cond_0
    if-nez p2, :cond_1

    .line 427
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/Container;->findChildByDFS(II)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 429
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Container;->findChildById(I)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public findChildByName(Ljava/lang/CharSequence;)Lcom/mediatek/ngin3d/Actor;
    .locals 3
    .parameter "childName"

    .prologue
    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 334
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    monitor-exit p0

    .line 338
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 339
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public findChildByName(Ljava/lang/CharSequence;I)Lcom/mediatek/ngin3d/Actor;
    .locals 1
    .parameter "childName"
    .parameter "searchMode"

    .prologue
    .line 350
    monitor-enter p0

    .line 351
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 352
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Container;->findChildByBFS(Ljava/lang/CharSequence;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    monitor-exit p0

    .line 356
    :goto_0
    return-object v0

    .line 353
    :cond_0
    if-nez p2, :cond_1

    .line 354
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Container;->findChildByDFS(Ljava/lang/CharSequence;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 356
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Container;->findChildByName(Ljava/lang/CharSequence;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public findChildByTag(I)Lcom/mediatek/ngin3d/Actor;
    .locals 3
    .parameter "tag"

    .prologue
    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 371
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 372
    monitor-exit p0

    .line 375
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 376
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public findChildByTag(II)Lcom/mediatek/ngin3d/Actor;
    .locals 1
    .parameter "tag"
    .parameter "searchMode"

    .prologue
    .line 387
    monitor-enter p0

    .line 388
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 389
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/Container;->findChildByBFS(II)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    monitor-exit p0

    .line 393
    :goto_0
    return-object v0

    .line 390
    :cond_0
    if-nez p2, :cond_1

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/Container;->findChildByDFS(II)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 393
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Container;->findChildByTag(I)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected getAllChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChild(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Container;->getChildByIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getChildByIndex(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Container;->getAllChildren()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDescendantCount()I
    .locals 4

    .prologue
    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 296
    .local v1, count:I
    iget-object v3, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 297
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    instance-of v3, v0, Lcom/mediatek/ngin3d/Container;

    if-eqz v3, :cond_0

    .line 298
    check-cast v0, Lcom/mediatek/ngin3d/Container;

    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Container;->getDescendantCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 301
    :cond_1
    monitor-exit p0

    return v1

    .line 302
    .end local v1           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isAnimationStarted()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 647
    monitor-enter p0

    .line 648
    :try_start_0
    invoke-super {p0}, Lcom/mediatek/ngin3d/Actor;->isAnimationStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    monitor-exit p0

    move v2, v3

    .line 657
    :goto_0
    return v2

    .line 651
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 652
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 653
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/Actor;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Actor;->isAnimationStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 654
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 652
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_2
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 658
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isDirty()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 627
    monitor-enter p0

    .line 628
    :try_start_0
    invoke-super {p0}, Lcom/mediatek/ngin3d/Actor;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    monitor-exit p0

    move v2, v3

    .line 637
    :goto_0
    return v2

    .line 631
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 632
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 633
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/Actor;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Actor;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 632
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    :cond_2
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 638
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public lower(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Actor;)V
    .locals 0
    .parameter "child"
    .parameter "sibling"

    .prologue
    .line 749
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ngin3d/Container;->lowerChild(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Actor;)V

    .line 750
    return-void
.end method

.method protected lowerChild(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Actor;)V
    .locals 3
    .parameter "actor"
    .parameter "sibling"

    .prologue
    .line 556
    monitor-enter p0

    .line 557
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sibling does not exist in the list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 560
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 561
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "actor does not exist in the list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 565
    if-nez p2, :cond_3

    const/4 v0, 0x0

    .line 566
    .local v0, pos:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 567
    monitor-exit p0

    .line 568
    return-void

    .line 565
    .end local v0           #pos:I
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method protected notifyOfLayer(Lcom/mediatek/ngin3d/Layer;)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Actor;->notifyOfLayer(Lcom/mediatek/ngin3d/Layer;)V

    .line 168
    monitor-enter p0

    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Actor;

    invoke-virtual {v1, p1}, Lcom/mediatek/ngin3d/Actor;->notifyOfLayer(Lcom/mediatek/ngin3d/Layer;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    monitor-exit p0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public raise(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Actor;)V
    .locals 0
    .parameter "child"
    .parameter "sibling"

    .prologue
    .line 742
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ngin3d/Container;->raiseChild(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Actor;)V

    .line 743
    return-void
.end method

.method protected raiseChild(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Actor;)V
    .locals 3
    .parameter "actor"
    .parameter "sibling"

    .prologue
    .line 541
    monitor-enter p0

    .line 542
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sibling does not exist in the list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 545
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 546
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "actor does not exist in the list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 550
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 551
    .local v0, pos:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 552
    monitor-exit p0

    .line 553
    return-void

    .line 550
    .end local v0           #pos:I
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V
    .locals 6
    .parameter "presentationEngine"

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Actor;->realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V

    .line 106
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 107
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 108
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Actor;

    .line 112
    .local v1, child:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Actor;->getOwner()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p0, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Actor;->getOwner()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Actor;->unrealize()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->isRealized()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Actor;->isRealized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    :cond_1
    sget-object v4, Lcom/mediatek/ngin3d/Container;->ATTACHED_PROP_PARENT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v1, v4, p0}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 121
    new-instance v4, Lcom/mediatek/ngin3d/Container$PropertyChainNode;

    invoke-direct {v4, p0}, Lcom/mediatek/ngin3d/Container$PropertyChainNode;-><init>(Lcom/mediatek/ngin3d/Container;)V

    invoke-virtual {v1, v4}, Lcom/mediatek/ngin3d/Actor;->setPropertyChain(Lcom/mediatek/ngin3d/Base$PropertyChain;)V

    .line 125
    :cond_2
    invoke-virtual {v1, p0}, Lcom/mediatek/ngin3d/Actor;->setOwner(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->getLayer()Lcom/mediatek/ngin3d/Layer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/ngin3d/Actor;->notifyOfLayer(Lcom/mediatek/ngin3d/Layer;)V

    .line 127
    invoke-virtual {v1, p1}, Lcom/mediatek/ngin3d/Actor;->realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v1           #child:Lcom/mediatek/ngin3d/Actor;
    :cond_3
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mPendingRm:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 132
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    .line 133
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mPendingRm:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 135
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->getOwner()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_4

    .line 136
    sget-object v4, Lcom/mediatek/ngin3d/Container;->ATTACHED_PROP_PARENT:Lcom/mediatek/ngin3d/Property;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/mediatek/ngin3d/Actor;->setOwner(Ljava/lang/Object;)V

    .line 138
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/mediatek/ngin3d/Actor;->notifyOfLayer(Lcom/mediatek/ngin3d/Layer;)V

    .line 139
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/mediatek/ngin3d/Actor;->setPropertyChain(Lcom/mediatek/ngin3d/Base$PropertyChain;)V

    .line 140
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->unrealize()V

    .line 132
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    :cond_5
    iget-object v4, p0, Lcom/mediatek/ngin3d/Container;->mPendingRm:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 144
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public reloadBitmapTexture()V
    .locals 4

    .prologue
    .line 665
    monitor-enter p0

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Container;->getChildrenCount()I

    move-result v2

    .line 667
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 668
    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/Container;->getChildByIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 669
    .local v0, child:Lcom/mediatek/ngin3d/Actor;
    instance-of v3, v0, Lcom/mediatek/ngin3d/Container;

    if-eqz v3, :cond_1

    .line 670
    check-cast v0, Lcom/mediatek/ngin3d/Container;

    .end local v0           #child:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Container;->reloadBitmapTexture()V

    .line 667
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    .restart local v0       #child:Lcom/mediatek/ngin3d/Actor;
    :cond_1
    instance-of v3, v0, Lcom/mediatek/ngin3d/Image;

    if-eqz v3, :cond_0

    .line 672
    check-cast v0, Lcom/mediatek/ngin3d/Image;

    .end local v0           #child:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Image;->loadAsync()V

    goto :goto_1

    .line 675
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    return-void
.end method

.method public remove(Lcom/mediatek/ngin3d/Actor;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Container;->removeChild(Lcom/mediatek/ngin3d/Actor;)V

    .line 710
    return-void
.end method

.method public removeAll()V
    .locals 0

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Container;->removeAllChildren()V

    .line 717
    return-void
.end method

.method protected removeAllChildren()V
    .locals 2

    .prologue
    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Container;->mPendingRm:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iget-object v0, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->requestRender()V

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected removeChild(Lcom/mediatek/ngin3d/Actor;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/mediatek/ngin3d/Container;->mPendingRm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/mediatek/ngin3d/Container;->mPendingRm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Actor;->requestRender()V

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 602
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Actor;->setColor(Lcom/mediatek/ngin3d/Color;)V

    .line 604
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Actor;

    invoke-virtual {v1, p1}, Lcom/mediatek/ngin3d/Actor;->setColor(Lcom/mediatek/ngin3d/Color;)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method

.method public setDisplayArea(Lcom/mediatek/ngin3d/Box;)V
    .locals 3
    .parameter "area"

    .prologue
    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 184
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/Actor;->setDisplayArea(Lcom/mediatek/ngin3d/Box;)V

    goto :goto_0

    .line 188
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 187
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Actor;->setDisplayArea(Lcom/mediatek/ngin3d/Box;)V

    .line 188
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    return-void
.end method

.method public stopAnimations()V
    .locals 3

    .prologue
    .line 614
    invoke-super {p0}, Lcom/mediatek/ngin3d/Actor;->stopAnimations()V

    .line 616
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 617
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->stopAnimations()V

    goto :goto_0

    .line 619
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    :cond_0
    return-void
.end method

.method public touchProperty(Ljava/lang/String;)V
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 685
    monitor-enter p0

    .line 686
    :try_start_0
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Actor;->touchProperty(Ljava/lang/String;)V

    .line 687
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 688
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 689
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/Actor;

    invoke-virtual {v2, p1}, Lcom/mediatek/ngin3d/Actor;->touchProperty(Ljava/lang/String;)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_0
    monitor-exit p0

    .line 692
    return-void

    .line 691
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unrealize()V
    .locals 3

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 154
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->unrealize()V

    goto :goto_0

    .line 158
    .end local v0           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 157
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/mediatek/ngin3d/Actor;->unrealize()V

    .line 158
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    return-void
.end method
