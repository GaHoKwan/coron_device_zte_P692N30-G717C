.class public Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;
.super Lcom/nuance/dragon/toolkit/grammar/content/SongManager;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nuance/dragon/toolkit/grammar/content/SongManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

    return-void
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->a:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getPlatformFullIterator()Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->_uri:Landroid/net/Uri;

    sget-object v3, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;->a:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/StructuredSongManager;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V

    return-object v0
.end method
