.class final Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;
.super Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/ContactManager;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContactManager;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContactManager;

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

    const/4 v1, 0x0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->b:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v5, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v3, ""

    iget v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->e:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->f:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->g:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    move-object v2, v1

    :cond_3
    invoke-direct {v5, v4, v2}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v5, v2}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v2, v3

    goto :goto_0
.end method

.method protected final init(Landroid/database/Cursor;)V
    .locals 2

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->b:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->c:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->d:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->e:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->f:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContactManager$1;->g:I

    return-void
.end method
