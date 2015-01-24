.class public final Lcom/android/contacts/GroupMetaDataLoader;
.super Landroid/content/CursorLoader;
.source "GroupMetaDataLoader.java"


# static fields
.field public static final ACCOUNT_NAME:I = 0x0

.field public static final ACCOUNT_TYPE:I = 0x1

.field public static final AUTO_ADD:I = 0x5

.field private static final COLUMNS:[Ljava/lang/String; = null

.field public static final DATA_SET:I = 0x2

.field public static final DELETED:I = 0x8

.field public static final FAVORITES:I = 0x6

.field public static final GROUP_ID:I = 0x3

.field public static final IS_READ_ONLY:I = 0x7

.field public static final TITLE:I = 0x4


# instance fields
.field private mAutoRequery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favorites"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "groupUri"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 54
    invoke-static {p2}, Lcom/android/contacts/GroupMetaDataLoader;->ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    const-string v4, "account_type NOT NULL AND account_name NOT NULL AND deleted=0"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-boolean v7, p0, Lcom/android/contacts/GroupMetaDataLoader;->mAutoRequery:Z

    .line 56
    iput-boolean v7, p0, Lcom/android/contacts/GroupMetaDataLoader;->mAutoRequery:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .parameter "context"
    .parameter "groupUri"
    .parameter "autoRequery"

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-static {p2}, Lcom/android/contacts/GroupMetaDataLoader;->ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    const-string v4, "account_type NOT NULL AND account_name NOT NULL AND deleted=0"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/GroupMetaDataLoader;->mAutoRequery:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/GroupMetaDataLoader;->mAutoRequery:Z

    .line 63
    return-void
.end method

.method private static ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "groupUri"

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid group Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    return-object p0
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/contacts/GroupMetaDataLoader;->mAutoRequery:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0}, Landroid/content/Loader;->onContentChanged()V

    .line 85
    :cond_0
    return-void
.end method

.method public setAutoRequery(Z)V
    .locals 0
    .parameter "autoRequery"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/contacts/GroupMetaDataLoader;->mAutoRequery:Z

    .line 89
    return-void
.end method