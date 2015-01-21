.class Lcom/mediatek/videofavorites/VideoFavoritesProvider$VideoFavoritesDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VideoFavoritesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/VideoFavoritesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoFavoritesDatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    const-string v0, "videofavorites.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 86
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 90
    const-string v0, "VideoFavoritesProvider"

    const-string v1, "video favorite provider on create"

    invoke-static {v0, v1}, Lcom/mediatek/videofavorites/VideoFavoritesProvider;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "CREATE TABLE videofavorites (_id INTEGER PRIMARY KEY,video_uri TEXT,contact_uri TEXT,name TEXT,storage INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 103
    const-string v0, "VideoFavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videofavorites/VideoFavoritesProvider;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "DROP TABLE IF EXISTS videofavorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/mediatek/videofavorites/VideoFavoritesProvider$VideoFavoritesDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    return-void
.end method
