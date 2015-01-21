.class public Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;
.super Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# static fields
.field private static final CHINESE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LETTER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final _context:Landroid/content/Context;

.field private _cursor:Landroid/database/Cursor;

.field private _next:Lcom/nuance/dragon/toolkit/grammar/WordAction;

.field private _observer:Landroid/database/ContentObserver;

.field protected final _uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\u4e00-\u9fbb]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->CHINESE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[A-Za-z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->LETTER_PATTERN:Ljava/util/regex/Pattern;

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

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZZLandroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZLandroid/content/Context;)V

    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_context:Landroid/content/Context;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_uri:Landroid/net/Uri;

    invoke-virtual {p0, p3}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->initialize(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->onContentUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Lcom/nuance/dragon/toolkit/grammar/WordAction;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainChinese(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainLetter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(C)Z
    .locals 1

    invoke-static {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method public static getNameVariantFromId(I)I
    .locals 1

    const/high16 v0, -0x4000

    and-int/2addr v0, p0

    return v0
.end method

.method private static isContainChinese(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->CHINESE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static isContainLetter(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->LETTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static isLetter(C)Z
    .locals 1

    const/16 v0, 0x60

    if-ge v0, p0, :cond_0

    const/16 v0, 0x7b

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x40

    if-ge v0, p0, :cond_2

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getPlatformFullIterator()Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;
    .locals 8

    const/4 v1, 0x4

    const/4 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_uri:Landroid/net/Uri;

    const/16 v2, 0x9

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

    const-string v4, "data5"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "data7"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "data8"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "data9"

    aput-object v4, v2, v3

    const-string v3, "mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;

    invoke-direct {v0, p0, v6, v7}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error getting cursor for URI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_uri:Landroid/net/Uri;

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

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_observer:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_observer:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method protected watchForContentUpdates(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_observer:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_uri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
