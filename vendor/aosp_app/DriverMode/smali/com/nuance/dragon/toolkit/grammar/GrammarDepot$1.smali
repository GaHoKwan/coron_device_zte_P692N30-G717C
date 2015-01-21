.class final Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    iput p2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)I

    move-result v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->a:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    move-result-object v4

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->c(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Z

    move-result v5

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->d(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->uploadServerWordList(Ljava/lang/String;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;ZLcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    move-result-object v3

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->c(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Z

    move-result v4

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->d(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->uploadServerWordLists(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;ZLcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method
