.class public Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;
.super Ljava/lang/Object;
.source "SkitchMetaManager.java"


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    .line 9
    return-void
.end method


# virtual methods
.method public addOrUpdateSkitchMeta(Ljava/lang/String;Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 15
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    .line 18
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public containsSkitch(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 23
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 38
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;>;"
    :cond_0
    return-void

    .line 34
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;

    invoke-interface {v1}, Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;->onDestroy()V

    goto :goto_0
.end method

.method public getSkitchMeta(Ljava/lang/String;)Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;
    .locals 2
    .parameter "key"

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, meta:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/meta/SkitchMetaManager;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #meta:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;
    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;

    .line 46
    .restart local v0       #meta:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;
    :cond_0
    return-object v0
.end method
