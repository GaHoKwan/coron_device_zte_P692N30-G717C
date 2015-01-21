.class public Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;
.super Lcom/nuance/dragon/toolkit/language/LanguageEvent;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/List;

.field private c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

.field private final d:Ljava/util/Map;

.field private final e:Lcom/nuance/dragon/toolkit/file/FileManager;

.field private final f:Ljava/util/HashMap;

.field private final g:Ljava/util/HashMap;

.field private final h:Ljava/util/HashMap;

.field private i:Ljava/util/HashMap;

.field private final j:Ljava/util/ArrayList;

.field private k:I

.field private l:Z

.field private m:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/language/LanguageEvent;-><init>()V

    const-string v0, "grammars"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "grammars"

    const-string v3, "non-empty"

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/language/Language;->getGrammarLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    iput-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    iput-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    iput-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->j:Ljava/util/ArrayList;

    iput v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->k:I

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->l:Z

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->m:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/nuance/dragon/toolkit/file/FileManager;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/language/LanguageEvent;-><init>()V

    const-string v0, "grammars"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "grammars"

    const-string v4, "non-empty"

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "contentManagers"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "contentManagers"

    const-string v3, "non-empty"

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "fileManager"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NMT version: 1.4.2-B005 REL"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/language/Language;->getGrammarLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ContentManagerEntry cannot have an empty or null name or ContentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentManagers must not contain 2 ContentManagerEntry with the same name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;

    invoke-direct {v4, p0, v3}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;I)V

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    move-result-object v3

    const-string v5, "GrammarDepot"

    invoke-virtual {v3, v5, v4}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->setInitListener(Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->j:Ljava/util/ArrayList;

    iput v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->k:I

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->l:Z

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->m:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)I
    .locals 2

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->k:I

    return v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/grammar/WordList;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "server"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordList;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Missing content manager or file manager."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find content manager for word list: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lst"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->createWordList(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->k:I

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->l:Z

    return v0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/List;)Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;
    .locals 18

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ContentManagerEntry cannot have an empty or null name or ContentManager."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "contentManagers must not contain 2 ContentManagerEntry with the same name."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v3, v2

    :cond_4
    const-string v2, "grammars"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v2, 0x0

    move v5, v2

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_14

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v2, "language"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/language/Languages;->lookupFromGrammarLanguage(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v8

    if-nez v8, :cond_5

    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Undefined grammar language: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string v2, "scenarios"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v2, "elvis_grammar"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v11

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "contentManagers must contain a ContentManagerEntry named: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_8
    const-string v2, "vocon_grammar"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "contentManagers must contain a ContentManagerEntry named: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_b
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/grammar/Scenario;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v15

    if-eqz v15, :cond_e

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "contentManagers must contain a ContentManagerEntry named: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_e
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_f
    const-string v4, ""

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_11
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "The following entries in contentManagers are not referenced by this GrammarDepot: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    new-instance v2, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-direct {v2, v8, v11, v10, v13}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;-><init>(Lcom/nuance/dragon/toolkit/language/Language;Ljava/util/List;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/vocon/Grammar;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    :cond_14
    new-instance v2, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v2, v6, v0, v1}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;-><init>(Ljava/util/List;Ljava/util/List;Lcom/nuance/dragon/toolkit/file/FileManager;)V

    return-object v2
.end method

.method public static varargs createFromJSON(Lorg/json/JSONObject;Lcom/nuance/dragon/toolkit/file/FileManager;[Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v1}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->createFromJSON(Lorg/json/JSONObject;Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/List;)Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Ljava/util/HashMap;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;)Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    return-object v0
.end method


