.class public abstract Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;
.super Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# instance fields
.field protected final _uri:Landroid/net/Uri;

.field private a:Landroid/database/ContentObserver;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/net/Uri;ZZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZLandroid/content/Context;)V

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;->_uri:Landroid/net/Uri;

    invoke-virtual {p0, p4}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;->initialize(Z)V

    return-void
.end method


# virtual methods
.method protected stopWatchingForContentUpdates(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;->a:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;->a:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method protected watchForContentUpdates(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;->a:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;->_uri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/UriContentManager;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
