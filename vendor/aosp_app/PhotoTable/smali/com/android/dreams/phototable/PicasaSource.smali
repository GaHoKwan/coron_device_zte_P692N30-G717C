.class public Lcom/android/dreams/phototable/PicasaSource;
.super Lcom/android/dreams/phototable/PhotoSource;
.source "PicasaSource.java"


# static fields
.field private static final PICASA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final PICASA_ALBUM_ID:Ljava/lang/String; = "album_id"

.field private static final PICASA_ALBUM_PATH:Ljava/lang/String; = "albums"

.field private static final PICASA_ALBUM_TYPE:Ljava/lang/String; = "album_type"

.field private static final PICASA_ALBUM_UPDATED:Ljava/lang/String; = "date_updated"

.field private static final PICASA_ALBUM_USER:Ljava/lang/String; = "user_id"

.field private static final PICASA_AUTHORITY:Ljava/lang/String; = "com.google.android.gallery3d.GooglePhotoProvider"

.field private static final PICASA_ID:Ljava/lang/String; = "_id"

.field private static final PICASA_PHOTO_PATH:Ljava/lang/String; = "photos"

.field private static final PICASA_POSTS_TYPE:Ljava/lang/String; = "Buzz"

.field private static final PICASA_ROTATION:Ljava/lang/String; = "rotation"

.field private static final PICASA_THUMB:Ljava/lang/String; = "thumbnail_url"

.field private static final PICASA_TITLE:Ljava/lang/String; = "title"

.field private static final PICASA_TYPE_FULL_VALUE:Ljava/lang/String; = "full"

.field private static final PICASA_TYPE_IMAGE_VALUE:Ljava/lang/String; = "image"

.field private static final PICASA_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final PICASA_TYPE_SCREEN_VALUE:Ljava/lang/String; = "screennail"

.field private static final PICASA_TYPE_THUMB_VALUE:Ljava/lang/String; = "thumbnail"

.field private static final PICASA_UPLOAD_TYPE:Ljava/lang/String; = "InstantUpload"

.field private static final PICASA_URL:Ljava/lang/String; = "content_url"

.field private static final PICASA_URL_KEY:Ljava/lang/String; = "content_url"

.field private static final PICASA_USER_PATH:Ljava/lang/String; = "users"

.field private static final TAG:Ljava/lang/String; = "PhotoTable.PicasaSource"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDisplayLongSide:I

.field private mFoundAlbumIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxPostAblums:I

.field private final mMaxRecycleSize:I

.field private mNextPosition:I

.field private final mPostsAlbumName:Ljava/lang/String;

.field private final mRecycleBin:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnknownAlbumName:Ljava/lang/String;

.field private final mUploadsAlbumName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "context"
    .parameter "settings"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/dreams/phototable/PhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 83
    const-string v0, "PhotoTable.PicasaSource"

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSourceName:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I

    .line 85
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mMaxPostAblums:I

    .line 86
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0003

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Posts"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mPostsAlbumName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0004

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Instant Uploads"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mUploadsAlbumName:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0005

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Unknown"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mUnknownAlbumName:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mMaxRecycleSize:I

    .line 90
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    .line 93
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoSource;->fillQueue()V

    .line 94
    invoke-direct {p0}, Lcom/android/dreams/phototable/PicasaSource;->getDisplayLongSide()I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mDisplayLongSide:I

    .line 95
    return-void
.end method

.method private getDisplayLongSide()I
    .locals 4

    .prologue
    .line 98
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 99
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoSource;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 101
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private getFoundAlbums()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mFoundAlbumIds:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PicasaSource;->findAlbums()Ljava/util/Collection;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mFoundAlbumIds:Ljava/util/Set;

    return-object v0
.end method

