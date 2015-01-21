.class public final Lcom/nuance/dragon/toolkit/recognition/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/a/b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/a/b;->d()Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    invoke-direct {v0, v1, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/c;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-direct {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/a/c;->b:Ljava/util/List;

    return-object v0
.end method
