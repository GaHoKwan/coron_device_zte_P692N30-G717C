.class abstract Lcom/nuance/dragon/toolkit/elvis/a;
.super Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;


# instance fields
.field protected final a:Landroid/os/Handler;

.field private final b:Lcom/nuance/dragon/toolkit/elvis/e;

.field private c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/List;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/nuance/dragon/toolkit/elvis/a$b;

.field private l:Lcom/nuance/dragon/toolkit/elvis/a$a;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/e;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->b:Lcom/nuance/dragon/toolkit/elvis/e;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/elvis/Grammar;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->f:Ljava/util/List;

    iput v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->g:I

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;)Lcom/nuance/dragon/toolkit/elvis/Grammar;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/a$a;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->b:Lcom/nuance/dragon/toolkit/elvis/e;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "vs4uc"

    aput-object v0, v5, v2

    const/4 v0, 0x1

    const-string v1, "vs45std"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "vs45prem"

    aput-object v1, v5, v0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->getAvailableModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->language:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->frequencyHz:I

    if-ne p2, v3, :cond_3

    move v3, v2

    move v4, v2

    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_1

    aget-object v7, v5, v3

    iget-object v8, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->quality:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-le v4, v1, :cond_3

    move v0, v4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    aget-object v0, v5, v1

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/elvis/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->j:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/elvis/a;)V
    .locals 4

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->h:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->b:Lcom/nuance/dragon/toolkit/elvis/e;

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/elvis/e;->j()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->b:Lcom/nuance/dragon/toolkit/elvis/e;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a;->i:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->j:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->h:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->h:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$b;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/elvis/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/elvis/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->n:Z

    return v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/elvis/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    return v0
.end method


# virtual methods
.method protected abstract a()Landroid/os/Handler;
.end method

.method public cancelRebuild()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    :cond_0
    return-void
.end method

.method public final cancelRecognition()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->b()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAdaptationStatus(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationCheckListener;)V
    .locals 2

    const-string v0, "adaptationCheckListener"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$8;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$8;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationCheckListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkWakeupPhrases(Ljava/util/List;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$WakeupCheckListener;)V
    .locals 2

    const-string v0, "wakeupPhrases"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wakeupCheckListener"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/nuance/dragon/toolkit/elvis/a$9;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$WakeupCheckListener;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearGrammar(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRebuild()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRecognition()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;-><init>()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/a$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/nuance/dragon/toolkit/elvis/a$6;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableRecognitionLogging(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$10;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/nuance/dragon/toolkit/elvis/a$10;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableVerboseAndroidLogging(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->b:Lcom/nuance/dragon/toolkit/elvis/e;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/elvis/e;->b(Z)V

    return-void
.end method

.method public findConstraint(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/Constraint;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getConstraintByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/Constraint;

    move-result-object v0

    return-object v0
.end method

.method public findWordSlot(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/WordSlot;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getWordSlotByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableModels()Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->b:Lcom/nuance/dragon/toolkit/elvis/e;

    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/util/List;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/g;

    iget v1, v0, Lcom/nuance/dragon/toolkit/elvis/g;->c:I

    mul-int/lit16 v4, v1, 0x3e8

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/elvis/g;->b:Ljava/lang/String;

    const/16 v1, 0x3e80

    if-eq v4, v1, :cond_1

    const/16 v1, 0x1f40

    if-ne v4, v1, :cond_0

    :cond_1
    sget-object v6, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    array-length v7, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_0

    aget-object v8, v6, v1

    iget-object v9, v8, Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;->name:Ljava/lang/String;

    iget-object v10, v0, Lcom/nuance/dragon/toolkit/elvis/g;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;

    invoke-direct {v9, v8, v5, v4}, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Ljava/lang/String;I)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public getAvailableModels(I)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->getAvailableModels()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;

    iget v0, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->frequencyHz:I

    if-eq v0, p1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getAvailableModels(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->getAvailableModels()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->language:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getRecognitionLoggingStatus()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->h:I

    return v0
.end method

.method public initialize(Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/elvis/a;->initialize(Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$InitializeListener;)V

    return-void
.end method

.method public initialize(Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$InitializeListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Already initialized"

    invoke-static {p0, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "stateFileName"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "config"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/nuance/dragon/toolkit/elvis/a$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$InitializeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public loadGrammar(Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "grammar"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRebuild()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/nuance/dragon/toolkit/elvis/a$a;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public loadState(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nuance/dragon/toolkit/elvis/a;->loadStateAndGrammar(Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V

    return-void
.end method

.method public loadStateAndGrammar(Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V
    .locals 3

    const-string v0, "rebuildListener"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRebuild()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRecognition()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->b()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->a()V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/nuance/dragon/toolkit/elvis/a$a;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V

    :goto_1
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/a$5;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/nuance/dragon/toolkit/elvis/a$5;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;Lcom/nuance/dragon/toolkit/elvis/Grammar;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onApplicationLanguageChange(Ljava/lang/Object;Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;)V
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/a$2;

    invoke-direct {v0, p0, p2}, Lcom/nuance/dragon/toolkit/elvis/a$2;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a;->clearGrammar(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a;->release(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ReleaseListener;)V

    return-void
.end method

.method public release(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ReleaseListener;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ReleaseListener;->onReleased(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->b()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$3;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$3;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ReleaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public saveState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a;->saveState(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;)V

    return-void
.end method

.method public saveState(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/a$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$4;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveConstraintNames(Ljava/util/List;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveConstraints(Ljava/util/List;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->e:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/Constraint;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCustomPronunciations(Ljava/util/List;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "words"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$7;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/elvis/a$7;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setWakeupPenalty(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->g:I

    return-void
.end method

.method public setWakeupPhrases(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final startAdaptation(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;ZLcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phrase"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "stepListener"

    invoke-static {v0, p5}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/a$b;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/nuance/dragon/toolkit/elvis/a;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V

    return-void
.end method

.method public startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "activeConstraintNames"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultListener"

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/a$b;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public startSeamlessWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_2

    move v0, v6

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_0

    move v1, v6

    :cond_0
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wakeupPhrases"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultListener"

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-object v1, p0

    move-object v3, p4

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/a$b;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-virtual {v0, p1, p2, p3, v6}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;IZ)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/dragon/toolkit/elvis/a;->startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;ZLcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V

    return-void
.end method

.method public final startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;ZLcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "speechDetectionListener"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRecognition()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p2, :cond_3

    const-string v0, "~l"

    :goto_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-object v1, p0

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/a$b;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-virtual {v0, p1, v6}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "~s"

    goto :goto_1
.end method

.method public final startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v1, p0, Lcom/nuance/dragon/toolkit/elvis/a;->g:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/nuance/dragon/toolkit/elvis/a;->startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V

    return-void
.end method

.method public startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "A rebuild is in progress"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "audioSource"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wakeupPhrases"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultListener"

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->l:Lcom/nuance/dragon/toolkit/elvis/a$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/a;->cancelRecognition()V

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-object v1, p0

    move-object v3, p4

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/a$b;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-virtual {v0, p1, p2, p3, v6}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;IZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_1
.end method

.method public startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/nuance/dragon/toolkit/elvis/a;->startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V

    return-void
.end method

.method public final stopListening()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->p:Z

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a;->k:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
