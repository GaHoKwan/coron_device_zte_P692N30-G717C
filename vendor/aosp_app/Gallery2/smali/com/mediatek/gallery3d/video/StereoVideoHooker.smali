.class public Lcom/mediatek/gallery3d/video/StereoVideoHooker;
.super Lcom/mediatek/gallery3d/video/MovieHooker;
.source "StereoVideoHooker.java"


# static fields
.field private static final COLUMN_STEREO_TYPE:Ljava/lang/String; = "stereo_type"

.field private static final EXTRA_STEREO_TYPE:Ljava/lang/String; = "mediatek.intent.extra.STEREO_TYPE"

.field private static final LOG:Z = true

.field private static final MENU_STEREO_VIDEO:I = 0x1

.field public static final STEREO_TYPE_2D:I = 0x0

.field public static final STEREO_TYPE_3D:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/StereoVideoHooker"

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private mCurrentStereoType:I

.field private mMenuStereoVideo:Landroid/view/MenuItem;

.field private mVideoSurface:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;-><init>()V

    return-void
.end method

.method private enhanceStereoActionBar(Lcom/mediatek/gallery3d/ext/IMovieItem;I)V
    .locals 4
    .parameter "movieItem"
    .parameter "stereoType"

    .prologue
    const/4 v3, -0x1

    .line 153
    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    if-ne p2, v3, :cond_0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->setInfoFromMediaData(Lcom/mediatek/gallery3d/ext/IMovieItem;I)V

    .line 166
    :cond_0
    :goto_0
    const-string v1, "Gallery2/VideoPlayer/StereoVideoHooker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enhanceStereoActionBar() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 158
    :cond_1
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "media"

    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    if-ne p2, v3, :cond_0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->setInfoFromMediaUri(Lcom/mediatek/gallery3d/ext/IMovieItem;I)V

    goto :goto_0
.end method

.method private initialStereoVideoIcon(I)V
    .locals 3
    .parameter "stereoType"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    invoke-static {p1}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->isStereo3D(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 145
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->updateStereoVideoIcon()V

    .line 148
    :cond_0
    const-string v0, "Gallery2/VideoPlayer/StereoVideoHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialStereoVideoIcon("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSupport3DIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public static isStereo3D(I)Z
    .locals 4
    .parameter "stereoType"

    .prologue
    .line 97
    const/4 v0, 0x1

    .line 98
    .local v0, stereo3d:Z
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 102
    :cond_1
    const-string v1, "Gallery2/VideoPlayer/StereoVideoHooker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStereo3D("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0
.end method

.method private setInfoFromMediaData(Lcom/mediatek/gallery3d/ext/IMovieItem;I)V
    .locals 9
    .parameter "movieInfo"
    .parameter "stereoType"

    .prologue
    .line 193
    const/4 v6, 0x0

    .line 195
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, data:Ljava/lang/String;
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file:///"

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "stereo_type"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 200
    const-string v0, "Gallery2/VideoPlayer/StereoVideoHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoFromMediaData() cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->setStereoType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    if-eqz v6, :cond_1

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 214
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "Gallery2/VideoPlayer/StereoVideoHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoFromMediaData() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 206
    :catch_0
    move-exception v8

    .line 207
    .local v8, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    if-eqz v6, :cond_1

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 209
    .end local v8           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private setInfoFromMediaUri(Lcom/mediatek/gallery3d/ext/IMovieItem;I)V
    .locals 8
    .parameter "movieItem"
    .parameter "stereoType"

    .prologue
    .line 171
    const/4 v6, 0x0

    .line 173
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stereo_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->setStereoType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    if-eqz v6, :cond_1

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_1
    :goto_0
    const-string v0, "Gallery2/VideoPlayer/StereoVideoHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoFromMediaUri() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 180
    :catch_0
    move-exception v7

    .line 181
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    if-eqz v6, :cond_1

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 183
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private updateStereoVideoIcon()V
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->getStereoType()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->isStereo3D(I)Z

    move-result v0

    .line 129
    .local v0, current3D:Z
    if-eqz v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    const v2, 0x7f020128

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 131
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    const v2, 0x7f0c0230

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 138
    .end local v0           #current3D:Z
    :cond_0
    :goto_0
    const-string v1, "Gallery2/VideoPlayer/StereoVideoHooker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStereoVideoIcon() mMenuStereoVideoIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 133
    .restart local v0       #current3D:Z
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    const v2, 0x7f020129

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 134
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    const v2, 0x7f0c0231

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public getStereoType()I
    .locals 3

    .prologue
    .line 109
    const-string v0, "Gallery2/VideoPlayer/StereoVideoHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStereoType() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mCurrentStereoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget v0, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mCurrentStereoType:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 34
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mediatek.intent.extra.STEREO_TYPE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, stereoType:I
    if-ne v0, v3, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->enhanceStereoActionBar(Lcom/mediatek/gallery3d/ext/IMovieItem;I)V

    .line 39
    :cond_0
    if-eq v0, v3, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->setStereoType(I)V

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getStereoType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->initialStereoVideoIcon(I)V

    .line 43
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getStereoType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->setStereoType(I)V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 49
    invoke-virtual {p0, v3}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuActivityId(I)I

    move-result v0

    const v1, 0x7f0c0230

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    .line 50
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mMenuStereoVideo:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getStereoType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->initialStereoVideoIcon(I)V

    .line 52
    return v3
.end method

.method public onMovieItemChanged(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/video/MovieHooker;->onMovieItemChanged(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    .line 83
    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getStereoType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->setStereoType(I)V

    .line 84
    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getStereoType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->initialStereoVideoIcon(I)V

    .line 85
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuOriginalId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 69
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->getStereoType()I

    move-result v0

    .line 60
    .local v0, stereoType:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->isStereo3D(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 65
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->setStereoType(I)V

    .line 66
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->updateStereoVideoIcon()V

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 76
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->updateStereoVideoIcon()V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/mediatek/gallery3d/video/MovieHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 91
    check-cast p2, Landroid/view/SurfaceView;

    .end local p2
    iput-object p2, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mVideoSurface:Landroid/view/SurfaceView;

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getStereoType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->setStereoType(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public setStereoType(I)V
    .locals 4
    .parameter "stereoType"

    .prologue
    .line 116
    const-string v1, "Gallery2/VideoPlayer/StereoVideoHooker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStereoType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mVideoSurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput p1, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mCurrentStereoType:I

    .line 119
    invoke-static {p1}, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->isStereo3D(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x20

    .line 121
    .local v0, flag:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mVideoSurface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/StereoVideoHooker;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->set3DLayout(I)V

    .line 124
    :cond_0
    return-void

    .line 119
    .end local v0           #flag:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
