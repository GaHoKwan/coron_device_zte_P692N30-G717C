.class final Lcom/nuance/dragon/toolkit/hybrid/a$1;
.super Lcom/nuance/dragon/toolkit/util/internal/a$b;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

.field final synthetic b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

.field final synthetic c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

.field final synthetic d:Lcom/nuance/dragon/toolkit/hybrid/a$a;

.field final synthetic e:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

.field final synthetic f:Lcom/nuance/dragon/toolkit/hybrid/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->f:Lcom/nuance/dragon/toolkit/hybrid/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->d:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iput-object p6, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/util/internal/a$b;-><init>()V

    return-void
.end method

.method private b()Landroid/util/Pair;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->d:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->a(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;-><init>(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Ljava/util/List;)V

    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/dragon/toolkit/recognition/InterpretException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->c(Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a(Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/a$1;->b()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->d:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->f:Lcom/nuance/dragon/toolkit/hybrid/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/a;->a(Lcom/nuance/dragon/toolkit/hybrid/a;)Lcom/nuance/dragon/toolkit/hybrid/a$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->f:Lcom/nuance/dragon/toolkit/hybrid/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a;->b(Lcom/nuance/dragon/toolkit/hybrid/a;)Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;->onResult(Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a$1;->e:Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;->onError(Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;)V

    goto :goto_0
.end method
