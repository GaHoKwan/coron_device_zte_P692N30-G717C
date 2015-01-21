.class final Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;
.super Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->a:Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final getNext(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 7

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->b:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->d:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->e:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->f:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const-string v0, "s"

    invoke-virtual {v3, v0, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "al"

    invoke-virtual {v3, v0, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "ar"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;B)V

    :cond_4
    return-object v0
.end method

.method protected final init(Landroid/database/Cursor;)V
    .locals 2

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->b:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->c:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->d:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->e:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;->f:I

    return-void
.end method
