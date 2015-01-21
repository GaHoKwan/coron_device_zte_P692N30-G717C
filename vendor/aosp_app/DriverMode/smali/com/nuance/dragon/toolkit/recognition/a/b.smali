.class public final Lcom/nuance/dragon/toolkit/recognition/a/b;
.super Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/a/a;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/Map;

.field private e:Ljava/lang/String;

.field private final f:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->d:Ljava/util/Map;

    iput-wide p1, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->f:D

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/recognition/a/a$a;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;)V
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/a/a$b;

    invoke-direct {v0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/a/a$b;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/a/a$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/recognition/a/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    return-object v0
.end method

.method public final getConfidenceScore()D
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->f:D

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
