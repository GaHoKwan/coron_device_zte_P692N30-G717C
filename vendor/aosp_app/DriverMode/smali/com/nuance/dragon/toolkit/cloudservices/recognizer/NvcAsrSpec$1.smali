.class final Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;
.super Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-direct {p0, p2, p3, p4}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDelayedParams()Ljava/util/List;
    .locals 12

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v0, "start"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;I)V

    const-string v0, "end"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;I)V

    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v5}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    new-instance v6, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v6}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing required contact list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    if-nez v3, :cond_1

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v7, "id"

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-static {v8}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "type"

    const-string v8, "contacts"

    invoke-virtual {v1, v7, v8}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_1
    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v7, "id"

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-static {v8}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "type"

    const-string v8, "contacts"

    invoke-virtual {v1, v7, v8}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "checksum"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList;->getAcceptedChecksum()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-static {v8, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Missing required custom word list: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    if-nez v3, :cond_5

    new-instance v9, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v9}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v10, "id"

    invoke-virtual {v9, v10, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "type"

    iget-object v11, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->a:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->b:Ljava/lang/String;

    if-eqz v10, :cond_4

    const-string v10, "structured_content_category"

    iget-object v11, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->b:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5, v9}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_5
    new-instance v9, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v9}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v10, "id"

    invoke-virtual {v9, v10, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v10, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->a:Ljava/lang/String;

    invoke-virtual {v9, v1, v10}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "structured_content_category"

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->b:Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "checksum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/nuance/dragon/toolkit/grammar/WordList;->getAcceptedChecksum()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto/16 :goto_1

    :cond_7
    if-eqz v3, :cond_8

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v1, "id"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "predefined_static_grammars"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_8
    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "grammar_list"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_9
    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "checksum_list"

    invoke-virtual {v4, v0, v6}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_a
    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;

    const-string v2, "REQUEST_INFO"

    invoke-direct {v1, v2, v4}, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
