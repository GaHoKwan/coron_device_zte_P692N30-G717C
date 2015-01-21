.class Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;,
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/TrackBrowserActivity;

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mDisableNowPlayingIndicator:Z

.field mDrmMethodIdx:I

.field mDurationIdx:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsDrmIdx:I

.field mIsNowPlaying:Z

.field private mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

.field mTitleIdx:I

.field mTitlePinyinIdx:I

.field private mUnknownAlbum:Ljava/lang/String;

.field private mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 6
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 1930
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 1860
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsDrmIdx:I

    .line 1861
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDrmMethodIdx:I

    .line 1931
    iput-object p2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1932
    invoke-direct {p0, p4}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1933
    iput-boolean p7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    .line 1934
    iput-boolean p8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 1935
    const v0, 0x7f070046

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1936
    const v0, 0x7f070047

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1938
    new-instance v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;-><init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    .line 1939
    return-void
.end method

.method static synthetic access$1600(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1950
    if-eqz p1, :cond_0

    .line 1951
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 1952
    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 1953
    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    .line 1955
    :try_start_0
    const-string v2, "audio_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    :goto_0
    const-string v2, "title_pinyin_key"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitlePinyinIdx:I

    .line 1965
    const-string v2, "is_drm"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsDrmIdx:I

    .line 1966
    const-string v2, "drm_method"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDrmMethodIdx:I

    .line 1969
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v2, :cond_1

    .line 1970
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v2, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 1980
    :cond_0
    :goto_1
    return-void

    .line 1957
    :catch_0
    move-exception v1

    .line 1958
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0

    .line 1971
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$1700(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$1800(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1972
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    const v3, 0x7f070074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1974
    .local v0, alpha:Ljava/lang/String;
    new-instance v2, Lcom/android/music/MusicAlphabetIndexer;

    iget v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitlePinyinIdx:I

    invoke-direct {v2, p1, v3, v0}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_1

    .line 1977
    .end local v0           #alpha:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$900(Lcom/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    goto :goto_1
.end method

.method private updateDrmLockIcon(Landroid/widget/ImageView;Landroid/database/Cursor;)V
    .locals 6
    .parameter "drmLock"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 2145
    const/16 v0, 0x8

    .line 2147
    .local v0, drmLockVisible:I
    iget v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsDrmIdx:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2148
    .local v2, isDrm:I
    iget v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDrmMethodIdx:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2149
    .local v1, drmMethod:I
    if-ne v2, v5, :cond_0

    if-eq v1, v5, :cond_0

    .line 2150
    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    const/4 v5, 0x0

    #calls: Lcom/android/music/TrackBrowserActivity;->getDrmRightsStatus(Landroid/database/Cursor;Z)I
    invoke-static {v4, p2, v5}, Lcom/android/music/TrackBrowserActivity;->access$1900(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;Z)I

    move-result v3

    .line 2151
    .local v3, rightsStatus:I
    if-gez v3, :cond_1

    .line 2152
    const/16 v0, 0x8

    .line 2162
    .end local v3           #rightsStatus:I
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2163
    return-void

    .line 2153
    .restart local v3       #rightsStatus:I
    :cond_1
    if-nez v3, :cond_2

    .line 2154
    const v4, 0x2020043

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2155
    const/4 v0, 0x0

    goto :goto_0

    .line 2157
    :cond_2
    const v4, 0x2020044

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2158
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 2010
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 2012
    .local v9, vh:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    iget v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    iget-object v11, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 2013
    iget-object v10, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v11, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v11, v11, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v12, 0x0

    iget-object v13, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v13, v13, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/TextView;->setText([CII)V

    .line 2017
    iget v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    div-int/lit16 v8, v10, 0x3e8

    .line 2022
    .local v8, secs:I
    iget-object v10, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v11, v8

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2025
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 2026
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2028
    iget v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2029
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v10, "<unknown>"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2030
    :cond_0
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 2036
    .local v6, len:I
    iget-object v10, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v10, v10

    if-ge v10, v6, :cond_1

    .line 2037
    new-array v10, v6, [C

    iput-object v10, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 2039
    :cond_1
    const/4 v10, 0x0

    iget-object v11, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v6, v11, v12}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 2040
    iget-object v10, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v11, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/widget/TextView;->setText([CII)V

    .line 2042
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v10}, Lcom/android/music/TrackBrowserActivity;->access$1700(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2043
    iget-object v5, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->editIcon:Landroid/widget/ImageView;

    .line 2044
    .local v5, ivEdit:Landroid/widget/ImageView;
    const v10, 0x7f020033

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2045
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2049
    .end local v5           #ivEdit:Landroid/widget/ImageView;
    :cond_2
    iget-object v4, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 2050
    .local v4, iv:Landroid/widget/ImageView;
    const-wide/16 v2, -0x1

    .line 2051
    .local v2, id:J
    sget-object v10, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v10, :cond_3

    .line 2054
    :try_start_0
    iget-boolean v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v10, :cond_7

    .line 2055
    sget-object v10, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    int-to-long v2, v10

    .line 2074
    :cond_3
    :goto_1
    iget-boolean v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v10, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v10, v2

    if-eqz v10, :cond_5

    :cond_4
    iget-boolean v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    if-nez v10, :cond_8

    iget v10, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_8

    .line 2076
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2081
    :goto_2
    iget-object v10, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->drmLock:Landroid/widget/ImageView;

    move-object/from16 v0, p3

    invoke-direct {p0, v10, v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->updateDrmLockIcon(Landroid/widget/ImageView;Landroid/database/Cursor;)V

    .line 2082
    return-void

    .line 2032
    .end local v2           #id:J
    .end local v4           #iv:Landroid/widget/ImageView;
    .end local v6           #len:I
    :cond_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2057
    .restart local v2       #id:J
    .restart local v4       #iv:Landroid/widget/ImageView;
    .restart local v6       #len:I
    :cond_7
    :try_start_1
    sget-object v10, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_1

    .line 2078
    :cond_8
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 2059
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2087
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2088
    const/4 p1, 0x0

    .line 2090
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$800(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 2091
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #setter for: Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/music/TrackBrowserActivity;->access$802(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2092
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2093
    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 2095
    :cond_1
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 2125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 2135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 2117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1984
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1989
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>()V

    .line 1990
    .local v1, vh:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    const v2, 0x7f0c0017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 1991
    const v2, 0x7f0c0018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 1992
    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 1993
    const v2, 0x7f0c0025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 1994
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1995
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 1997
    const v2, 0x7f0c0026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->drmLock:Landroid/widget/ImageView;

    .line 1999
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$1700(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2000
    const v2, 0x7f0c0022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->editIcon:Landroid/widget/ImageView;

    .line 2003
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2004
    return-object v0
.end method

.method public reloadStringOnLocaleChanges()V
    .locals 4

    .prologue
    .line 2170
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    const v3, 0x7f070046

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2171
    .local v1, sUnknownArtist:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2172
    .local v0, sUnknownAlbum:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2173
    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 2175
    :cond_0
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2176
    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 2178
    :cond_1
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 2099
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2100
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2103
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2108
    :goto_0
    return-object v0

    .line 2105
    :cond_2
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    const/4 v4, 0x0

    #calls: Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v2, v3, v1, v4}, Lcom/android/music/TrackBrowserActivity;->access$600(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 2106
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 2107
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 1942
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1943
    return-void
.end method
