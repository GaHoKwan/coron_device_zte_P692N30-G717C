.class public Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# static fields
.field public static final GRAMMAR_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final GRAMMAR_CUSTOM_WORDS:Ljava/lang/String; = "custom_words"

.field public static final GRAMMAR_STRUCTURED:Ljava/lang/String; = "structured_content"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/grammar/WordList;
    .locals 1

    const-string v0, "id"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->c:Lcom/nuance/dragon/toolkit/grammar/WordList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;
    .locals 11

    const-string v0, "grammarid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "language"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "dictationtype"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "grammarList"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "grammarList"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "info"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v1, "type"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    const-string v10, "category"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v1, "category"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v8, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    invoke-direct {v8, v9, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-direct {v0, v2, v3}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->setDictationType(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v5, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    :cond_2
    const-string v1, "contactlistid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "contactlistid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->setContactListId(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addRequiredCustomWordListIds(Ljava/util/Set;)V
    .locals 6

    const-string v0, "wordListIds"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wordListIds"

    const-string v2, "not empty"

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    new-instance v3, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    const-string v4, "custom_words"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addStructuredContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "id"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "category"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    const-string v2, "structured_content"

    invoke-direct {v1, v2, p2}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attachSettings(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-void
.end method

.method public attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "wordList"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->c:Lcom/nuance/dragon/toolkit/grammar/WordList;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createRecogSpec()Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const-string v1, "dictation_language"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const-string v1, "dictation_type"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;

    const-string v1, "NVC_ASR_CMD"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const-string v3, "AUDIO_INFO"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;)V

    return-object v0
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
    instance-of v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getContactListId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getGrammarCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Invalid grammar ID"

    goto :goto_0
.end method

.method public getGrammarType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Invalid grammar ID"

    goto :goto_0
.end method

.method public getRequiredCustomWordListIds()Ljava/util/Set;
    .locals 5

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->a:Ljava/lang/String;

    const-string v4, "custom_words"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getStructuredContentIds()Ljava/util/Set;
    .locals 5

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->a:Ljava/lang/String;

    const-string v4, "structured_content"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public setContactListId(Ljava/lang/String;)V
    .locals 5

    const-string v0, "contactListId"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    new-instance v2, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    const-string v3, "contacts"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDictationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 7

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "grammarid"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "language"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "dictationtype"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v4}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v5, "id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "info"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec$a;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "contactlistid"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-object v1

    :cond_2
    :try_start_1
    const-string v0, "grammarList"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
