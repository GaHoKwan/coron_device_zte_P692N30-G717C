.class public final Lcom/mediatek/filemanager/service/MediaStoreHelper;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"


# static fields
.field private static final SCAN_FOLDER_NUM:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MediaStoreHelper"


# instance fields
.field private mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

.field private final mContext:Landroid/content/Context;

.field private mDstFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/filemanager/service/BaseAsyncTask;)V
    .locals 0
    .parameter "context"
    .parameter "baseAsyncTask"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    .line 77
    return-void
.end method


# virtual methods
.method public deleteFileInMediaStore(Ljava/lang/String;)V
    .locals 9
    .parameter "path"

    .prologue
    const/4 v8, 0x1

    .line 221
    const-string v5, "MediaStoreHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteFileInMediaStore,path ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 226
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "_data=?"

    .line 227
    .local v3, where:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 228
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 229
    iget-object v5, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "MediaStoreHelper"

    const-string v6, "deleteFileInMediaStore,delete."

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_0
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkSDSwapSurpported()Z

    move-result v5

    if-nez v5, :cond_2

    .line 233
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "MediaStoreHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error, database or disk is full!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v5, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    if-eqz v5, :cond_0

    .line 247
    iget-object v5, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    invoke-virtual {v5, v8}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 236
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    :try_start_1
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 237
    :catch_1
    move-exception v1

    .line 238
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string v5, "MediaStoreHelper"

    const-string v6, "Error, database is closed!!!"

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v5, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    if-eqz v5, :cond_0

    .line 240
    iget-object v5, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public deleteFileInMediaStore(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 178
    const-string v7, "MediaStoreHelper"

    const-string v8, "deleteFileInMediaStore."

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v7, "external"

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 180
    .local v3, uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v6, whereClause:Ljava/lang/StringBuilder;
    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_0

    .line 183
    const-string v7, ",?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data IN("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, where:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 188
    iget-object v7, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 190
    .local v5, whereArgs:[Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 191
    const-string v7, "MediaStoreHelper"

    const-string v8, "deleteFileInMediaStore,delete."

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkSDSwapSurpported()Z

    move-result v7

    if-nez v7, :cond_2

    .line 194
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 197
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string v7, "MediaStoreHelper"

    const-string v8, "Error, database is closed!!!"

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v7, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    if-eqz v7, :cond_1

    .line 201
    iget-object v7, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 205
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v1

    .line 206
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "MediaStoreHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error, database or disk is full!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v7, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    if-eqz v7, :cond_1

    .line 208
    iget-object v7, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    invoke-virtual {v7, v10}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_1
.end method

.method public scanPathforMediaStore(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 146
    const-string v1, "MediaStoreHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanPathforMediaStore.path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 149
    .local v0, paths:[Ljava/lang/String;
    const-string v1, "MediaStoreHelper"

    const-string v2, "scanPathforMediaStore,scan file ."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 152
    .end local v0           #paths:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public scanPathforMediaStore(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, scanPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 155
    const-string v2, "MediaStoreHelper"

    const-string v3, "scanPathforMediaStore,scanPaths."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 157
    .local v0, length:I
    iget-object v2, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mDstFolder:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    .line 160
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mDstFolder:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 166
    .local v1, paths:[Ljava/lang/String;
    :goto_0
    const-string v2, "MediaStoreHelper"

    const-string v3, "scanPathforMediaStore, scanFiles."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 169
    .end local v1           #paths:[Ljava/lang/String;
    :cond_0
    return-void

    .line 162
    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    .line 163
    .restart local v1       #paths:[Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDstFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "dstFolder"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mDstFolder:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public updateInMediaStore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "newPath"
    .parameter "oldPath"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 80
    const-string v6, "MediaStoreHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateInMediaStore,newPath ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",oldPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v6, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    iget-object v6, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "media"

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 83
    .local v1, mediaProvider:Landroid/content/IContentProvider;
    const-string v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 84
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "need_update_media_values"

    const-string v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 85
    const-string v4, "_data=?"

    .line 86
    .local v4, where:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aput-object p2, v5, v10

    .line 88
    .local v5, whereArgs:[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "_data"

    invoke-virtual {v3, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-array v5, v9, [Ljava/lang/String;

    .end local v5           #whereArgs:[Ljava/lang/String;
    aput-object p2, v5, v10

    .line 91
    .restart local v5       #whereArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkSDSwapSurpported()Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    :try_start_0
    const-string v6, "MediaStoreHelper"

    const-string v7, "updateInMediaStore,update."

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/MediaStoreHelper;->scanPathforMediaStore(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2

    .line 137
    .end local v1           #mediaProvider:Landroid/content/IContentProvider;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v1       #mediaProvider:Landroid/content/IContentProvider;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #values:Landroid/content/ContentValues;
    .restart local v4       #where:Ljava/lang/String;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "MediaStoreHelper"

    const-string v7, "RemoteException in mediaProvider.update"

    invoke-static {v6, v7, v0}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "MediaStoreHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error, NullPointerException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",update db may failed!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 107
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "MediaStoreHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error, database or disk is full!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v6, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    if-eqz v6, :cond_0

    .line 109
    iget-object v6, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    invoke-virtual {v6, v9}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 114
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    :try_start_1
    const-string v6, "MediaStoreHelper"

    const-string v7, "updateInMediaStore,update."

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/MediaStoreHelper;->scanPathforMediaStore(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 123
    :catch_3
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "MediaStoreHelper"

    const-string v7, "RemoteException in mediaProvider.update"

    invoke-static {v6, v7, v0}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v6, "MediaStoreHelper"

    const-string v7, "Error, database is closed!!!"

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_5
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "MediaStoreHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error, NullPointerException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",update db may failed!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_6
    move-exception v0

    .line 130
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "MediaStoreHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error, database or disk is full!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    if-eqz v6, :cond_0

    .line 132
    iget-object v6, p0, Lcom/mediatek/filemanager/service/MediaStoreHelper;->mBaseAsyncTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    invoke-virtual {v6, v9}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto/16 :goto_0
.end method
