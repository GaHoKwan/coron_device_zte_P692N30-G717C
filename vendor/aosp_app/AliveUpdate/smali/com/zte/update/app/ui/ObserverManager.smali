.class public Lcom/zte/update/app/ui/ObserverManager;
.super Ljava/lang/Object;
.source "ObserverManager.java"


# static fields
.field private static instance:Lcom/zte/update/app/ui/ObserverManager;


# instance fields
.field private observerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zte/update/app/ui/UiObserver;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/update/app/ui/ObserverManager;->observerMap:Ljava/util/WeakHashMap;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/zte/update/app/ui/ObserverManager;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/zte/update/app/ui/ObserverManager;->instance:Lcom/zte/update/app/ui/ObserverManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/zte/update/app/ui/ObserverManager;

    invoke-direct {v0}, Lcom/zte/update/app/ui/ObserverManager;-><init>()V

    sput-object v0, Lcom/zte/update/app/ui/ObserverManager;->instance:Lcom/zte/update/app/ui/ObserverManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/zte/update/app/ui/ObserverManager;->instance:Lcom/zte/update/app/ui/ObserverManager;

    return-object v0
.end method

.method private varargs updateObserver(Ljava/lang/ref/WeakReference;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "key"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zte/update/app/ui/UiObserver;",
            ">;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, weak:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/app/ui/UiObserver;

    invoke-interface {v1, p2, p3}, Lcom/zte/update/app/ui/UiObserver;->update(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V
    .locals 2
    .parameter "key"
    .parameter "observer"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/zte/update/app/ui/ObserverManager;->observerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 71
    .local v0, observers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;>;"
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #observers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local v0       #observers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;>;"
    iget-object v1, p0, Lcom/zte/update/app/ui/ObserverManager;->observerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V
    .locals 4
    .parameter "key"
    .parameter "observer"

    .prologue
    .line 83
    iget-object v3, p0, Lcom/zte/update/app/ui/ObserverManager;->observerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 84
    .local v1, observers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;>;"
    if-nez v1, :cond_1

    .line 95
    :cond_0
    return-void

    .line 87
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 90
    .local v2, weak:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_2

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter "data"

    .prologue
    .line 30
    iget-object v3, p0, Lcom/zte/update/app/ui/ObserverManager;->observerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 31
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;>;"
    if-nez v0, :cond_1

    .line 53
    :cond_0
    return-void

    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 35
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 37
    .local v2, weak:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/zte/update/app/ui/UiObserver;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 40
    :cond_2
    invoke-direct {p0, v2, p1, p2}, Lcom/zte/update/app/ui/ObserverManager;->updateObserver(Ljava/lang/ref/WeakReference;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method
