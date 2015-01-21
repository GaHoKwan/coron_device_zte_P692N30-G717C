.class final Lcom/nuance/dragon/toolkit/vocon/d$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/nuance/dragon/toolkit/vocon/d$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$a;Ljava/util/List;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;->a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    sget-object v6, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v6, v7, v8, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/lang/String;II)Z

    move v2, v3

    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v2

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->c:Ljava/lang/String;

    iget v0, v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;->c:I

    invoke-interface {v2, v6, v1, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;->a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    sget-object v6, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->b:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v7, v8, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->b(Ljava/lang/String;ILjava/lang/String;)Z

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;->a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    sget-object v6, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->c:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    if-ne v2, v6, :cond_8

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v7, v8, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->c(Ljava/lang/String;ILjava/lang/String;)Z

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->g(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$a;->a(Lcom/nuance/dragon/toolkit/vocon/d$a;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :cond_7
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$2;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    move v2, v3

    goto/16 :goto_1
.end method