.method private resolveAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    .line 219
    const-string v8, "unknown"

    .line 220
    .local v8, displayName:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "account"

    aput-object v1, v2, v0

    .line 221
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 226
    .local v9, picasaUriBuilder:Landroid/net/Uri$Builder;
    const/4 v7, 0x0

    .line 228
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 230
    if-eqz v7, :cond_2

    .line 231
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 232
    const-string v0, "account"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 233
    .local v6, accountIndex:I
    if-ltz v6, :cond_0

    .line 234
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 242
    .end local v6           #accountIndex:I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 243
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_1
    return-object v8

    .line 239
    :cond_2
    :try_start_1
    const-string v0, "PhotoTable.PicasaSource"

    const-string v1, "received a null cursor in resolveAccount()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 243
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private resolveAlbumIds(Ljava/lang/String;)Ljava/util/Collection;
    .locals 12
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 251
    .local v6, albumIds:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v0, "PhotoTable.PicasaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolving "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, parts:[Ljava/lang/String;
    array-length v0, v9

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-object v6

    .line 258
    :cond_1
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "date_updated"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "user_id"

    aput-object v1, v2, v0

    .line 260
    .local v2, projection:[Ljava/lang/String;
    const-string v5, "date_updated DESC"

    .line 261
    .local v5, order:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v9, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v9, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "albums"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v4, "image"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 268
    .local v10, picasaUriBuilder:Landroid/net/Uri$Builder;
    const/4 v7, 0x0

    .line 269
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 272
    if-eqz v7, :cond_5

    .line 273
    :try_start_0
    const-string v0, "PhotoTable.PicasaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " resolved to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " albums"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 277
    .local v8, idIndex:I
    const-string v0, "album_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 279
    .local v11, typeIndex:I
    if-gez v8, :cond_3

    .line 280
    const-string v0, "PhotoTable.PicasaSource"

    const-string v1, "can\'t find the ID column!"

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .end local v8           #idIndex:I
    .end local v11           #typeIndex:I
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 294
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 282
    .restart local v8       #idIndex:I
    .restart local v11       #typeIndex:I
    :cond_3
    :goto_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 293
    .end local v8           #idIndex:I
    .end local v11           #typeIndex:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 294
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 290
    :cond_5
    :try_start_2
    const-string v0, "PhotoTable.PicasaSource"

    const-string v1, "received a null cursor in resolveAlbumIds()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public findAlbums()Ljava/util/Collection;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    const-string v2, "PhotoTable.PicasaSource"

    const-string v3, "finding albums"

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v12, foundAlbums:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/dreams/phototable/PhotoSource$AlbumData;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v9, accounts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "thumbnail_url"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "album_type"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "user_id"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "date_updated"

    aput-object v3, v4, v2

    .line 314
    .local v4, projection:[Ljava/lang/String;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "albums"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "type"

    const-string v5, "image"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    .line 319
    .local v17, picasaUriBuilder:Landroid/net/Uri$Builder;
    const/4 v10, 0x0

    .line 321
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 323
    if-eqz v10, :cond_13

    .line 324
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 326
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 327
    .local v14, idIndex:I
    const-string v2, "thumbnail_url"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 328
    .local v18, thumbIndex:I
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 329
    .local v20, titleIndex:I
    const-string v2, "album_type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 330
    .local v22, typeIndex:I
    const-string v2, "date_updated"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 331
    .local v25, updatedIndex:I
    const-string v2, "user_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 333
    .local v27, userIndex:I
    if-gez v14, :cond_2

    .line 334
    const-string v2, "PhotoTable.PicasaSource"

    const-string v3, "can\'t find the ID column!"

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .end local v14           #idIndex:I
    .end local v18           #thumbIndex:I
    .end local v20           #titleIndex:I
    .end local v22           #typeIndex:I
    .end local v25           #updatedIndex:I
    .end local v27           #userIndex:I
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 407
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_1
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " items."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mFoundAlbumIds:Ljava/util/Set;

    .line 412
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 336
    .restart local v14       #idIndex:I
    .restart local v18       #thumbIndex:I
    .restart local v20       #titleIndex:I
    .restart local v22       #typeIndex:I
    .restart local v25       #updatedIndex:I
    .restart local v27       #userIndex:I
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoTable.PicasaSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 338
    .local v13, id:Ljava/lang/String;
    if-ltz v27, :cond_c

    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 339
    .local v26, user:Ljava/lang/String;
    :goto_2
    if-ltz v22, :cond_d

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 340
    .local v21, type:Ljava/lang/String;
    :goto_3
    if-ltz v22, :cond_e

    const-string v2, "Buzz"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v15, 0x1

    .line 341
    .local v15, isPosts:Z
    :goto_4
    if-ltz v22, :cond_f

    const-string v2, "InstantUpload"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v16, 0x1

    .line 343
    .local v16, isUpload:Z
    :goto_5
    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 344
    .local v8, account:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/dreams/phototable/PicasaSource;->resolveAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_3
    if-eqz v15, :cond_4

    .line 350
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replacing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Buzz"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoTable.PicasaSource:Buzz:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 354
    :cond_4
    if-eqz v16, :cond_5

    .line 355
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replacing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "InstantUpload"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoTable.PicasaSource:InstantUpload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 359
    :cond_5
    const/16 v19, 0x0

    .line 360
    .local v19, thumbnailUrl:Ljava/lang/String;
    const-wide/16 v23, 0x0

    .line 361
    .local v23, updated:J
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 362
    .local v11, data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    if-nez v11, :cond_6

    .line 363
    new-instance v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local v11           #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 364
    .restart local v11       #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    iput-object v13, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    .line 365
    iput-object v8, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 367
    if-eqz v15, :cond_10

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mPostsAlbumName:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    .line 377
    :goto_6
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " of type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " owned by "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_6
    if-ltz v25, :cond_7

    .line 383
    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 386
    :cond_7
    if-ltz v18, :cond_8

    .line 387
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 390
    :cond_8
    iget-wide v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    move-wide/from16 v0, v23

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    .line 392
    iget-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->thumbnailUrl:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-wide v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    cmp-long v2, v2, v23

    if-nez v2, :cond_a

    .line 393
    :cond_9
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->thumbnailUrl:Ljava/lang/String;

    .line 396
    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 406
    .end local v8           #account:Ljava/lang/String;
    .end local v11           #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #idIndex:I
    .end local v15           #isPosts:Z
    .end local v16           #isUpload:Z
    .end local v18           #thumbIndex:I
    .end local v19           #thumbnailUrl:Ljava/lang/String;
    .end local v20           #titleIndex:I
    .end local v21           #type:Ljava/lang/String;
    .end local v22           #typeIndex:I
    .end local v23           #updated:J
    .end local v25           #updatedIndex:I
    .end local v26           #user:Ljava/lang/String;
    .end local v27           #userIndex:I
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_b

    .line 407
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 338
    .restart local v13       #id:Ljava/lang/String;
    .restart local v14       #idIndex:I
    .restart local v18       #thumbIndex:I
    .restart local v20       #titleIndex:I
    .restart local v22       #typeIndex:I
    .restart local v25       #updatedIndex:I
    .restart local v27       #userIndex:I
    :cond_c
    :try_start_2
    const-string v26, "-1"

    goto/16 :goto_2

    .line 339
    .restart local v26       #user:Ljava/lang/String;
    :cond_d
    const-string v21, "none"

    goto/16 :goto_3

    .line 340
    .restart local v21       #type:Ljava/lang/String;
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 341
    .restart local v15       #isPosts:Z
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 369
    .restart local v8       #account:Ljava/lang/String;
    .restart local v11       #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .restart local v16       #isUpload:Z
    .restart local v19       #thumbnailUrl:Ljava/lang/String;
    .restart local v23       #updated:J
    :cond_10
    if-eqz v16, :cond_11

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mUploadsAlbumName:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    goto/16 :goto_6

    .line 371
    :cond_11
    if-ltz v20, :cond_12

    .line 372
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    goto/16 :goto_6

    .line 374
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mUnknownAlbumName:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    goto/16 :goto_6

    .line 403
    .end local v8           #account:Ljava/lang/String;
    .end local v11           #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #idIndex:I
    .end local v15           #isPosts:Z
    .end local v16           #isUpload:Z
    .end local v18           #thumbIndex:I
    .end local v19           #thumbnailUrl:Ljava/lang/String;
    .end local v20           #titleIndex:I
    .end local v21           #type:Ljava/lang/String;
    .end local v22           #typeIndex:I
    .end local v23           #updated:J
    .end local v25           #updatedIndex:I
    .end local v26           #user:Ljava/lang/String;
    .end local v27           #userIndex:I
    :cond_13
    const-string v2, "PhotoTable.PicasaSource"

    const-string v3, "received a null cursor in findAlbums()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected findImages(I)Ljava/util/Collection;
    .locals 23
    .parameter "howMany"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const-string v1, "PhotoTable.PicasaSource"

    const-string v2, "finding images"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 109
    .local v13, foundImages:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/dreams/phototable/PhotoSource$ImageData;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mMaxRecycleSize:I

    move/from16 v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 111
    const-string v1, "PhotoTable.PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METERED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v13, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 114
    const-string v1, "PhotoTable.PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recycled "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " items."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return-object v13

    .line 119
    :cond_1
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "content_url"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "rotation"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 120
    .local v3, projection:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 121
    .local v22, usePosts:Z
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 122
    .local v8, albumIds:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/dreams/phototable/PicasaSource;->getFoundAlbums()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 123
    .local v15, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PhotoSource;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    invoke-virtual {v1, v15}, Lcom/android/dreams/phototable/AlbumSettings;->isAlbumEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 125
    .local v18, parts:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 126
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/dreams/phototable/PicasaSource;->resolveAlbumIds(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 128
    :cond_3
    const/4 v1, 0x1

    aget-object v1, v18, v1

    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    .end local v15           #id:Ljava/lang/String;
    .end local v18           #parts:[Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mMaxPostAblums:I

    if-le v1, v2, :cond_5

    .line 134
    invoke-static {v8}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 137
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v20, selection:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 139
    .local v9, albumIdx:I
    invoke-virtual {v8}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 140
    .local v7, albumId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mMaxPostAblums:I

    if-ge v9, v1, :cond_7

    .line 141
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 142
    const-string v1, " OR "

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_6
    const-string v1, "PhotoTable.PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 147
    :cond_7
    const-string v1, "PhotoTable.PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "too many albums, dropping: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 152
    .end local v7           #albumId:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "PhotoTable.PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection is ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "photos"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    .line 162
    .local v19, picasaUriBuilder:Landroid/net/Uri$Builder;
    const/4 v11, 0x0

    .line 164
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 166
    if-eqz v11, :cond_12

    .line 167
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move/from16 v0, p1

    if-le v1, v0, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PhotoSource;->mRNG:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int v2, v2, p1

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I

    .line 171
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 172
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I

    .line 174
    :cond_a
    const-string v1, "PhotoTable.PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moving to position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I

    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 177
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 178
    .local v16, idIndex:I
    const-string v1, "content_url"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 179
    .local v21, urlIndex:I
    const-string v1, "rotation"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 180
    .local v17, orientationIndex:I
    const-string v1, "album_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 182
    .local v10, bucketIndex:I
    if-gez v16, :cond_d

    .line 183
    const-string v1, "PhotoTable.PicasaSource"

    const-string v2, "can\'t find the ID column!"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v10           #bucketIndex:I
    .end local v16           #idIndex:I
    .end local v17           #orientationIndex:I
    .end local v21           #urlIndex:I
    :cond_b
    :goto_4
    if-eqz v11, :cond_c

    .line 211
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_c
    const-string v1, "PhotoTable.PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " items."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .restart local v10       #bucketIndex:I
    .restart local v16       #idIndex:I
    .restart local v17       #orientationIndex:I
    .restart local v21       #urlIndex:I
    :cond_d
    :goto_5
    :try_start_1
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v1

    move/from16 v0, p1

    if-ge v1, v0, :cond_11

    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_11

    .line 186
    if-ltz v16, :cond_f

    .line 187
    new-instance v12, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/dreams/phototable/PhotoSource$ImageData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 188
    .local v12, data:Lcom/android/dreams/phototable/PhotoSource$ImageData;
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    .line 190
    if-ltz v21, :cond_e

    .line 191
    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    .line 194
    :cond_e
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 196
    .end local v12           #data:Lcom/android/dreams/phototable/PhotoSource$ImageData;
    :cond_f
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 197
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 210
    .end local v10           #bucketIndex:I
    .end local v16           #idIndex:I
    .end local v17           #orientationIndex:I
    .end local v21           #urlIndex:I
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_10

    .line 211
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v1

    .line 200
    .restart local v10       #bucketIndex:I
    .restart local v16       #idIndex:I
    .restart local v17       #orientationIndex:I
    .restart local v21       #urlIndex:I
    :cond_11
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 201
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/dreams/phototable/PicasaSource;->mNextPosition:I

    goto :goto_4

    .line 207
    .end local v10           #bucketIndex:I
    .end local v16           #idIndex:I
    .end local v17           #orientationIndex:I
    .end local v21           #urlIndex:I
    :cond_12
    const-string v1, "PhotoTable.PicasaSource"

    const-string v2, "received a null cursor in findImages()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method protected getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;
    .locals 7
    .parameter "data"
    .parameter "longSide"

    .prologue
    .line 417
    const/4 v2, 0x0

    .line 419
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "photos"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 424
    .local v3, photoUriBuilder:Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/android/dreams/phototable/PicasaSource;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v4

    if-nez v4, :cond_0

    mul-int/lit8 v4, p2, 0x2

    iget v5, p0, Lcom/android/dreams/phototable/PicasaSource;->mDisplayLongSide:I

    if-gt v4, v5, :cond_2

    .line 426
    :cond_0
    const-string v4, "type"

    const-string v5, "screennail"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 430
    :goto_0
    iget-object v4, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 431
    const-string v4, "content_url"

    iget-object v5, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 433
    :cond_1
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 442
    .end local v3           #photoUriBuilder:Landroid/net/Uri$Builder;
    :goto_1
    if-eqz v2, :cond_3

    .line 443
    iget-object v4, p0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 444
    const-string v4, "PhotoTable.PicasaSource"

    const-string v5, "RECYCLED"

    invoke-static {v4, v5}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_2
    iget-object v4, p0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/dreams/phototable/PicasaSource;->mMaxRecycleSize:I

    if-le v4, v5, :cond_3

    .line 446
    iget-object v4, p0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_2

    .line 428
    .restart local v3       #photoUriBuilder:Landroid/net/Uri$Builder;
    :cond_2
    :try_start_1
    const-string v4, "type"

    const-string v5, "full"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 434
    .end local v3           #photoUriBuilder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v0

    .line 435
    .local v0, fnf:Ljava/io/FileNotFoundException;
    const-string v4, "PhotoTable.PicasaSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v2, 0x0

    .line 440
    goto :goto_1

    .line 437
    .end local v0           #fnf:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 438
    .local v1, ioe:Ljava/io/IOException;
    const-string v4, "PhotoTable.PicasaSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i/o exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v2, 0x0

    goto :goto_1

    .line 449
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_3
    return-object v2
.end method
