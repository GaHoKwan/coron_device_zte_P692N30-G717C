.class public Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/language/Language;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

.field private final d:Lcom/nuance/dragon/toolkit/vocon/Grammar;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/language/Language;Ljava/util/List;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/vocon/Grammar;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Scenario;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/language/Language;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a:Lcom/nuance/dragon/toolkit/language/Language;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/elvis/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/vocon/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a:Lcom/nuance/dragon/toolkit/language/Language;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a:Lcom/nuance/dragon/toolkit/language/Language;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a:Lcom/nuance/dragon/toolkit/language/Language;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a:Lcom/nuance/dragon/toolkit/language/Language;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/language/Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b:Ljava/util/Map;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b:Ljava/util/Map;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a:Lcom/nuance/dragon/toolkit/language/Language;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b:Ljava/util/Map;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a:Lcom/nuance/dragon/toolkit/language/Language;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/language/Language;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->hashCode()I

    move-result v1

    goto :goto_3
.end method
