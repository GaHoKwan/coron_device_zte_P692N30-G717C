.class public Lcom/zte/retrieve/provider/RetrieveProvider;
.super Landroid/content/ContentProvider;
.source "RetrieveProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.zte.retrieve.provider"

.field private static final OPEN:I = 0x1

.field private static final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/zte/retrieve/provider/RetrieveProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 20
    sget-object v0, Lcom/zte/retrieve/provider/RetrieveProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.zte.retrieve.provider"

    const-string v2, "open"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 25
    const-string v0, "RetrieveProvider onCreate"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/retrieve/provider/RetrieveProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->init(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 32
    const-string v2, "RetrieveProvider query"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 33
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "ret"

    aput-object v2, v1, v4

    .line 34
    .local v1, tableCursor:[Ljava/lang/String;
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 35
    .local v0, cursor:Landroid/database/MatrixCursor;
    sget-object v2, Lcom/zte/retrieve/provider/RetrieveProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 46
    const-string v2, "RetrieveProvider query default"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    const-string v2, "RetrieveProvider query Open"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->isVersionSecondUpdateThreeWithLocalOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "1"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "0"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method
