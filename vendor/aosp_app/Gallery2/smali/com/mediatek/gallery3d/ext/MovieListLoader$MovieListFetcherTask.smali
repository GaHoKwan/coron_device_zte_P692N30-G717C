.class Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;
.super Landroid/os/AsyncTask;
.source "MovieListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/ext/MovieListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MovieListFetcherTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/mediatek/gallery3d/ext/IMovieItem;",
        "Ljava/lang/Void;",
        "Lcom/mediatek/gallery3d/ext/IMovieList;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLUMN_STEREO_TYPE:Ljava/lang/String; = "stereo_type"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/MovieListFetcherTask"


# instance fields
.field private final mCr:Landroid/content/ContentResolver;

.field private final mFetechAll:Z

.field private final mFetecherListener:Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;

.field private final mOrderBy:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/gallery3d/ext/MovieListLoader;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/ext/MovieListLoader;Landroid/content/Context;ZLcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "fetechAll"
    .parameter "l"
    .parameter "orderBy"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->this$0:Lcom/mediatek/gallery3d/ext/MovieListLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 74
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mCr:Landroid/content/ContentResolver;

    .line 75
    iput-object p4, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mFetecherListener:Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;

    .line 76
    iput-boolean p3, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mFetechAll:Z

    .line 77
    iput-object p5, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mOrderBy:Ljava/lang/String;

    .line 79
    const-string v0, "Gallery2/MovieListFetcherTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovieListFetcherTask() fetechAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orderBy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method private fillUriList(Ljava/lang/String;[Ljava/lang/String;JLcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieList;
    .locals 20
    .parameter "where"
    .parameter "whereArgs"
    .parameter "curId"
    .parameter "current"

    .prologue
    .line 161
    const/4 v15, 0x0

    .line 162
    .local v15, movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    const/4 v9, 0x0

    .line 164
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mCr:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "mime_type"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "_display_name"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "stereo_type"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mOrderBy:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 169
    const/4 v11, 0x0

    .line 170
    .local v11, find:Z
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 171
    new-instance v16, Lcom/mediatek/gallery3d/ext/MovieList;

    invoke-direct/range {v16 .. v16}, Lcom/mediatek/gallery3d/ext/MovieList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .end local v15           #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    .local v16, movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    :goto_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 174
    .local v12, id:J
    if-nez v11, :cond_1

    cmp-long v3, v12, p3

    if-nez v3, :cond_1

    .line 175
    const/4 v11, 0x1

    .line 176
    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-interface {v0, v1}, Lcom/mediatek/gallery3d/ext/IMovieList;->add(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    .end local v12           #id:J
    :catch_0
    move-exception v10

    move-object/from16 v15, v16

    .line 187
    .end local v11           #find:Z
    .end local v16           #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    .restart local v15       #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    :goto_1
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    if-eqz v9, :cond_0

    .line 190
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_2
    const-string v3, "Gallery2/MovieListFetcherTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillUriList() cursor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object v15

    .line 179
    .end local v15           #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    .restart local v11       #find:Z
    .restart local v12       #id:J
    .restart local v16       #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    :cond_1
    :try_start_3
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 180
    .local v19, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 181
    .local v14, mimeType:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 182
    .local v18, title:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 183
    .local v17, stereoType:I
    new-instance v3, Lcom/mediatek/gallery3d/ext/MovieItem;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v3, v0, v14, v1, v2}, Lcom/mediatek/gallery3d/ext/MovieItem;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/mediatek/gallery3d/ext/IMovieList;->add(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 189
    .end local v12           #id:J
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v17           #stereoType:I
    .end local v18           #title:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    move-object/from16 v15, v16

    .end local v11           #find:Z
    .end local v16           #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    .restart local v15       #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    :goto_3
    if-eqz v9, :cond_2

    .line 190
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .end local v15           #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    .restart local v11       #find:Z
    .restart local v16       #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    :cond_3
    move-object/from16 v15, v16

    .line 189
    .end local v16           #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    .restart local v15       #movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    :cond_4
    if-eqz v9, :cond_0

    .line 190
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 189
    .end local v11           #find:Z
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 186
    :catch_1
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieList;
    .locals 21
    .parameter "params"

    .prologue
    .line 99
    const-string v1, "Gallery2/MovieListFetcherTask"

    const-string v2, "doInBackground() begin"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x0

    aget-object v1, p1, v1

    if-nez v1, :cond_0

    .line 102
    const/16 v19, 0x0

    .line 157
    :goto_0
    return-object v19

    .line 104
    :cond_0
    const/16 v19, 0x0

    .line 105
    .local v19, movieList:Lcom/mediatek/gallery3d/ext/IMovieList;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 106
    .local v7, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v18

    .line 107
    .local v18, mime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mFetechAll:Z

    if-eqz v1, :cond_2

    .line 108
    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 110
    .local v20, uristr:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 113
    .local v4, curId:J
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    aget-object v6, p1, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->fillUriList(Ljava/lang/String;[Ljava/lang/String;JLcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieList;

    move-result-object v19

    .line 155
    .end local v4           #curId:J
    .end local v20           #uristr:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v1, "Gallery2/MovieListFetcherTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground() done return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_2
    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 119
    .restart local v20       #uristr:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mCr:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bucket_id"

    aput-object v2, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 123
    .local v16, cursor:Landroid/database/Cursor;
    const-wide/16 v14, -0x1

    .line 124
    .local v14, bucketId:J
    if-eqz v16, :cond_4

    .line 125
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 128
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_4
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 131
    .restart local v4       #curId:J
    const-string v2, "bucket_id=? "

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    const/4 v1, 0x0

    aget-object v6, p1, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->fillUriList(Ljava/lang/String;[Ljava/lang/String;JLcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieList;

    move-result-object v19

    .line 133
    goto :goto_1

    .end local v4           #curId:J
    .end local v14           #bucketId:J
    .end local v16           #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 135
    .local v17, data:Ljava/lang/String;
    const-string v1, "\'"

    const-string v2, "\'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file:///"

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mCr:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, "bucket_id"

    aput-object v2, v10, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 140
    .restart local v16       #cursor:Landroid/database/Cursor;
    const-wide/16 v14, -0x1

    .line 141
    .restart local v14       #bucketId:J
    const-wide/16 v4, -0x1

    .line 142
    .restart local v4       #curId:J
    if-eqz v16, :cond_7

    .line 143
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 145
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 147
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_7
    const-string v2, "bucket_id=? "

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    const/4 v1, 0x0

    aget-object v6, p1, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->fillUriList(Ljava/lang/String;[Ljava/lang/String;JLcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieList;

    move-result-object v19

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, [Lcom/mediatek/gallery3d/ext/IMovieItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->doInBackground([Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/mediatek/gallery3d/ext/IMovieList;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 86
    const-string v0, "Gallery2/MovieListFetcherTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute() isCancelled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mFetecherListener:Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->mFetecherListener:Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;->onListLoaded(Lcom/mediatek/gallery3d/ext/IMovieList;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Lcom/mediatek/gallery3d/ext/IMovieList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;->onPostExecute(Lcom/mediatek/gallery3d/ext/IMovieList;)V

    return-void
.end method
