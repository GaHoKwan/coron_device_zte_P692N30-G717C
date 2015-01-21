.class Lcom/android/music/MusicPicker$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MusicPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDrmMethodIdx:I

.field private mDurationIdx:I

.field private mIdIdx:I

.field private mIndexer:Lcom/android/music/MusicAlphabetIndexer;

.field private mIndexerSortMode:I

.field private mIsDrmIdx:I

.field final mListView:Landroid/widget/ListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/android/music/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "listView"
    .parameter "layout"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    .line 259
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 260
    iput-object p3, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 261
    const v0, 0x7f070046

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 262
    const v0, 0x7f070047

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 263
    return-void
.end method

.method private updateDrmLockIcon(Landroid/widget/ImageView;Landroid/database/Cursor;J)V
    .locals 7
    .parameter "drmLock"
    .parameter "cursor"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 370
    const/16 v0, 0x8

    .line 372
    .local v0, drmLockVisible:I
    iget v4, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIsDrmIdx:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 373
    .local v2, isDrm:I
    iget v4, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mDrmMethodIdx:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 374
    .local v1, drmMethod:I
    if-ne v2, v6, :cond_0

    if-eq v1, v6, :cond_0

    .line 375
    iget-object v4, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    #getter for: Lcom/android/music/MusicPicker;->mDrmClient:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {v4}, Lcom/android/music/MusicPicker;->access$000(Lcom/android/music/MusicPicker;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v3

    .line 377
    .local v3, rightsStatus:I
    if-gez v3, :cond_1

    .line 378
    const/16 v0, 0x8

    .line 388
    .end local v3           #rightsStatus:I
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    return-void

    .line 379
    .restart local v3       #rightsStatus:I
    :cond_1
    if-nez v3, :cond_2

    .line 380
    const v4, 0x2020043

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_2
    const v4, 0x2020044

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
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
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;

    .line 305
    .local v9, vh:Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    iget v10, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    iget-object v11, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 306
    iget-object v10, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v11, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v11, v11, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v12, 0x0

    iget-object v13, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v13, v13, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/TextView;->setText([CII)V

    .line 308
    const/16 v7, 0x3e8

    .line 309
    .local v7, secondUnit:I
    iget v10, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mDurationIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    div-int/lit16 v8, v10, 0x3e8

    .line 310
    .local v8, secs:I
    if-nez v8, :cond_3

    .line 311
    iget-object v10, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :goto_0
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 317
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 319
    iget v10, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v10, "<unknown>"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 321
    :cond_0
    iget-object v10, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :goto_1
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    iget v10, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 327
    if-eqz v6, :cond_1

    const-string v10, "<unknown>"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 328
    :cond_1
    iget-object v10, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 333
    .local v5, len:I
    iget-object v10, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v10, v10

    if-ge v10, v5, :cond_2

    .line 334
    new-array v10, v5, [C

    iput-object v10, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 336
    :cond_2
    const/4 v10, 0x0

    iget-object v11, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v5, v11, v12}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 337
    iget-object v10, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v11, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v5}, Landroid/widget/TextView;->setText([CII)V

    .line 343
    iget v10, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 344
    .local v2, id:J
    iget-object v11, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v10, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-wide v12, v10, Lcom/android/music/MusicPicker;->mSelectedId:J

    cmp-long v10, v2, v12

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 345
    const-string v10, "MusicPicker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Binding id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sel="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-wide v12, v12, Lcom/android/music/MusicPicker;->mSelectedId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " playing="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-wide v12, v12, Lcom/android/music/MusicPicker;->mPlayingId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cursor="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v4, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 351
    .local v4, iv:Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-wide v10, v10, Lcom/android/music/MusicPicker;->mPlayingId:J

    cmp-long v10, v2, v10

    if-nez v10, :cond_7

    .line 352
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    :goto_4
    iget-object v10, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->drmLock:Landroid/widget/ImageView;

    move-object/from16 v0, p3

    invoke-direct {p0, v10, v0, v2, v3}, Lcom/android/music/MusicPicker$TrackListAdapter;->updateDrmLockIcon(Landroid/widget/ImageView;Landroid/database/Cursor;J)V

    .line 360
    return-void

    .line 313
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #id:J
    .end local v4           #iv:Landroid/widget/ImageView;
    .end local v5           #len:I
    .end local v6           #name:Ljava/lang/String;
    :cond_3
    iget-object v10, v9, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v11, v8

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 323
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v6       #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 330
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 344
    .restart local v2       #id:J
    .restart local v5       #len:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 355
    .restart local v4       #iv:Landroid/widget/ImageView;
    :cond_7
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 399
    const-string v1, "MusicPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCursor cursor to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-object v3, v3, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iput-object p1, v1, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    .line 402
    if-eqz p1, :cond_1

    .line 404
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    .line 405
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 406
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    .line 407
    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    .line 408
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mDurationIdx:I

    .line 410
    const-string v1, "is_drm"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIsDrmIdx:I

    .line 411
    const-string v1, "drm_method"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mDrmMethodIdx:I

    .line 417
    iget v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    iget-object v2, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget v2, v2, Lcom/android/music/MusicPicker;->mSortMode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-nez v1, :cond_2

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget v1, v1, Lcom/android/music/MusicPicker;->mSortMode:I

    iput v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    .line 420
    const-string v1, "title_pinyin_key"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, idx:I
    iget v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    packed-switch v1, :pswitch_data_0

    .line 429
    :goto_0
    new-instance v1, Lcom/android/music/MusicAlphabetIndexer;

    iget-object v2, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    .line 443
    .end local v0           #idx:I
    :cond_1
    :goto_1
    return-void

    .line 423
    .restart local v0       #idx:I
    :pswitch_0
    const-string v1, "artist_pinyin_key"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 424
    goto :goto_0

    .line 426
    :pswitch_1
    const-string v1, "album_pinyin_key"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 435
    .end local v0           #idx:I
    :cond_2
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 458
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 459
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v1

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v2, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/android/music/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicAlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 484
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;-><init>(Lcom/android/music/MusicPicker$TrackListAdapter;)V

    .line 288
    .local v1, vh:Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    const v2, 0x7f0c0017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 289
    const v2, 0x7f0c0018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 290
    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 291
    const v2, 0x7f0c0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 292
    const v2, 0x7f0c0025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 293
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 294
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    const v2, 0x7f0c0026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->drmLock:Landroid/widget/ImageView;

    .line 298
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 453
    const-string v0, "MusicPicker"

    const-string v1, "Getting new cursor..."

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 272
    return-void
.end method
