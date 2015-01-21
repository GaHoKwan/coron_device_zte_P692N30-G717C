.class public Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private final b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

.field private final c:Lcom/nuance/dragon/toolkit/util/internal/a;

.field private d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cloudServices"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "config"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->c:Lcom/nuance/dragon/toolkit/util/internal/a;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    return-object v0
.end method

.method private static a(Lcom/nuance/dragon/toolkit/data/Data$Sequence;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v1, "list"

    invoke-virtual {v0, v1, p0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    const-string v0, "action"

    invoke-virtual {v1, v0, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 6

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v1, "num_data_blocks"

    invoke-virtual {v0, v1, p4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;I)V

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v2, v3, p2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v3, "structured_content_category"

    invoke-virtual {v2, v3, p3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "current_checksum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "new_checksum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->getChecksum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "algorithm_id"

    const-string v4, "MD5"

    invoke-virtual {v2, v3, v4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    const-string v2, "checksums"

    invoke-virtual {v0, v2, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Sequence;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3, p0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v2, v3, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v3, "structured_content_category"

    invoke-virtual {v2, v3, p2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "actions"

    invoke-virtual {v2, v3, p3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    const-string v2, "data_list"

    invoke-virtual {v0, v2, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;ZLjava/lang/String;I)Lcom/nuance/dragon/toolkit/data/Data$Sequence;
    .locals 8

    new-instance v4, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v4}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v1, "action"

    const-string v2, "clear_all"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_0
    const/4 v1, 0x1

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    move v3, v1

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v2, p3, -0x1

    if-lez p3, :cond_7

    invoke-interface {p0}, Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->isAdded()Z

    move-result v5

    if-eq v3, v5, :cond_1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v5

    if-lez v5, :cond_1

    if-eqz v3, :cond_3

    const-string v3, "add"

    :goto_1
    invoke-static {v1, v3}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/data/Data$Sequence;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->isAdded()Z

    move-result v0

    const-string v3, "contacts"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/Word;->getCustomForm()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v6, "full_name"

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    move p3, v2

    move v3, v0

    goto :goto_0

    :cond_3
    const-string v3, "remove"

    goto :goto_1

    :cond_4
    const-string v3, "structured_content"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/Word;->getUserId()I

    move-result v6

    if-ltz v6, :cond_5

    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v7, "content_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v7, v6}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;I)V

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/Word;->getCustomForm()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v3, v6, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_5
    invoke-virtual {v1, v3}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    move p3, v2

    move v3, v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Ljava/lang/String;)V

    move p3, v2

    move v3, v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v0

    if-lez v0, :cond_8

    if-eqz v3, :cond_9

    const-string v0, "add"

    :goto_2
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/data/Data$Sequence;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_8
    return-object v4

    :cond_9
    const-string v0, "remove"

    goto :goto_2
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;ZILcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V

    return-void
.end method

.method private a(Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;ZILcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V
    .locals 13

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->cancel()V

    new-instance v3, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;-><init>(B)V

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    new-instance v10, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    iget-object v11, v1, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandName:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    iget-object v12, v1, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandSettings:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    iget v8, v2, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandTimeoutMs:I

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v1

    invoke-direct/range {v4 .. v9}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;IZ)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v1, v10}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    move/from16 v0, p7

    invoke-virtual {v1, v10, v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;->addTransaction(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->c:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v4, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;

    move-object v5, p0

    move-object v6, p1

    move/from16 v7, p6

    move-object/from16 v8, p5

    move-object v9, v3

    invoke-direct/range {v4 .. v10}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$2;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;ZLcom/nuance/dragon/toolkit/grammar/WordList;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    invoke-virtual {v1, v4}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Lcom/nuance/dragon/toolkit/util/internal/a$b;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/util/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->c:Lcom/nuance/dragon/toolkit/util/internal/a;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;)Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->i(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->i(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    :cond_1
    return-void
.end method

.method public deleteAll(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->cancel()V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    invoke-direct {v0, v6}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;-><init>(B)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->d:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandName:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;

    invoke-direct {v4, p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$3;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;)V

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->b:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    iget v5, v5, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandTimeoutMs:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;

    const-string v2, "DATA_BLOCK"

    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v4, "delete_all"

    invoke-virtual {v3, v4, v7}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;I)V

    const-string v4, "data_list"

    new-instance v5, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v5}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    invoke-direct {v0, v2, v3}, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;

    const-string v2, "UPLOAD_DONE"

    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v4, "num_data_blocks"

    invoke-virtual {v3, v4, v7}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;I)V

    const-string v4, "checksums"

    new-instance v5, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v5}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    invoke-direct {v0, v2, v3}, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->finish()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-virtual {v0, v1, v6}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;->addTransaction(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V

    return-void
.end method

.method public uploadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;ZLcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V
    .locals 9

    const-string v0, "grammarId"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "type"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "list"

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener"

    invoke-static {v0, p6}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v7, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->a(Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;ZILcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V

    return-void
.end method
