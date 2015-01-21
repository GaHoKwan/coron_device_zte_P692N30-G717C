.class public final Lcom/pim/vcard/VCardInterpreterCollection;
.super Ljava/lang/Object;
.source "VCardInterpreterCollection.java"

# interfaces
.implements Lcom/pim/vcard/VCardInterpreter;


# instance fields
.field private final mInterpreterCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/pim/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pim/vcard/VCardInterpreter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, interpreterCollection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/pim/vcard/VCardInterpreter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    .line 31
    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    return-void

    .line 44
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 45
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/pim/vcard/VCardInterpreter;->end()V

    goto :goto_0
.end method

.method public endEntry()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    return-void

    .line 56
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 57
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/pim/vcard/VCardInterpreter;->endEntry()V

    goto :goto_0
.end method

.method public endProperty()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    return-void

    .line 68
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 69
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/pim/vcard/VCardInterpreter;->endProperty()V

    goto :goto_0
.end method

.method public getCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/pim/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    return-object v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    return-void

    .line 74
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 75
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyGroup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    return-void

    .line 80
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 81
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    return-void

    .line 86
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 87
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    return-void

    .line 92
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 93
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    return-void

    .line 98
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 99
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Lcom/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    return-void

    .line 38
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 39
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/pim/vcard/VCardInterpreter;->start()V

    goto :goto_0
.end method

.method public startEntry()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 51
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/pim/vcard/VCardInterpreter;->startEntry()V

    goto :goto_0
.end method

.method public startProperty()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    return-void

    .line 62
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardInterpreter;

    .line 63
    .local v0, builder:Lcom/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/pim/vcard/VCardInterpreter;->startProperty()V

    goto :goto_0
.end method
