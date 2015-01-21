.class public Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;
.super Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# instance fields
.field protected final _uri:Landroid/net/Uri;

.field private final a:Landroid/content/Context;

.field private b:Landroid/database/ContentObserver;

.field private c:Landroid/database/Cursor;

.field private d:Lcom/nuance/dragon/toolkit/grammar/WordAction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZLandroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZLandroid/content/Context;)V

    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a:Landroid/content/Context;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->_uri:Landroid/net/Uri;

    invoke-virtual {p0, p3}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->initialize(Z)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->d:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Lcom/nuance/dragon/toolkit/grammar/WordAction;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->d:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    return-object p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method public static getNameVariantFromId(I)I
    .locals 1

    const/high16 v0, -0x4000

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected getPlatformFullIterator()Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;
    .locals 8

    const/4 v1, 0x3

    const/4 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->c:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->d:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->_uri:Landroid/net/Uri;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "in_visible_group"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data3"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data7"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "data8"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "data9"

    aput-object v4, v2, v3

    const-string v3, "mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->c:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;

    invoke-direct {v0, p0, v6, v7}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error getting cursor for URI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->_uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected stopWatchingForContentUpdates(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method protected watchForContentUpdates(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->_uri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
