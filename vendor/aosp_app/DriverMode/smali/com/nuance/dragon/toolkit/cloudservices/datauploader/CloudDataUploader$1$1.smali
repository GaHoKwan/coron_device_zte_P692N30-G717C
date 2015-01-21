.class final Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;
.super Lcom/nuance/dragon/toolkit/util/internal/a$b;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

.field final synthetic c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->a:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/util/internal/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 8

    new-instance v6, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;

    const-string v7, "UPLOAD_DONE"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->a:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->e:Lcom/nuance/dragon/toolkit/grammar/WordList;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->c(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)I

    move-result v4

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->d(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    return-object v6
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->g:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->c:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->finish()V

    :cond_0
    return-void
.end method
