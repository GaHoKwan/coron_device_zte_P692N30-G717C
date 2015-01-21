.class public Lcom/nuance/dragon/toolkit/elvis/Constraint;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# static fields
.field public static final END:Ljava/lang/String; = "_CONSTRAINT_CLASS_END"

.field public static final START:Ljava/lang/String; = "_CONSTRAINT_CLASS_START"


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Z

.field private final f:Ljava/util/HashMap;

.field private final g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->h:Z

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/Constraint;
    .locals 9

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "id not defined in JSON object."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/Constraint;

    invoke-direct {v1, v0}, Lcom/nuance/dragon/toolkit/elvis/Constraint;-><init>(Ljava/lang/String;)V

    const-string v0, "from"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v0, "to"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v0, "pen"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v5, v0, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v5, v0, :cond_3

    :cond_2
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "The \'from\', \'to\', and \'penalty\' arrays must have the same length."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->addTransition(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private f()V
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v4, v2

    move v5, v2

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;

    iget v9, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->c:I

    if-eqz v9, :cond_1

    move v5, v3

    :cond_1
    iget-object v9, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    const-string v10, "_CONSTRAINT_CLASS_START"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v4, v3

    :cond_2
    :goto_1
    iget-object v9, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    const-string v10, "_CONSTRAINT_CLASS_END"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v9, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v9, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-nez v4, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Constraint is missing transition from Constraint.START. ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    :goto_2
    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constraint is missing transition to Constraint.END. ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    :cond_6
    const/4 v1, 0x2

    if-ge v6, v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constraint must contain at least 2 transitions. ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    :cond_7
    if-gtz v8, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constraint must contain at least 1 word slot. ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    iput v6, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->d:I

    iput v8, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->c:I

    iput-boolean v5, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->e:Z

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->b:Z

    iput-boolean v3, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    return-void

    :cond_8
    move v2, v0

    goto :goto_3

    :cond_9
    move v0, v3

    goto :goto_2
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public addTransition(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v0, "fromWordSlot"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "toWordSlot"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "fromWordSlot"

    const-string v3, "not equal to Constraint.END"

    const-string v0, "_CONSTRAINT_CLASS_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "toWordSlot"

    const-string v2, "not equal to Constraint.START"

    const-string v3, "_CONSTRAINT_CLASS_START"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v2, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;-><init>(Lcom/nuance/dragon/toolkit/elvis/Constraint;Ljava/lang/String;Ljava/lang/String;IB)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v5, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f()V

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->b:Z

    return v0
.end method

.method final c()I
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f()V

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->d:I

    return v0
.end method

.method public copy()Lcom/nuance/dragon/toolkit/elvis/Constraint;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/Constraint;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/Constraint;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    iput-boolean v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->b:Z

    iput-boolean v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->b:Z

    iget v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->c:I

    iput v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->c:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->d:I

    iput v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->d:I

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->e:Z

    iput-boolean v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->e:Z

    return-object v0
.end method

.method final d()I
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f()V

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->c:I

    return v0
.end method

.method final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f()V

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->e:Z

    return v0
.end method

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
    instance-of v2, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->h:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->h:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->c:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->e:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->e:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->b:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->b:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->d:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->d:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAlwaysRebuild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->h:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v3, 0x0

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->h:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->c:I

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v3

    :goto_2
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->b:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->d:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    if-nez v4, :cond_4

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->a:Z

    if-eqz v3, :cond_5

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method public setAlwaysRebuild(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->h:Z

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "id"

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->g:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_2
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v0, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->c:I

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception converting to JSON"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v0, "from"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "to"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pen"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
