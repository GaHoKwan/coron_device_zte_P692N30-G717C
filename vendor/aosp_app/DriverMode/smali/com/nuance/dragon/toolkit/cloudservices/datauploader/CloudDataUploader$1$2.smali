.class final Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;
.super Lcom/nuance/dragon/toolkit/util/internal/a$b;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

.field final synthetic c:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

.field final synthetic d:Lcom/nuance/dragon/toolkit/util/internal/a$b;

.field final synthetic e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;ZLcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/util/internal/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->a:Z

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->b:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->c:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->d:Lcom/nuance/dragon/toolkit/util/internal/a$b;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/util/internal/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    if-ne v3, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Entering dataBlockTask, grammarId = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", clear = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->e(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->b:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->e(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v7, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v7, v7, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v8, v8, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v8}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    move-result-object v8

    iget v8, v8, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandChunkSize:I

    invoke-static {v6, v0, v7, v8}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;ZLjava/lang/String;I)Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Sequence;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->hasNext()Z

    move-result v0

    :goto_2
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    move-result-object v3

    iget v3, v3, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandChunkSize:I

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->c(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v3, v5

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    move-result-object v5

    iget v5, v5, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandTotalSize:I

    if-ge v3, v5, :cond_3

    move v3, v1

    :goto_3
    iget-object v5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->e(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/SeqChunkParam;

    const-string v1, "DATA_BLOCK"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/cloudservices/SeqChunkParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exiting dataBlockTask, grammarId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object v0

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/SeqEndParam;

    const-string v1, "DATA_BLOCK"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/cloudservices/SeqEndParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Z)Z

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/SeqStartParam;

    const-string v2, "DATA_BLOCK"

    invoke-direct {v0, v2, v4}, Lcom/nuance/dragon/toolkit/cloudservices/SeqStartParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v2, v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Z)Z

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;

    const-string v1, "DATA_BLOCK"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->f(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->c:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->e(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->c(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/util/internal/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Lcom/nuance/dragon/toolkit/util/internal/a$b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->e:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->c(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/util/internal/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$2;->d:Lcom/nuance/dragon/toolkit/util/internal/a$b;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Lcom/nuance/dragon/toolkit/util/internal/a$b;)V

    goto :goto_0
.end method
