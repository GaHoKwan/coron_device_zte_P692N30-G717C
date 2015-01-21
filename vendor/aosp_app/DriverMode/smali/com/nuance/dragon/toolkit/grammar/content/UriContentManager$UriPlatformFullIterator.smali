.class public abstract Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

.field private final c:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a()I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->c:I

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error getting cursor for URI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a()I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->c:I

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error getting cursor for URI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a()I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->c:I

    return-void
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->init(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract getNext(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->c:I

    return v0
.end method

.method public final hasNext()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->getNext(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected abstract init(Landroid/database/Cursor;)V
.end method

.method public final next()Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->b:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->a:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->getNext(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$UriPlatformFullIterator;->next()Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 0

    return-void
.end method