# virtual methods
.method public cancelServerWordListsUpload()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearServerWordLists(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v0, "Upload is already in progress.  Cannot clear Word List."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->m:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    invoke-direct {v1, p1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;)V

    new-instance v2, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$4;-><init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Ljava/util/HashMap;Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->deleteAll(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$DeleteListener;)V

    goto :goto_0
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
    instance-of v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/file/FileManager;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    if-eqz v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    if-nez v2, :cond_10

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    if-eqz v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    if-nez v2, :cond_12

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getAcceptedWordListChecksum(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList;->getAcceptedChecksum()I

    move-result v0

    return v0
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getElvisGrammar()Lcom/nuance/dragon/toolkit/elvis/Grammar;
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "elvis"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/grammar/WordList;

    :goto_0
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing required Elvis wordlist: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    if-nez v1, :cond_3

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lst"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->createWordList(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v1

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v1, v0}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to attach required Elvis wordlist: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :cond_6
    move-object v0, v3

    goto :goto_1
.end method

.method public getLanguage()Lcom/nuance/dragon/toolkit/language/Language;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v0

    return-object v0
.end method

.method public getScenario(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/grammar/Scenario;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Scenario;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredContactListId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, v5}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Missing required Server contact list: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, v3, v1}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to attach required Server contact list: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Missing required Server wordlist: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4, v1}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to attach required Server wordlist: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getVoconGrammar()Lcom/nuance/dragon/toolkit/vocon/Grammar;
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "vocon"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/grammar/WordList;

    :goto_0
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing required Vocon wordlist: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    if-nez v1, :cond_3

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lst"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->createWordList(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v1

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v1, v0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to attach required Vocon wordlist: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :cond_6
    move-object v0, v3

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    if-nez v2, :cond_7

    :goto_7
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->e:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public onApplicationLanguageChange(Ljava/lang/Object;Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;)V
    .locals 3

    const-string v0, "cloudServices"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cloudServices"

    const-string v1, "instance of CloudServices"

    instance-of v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->cancelServerWordListsUpload()V

    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$5;

    invoke-direct {v0, p0, p2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$5;-><init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;)V

    invoke-virtual {p0, p1, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->clearServerWordLists(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V

    return-void
.end method

.method public resetServerWordLists(Ljava/util/List;)Ljava/util/List;
    .locals 8

    const/4 v7, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Scenario;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredContactListId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v0, v7}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to reset custom word list: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v5, "contacts"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    invoke-direct {p0, v1, v7}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to reset contact list: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Word list not found in grammar depot: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public setCloudDataUploaderConfig(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->m:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    return-void
.end method

.method public setLanguage(Lcom/nuance/dragon/toolkit/language/Language;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/language/Language;->getGrammarLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    const-string v2, "language"

    const-string v3, "a configured language"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 9

    new-instance v2, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    new-instance v3, Lcom/nuance/dragon/toolkit/util/a/a;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/util/a/a;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    new-instance v5, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v5}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    new-instance v6, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v6}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/grammar/Scenario;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    goto :goto_1

    :cond_0
    const-string v1, "language"

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/dragon/toolkit/language/Language;->getGrammarLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "scenarios"

    invoke-virtual {v5, v1, v6}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "elvis_grammar"

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->c(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    const-string v1, "vocon_grammar"

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->d(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    invoke-virtual {v3, v5}, Lcom/nuance/dragon/toolkit/util/a/a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "grammars"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v2
.end method

.method public uploadServerWordList(Ljava/lang/String;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;ZLcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload (\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\") is already in progress. Not starting new upload."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x4

    invoke-interface {p4, p1, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->l:Z

    if-eqz v0, :cond_8

    new-instance v6, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;

    invoke-direct {v6, p0, p4}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$2;-><init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v3

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Scenario;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredContactListId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v2, "contacts"

    :cond_4
    if-eqz p1, :cond_9

    invoke-direct {p0, p1, v4}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v0, "Upload failed. Cannot load word list"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->cancelServerWordListsUpload()V

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    invoke-interface {p4, p1, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getWordListType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getWordListCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->m:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    invoke-direct {v0, p2, v1}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->uploadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;ZLcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V

    move v0, v7

    :goto_2
    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    const-string v0, "unknown"

    invoke-interface {p4, v0, v7}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;ZLcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move v0, v4

    goto :goto_2
.end method

.method public uploadServerWordLists(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->uploadServerWordLists(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;ZLcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V

    return-void
.end method

.method public uploadServerWordLists(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;ZLcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V
    .locals 12

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const-string v0, "Upload is already in progress. Not starting new upload."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v0, "unknown"

    const/4 v1, 0x4

    invoke-interface {p3, v0, v1}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->l:Z

    if-eqz v0, :cond_9

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;

    invoke-direct {v6, p0, v8, p3}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$3;-><init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Ljava/util/HashMap;Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V

    const/4 v1, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->c:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;->b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarEntry;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/nuance/dragon/toolkit/grammar/Scenario;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredContactListId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredWordListIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getWordListType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getWordListCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getRequiredContactListId()Ljava/lang/String;

    goto :goto_1

    :cond_4
    iput-object v8, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v0, "Upload failed.  Cannot load contact list"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->cancelServerWordListsUpload()V

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    invoke-interface {p3, v1, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->m:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    invoke-direct {v0, p1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;)V

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "contacts"

    const/4 v3, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->uploadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;ZLcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V

    const/4 v0, 0x1

    :cond_6
    const/4 v1, 0x0

    move v7, v1

    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_8

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->a(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;

    move-result-object v4

    if-nez v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Upload failed.  Cannot load word list:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->cancelServerWordListsUpload()V

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    invoke-interface {p3, v1, v0}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->m:Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;

    invoke-direct {v0, p1, v5}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;)V

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader;->uploadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/WordList;ZLcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$UploadListener;)V

    const/4 v1, 0x1

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v0, v1

    goto :goto_3

    :cond_8
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->i:Ljava/util/HashMap;

    const-string v0, "unknown"

    const/4 v1, 0x1

    invoke-interface {p3, v0, v1}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;->onComplete(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;ZLcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
