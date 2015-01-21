.class final Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager$1;
.super Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager;

.field private b:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager$1;->a:Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final getNext(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager$1;->b:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-direct {v3, v2, v1}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method protected final init(Landroid/database/Cursor;)V
    .locals 2

    invoke-static {}, Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/PlaylistManager$1;->b:I

    return-void
.end method
