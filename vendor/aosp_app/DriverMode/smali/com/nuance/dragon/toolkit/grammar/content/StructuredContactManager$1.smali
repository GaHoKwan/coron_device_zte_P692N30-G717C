.class final Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;
.super Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->a:Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final getNext(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 9

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->b:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->d:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v6}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->h:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->i:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    :cond_1
    move-object v4, v5

    :goto_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->j:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    :cond_2
    move-object v2, v3

    :goto_1
    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->k:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    move-object v0, v1

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    const-string v8, "fn"

    invoke-virtual {v6, v8, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    const-string v5, "fnp"

    invoke-virtual {v6, v5, v4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    const-string v4, "ln"

    invoke-virtual {v6, v4, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, "lnp"

    invoke-virtual {v6, v1, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "mn"

    invoke-virtual {v6, v0, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "mnp"

    invoke-virtual {v6, v0, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-direct {v1, v7, v6}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    :cond_c
    move-object v2, v0

    goto :goto_1

    :cond_d
    move-object v4, v0

    goto :goto_0
.end method

.method protected final init(Landroid/database/Cursor;)V
    .locals 2

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->b:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->d:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->e:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->c:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->f:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->g:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->h:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->i:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->j:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredContactManager$1;->k:I

    return-void
.end method
