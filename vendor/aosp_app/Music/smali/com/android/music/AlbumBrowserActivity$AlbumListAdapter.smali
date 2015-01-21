.class Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;,
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final REFRESH_ALBUM_ART_DELAY_TIME:I = 0x64


# instance fields
.field private mActivity:Lcom/android/music/AlbumBrowserActivity;

.field private mAlbumArtIndex:I

.field private mAlbumIdx:I

.field private mAlbumPinyinIdx:I

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private mArtistIdx:I

.field private final mBackgroundAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mLazyLoadingThread:Landroid/os/HandlerThread;

.field private mLazyLoaingHandler:Landroid/os/Handler;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private mUnknownAlbum:Ljava/lang/String;

.field private mUnknownArtist:Ljava/lang/String;

.field private mWhat:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 774
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 736
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    .line 749
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mWhat:I

    .line 776
    iput-object p2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    .line 777
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;-><init>(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 779
    const v0, 0x7f070047

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 780
    const v0, 0x7f070046

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 781
    const v0, 0x7f070085

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 783
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 784
    .local v8, r:Landroid/content/res/Resources;
    const v0, 0x7f020002

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 785
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 787
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 788
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 789
    invoke-direct {p0, p4}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 790
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 793
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 794
    .local v7, backgroud:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mBackgroundAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 795
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mBackgroundAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 796
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mBackgroundAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 799
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LazyLoading"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoadingThread:Landroid/os/HandlerThread;

    .line 800
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoadingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 801
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$1;

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoadingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$1;-><init>(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoaingHandler:Landroid/os/Handler;

    .line 813
    return-void
.end method

.method static synthetic access$700(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/android/music/AlbumBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 816
    if-eqz p1, :cond_0

    .line 817
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    .line 819
    const-string v0, "album_pinyin_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumPinyinIdx:I

    .line 820
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    .line 821
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    .line 823
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    new-instance v0, Lcom/android/music/MusicAlphabetIndexer;

    iget v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumPinyinIdx:I

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 859
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 860
    .local v11, vh:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 861
    .local v9, name:Ljava/lang/String;
    move-object v6, v9

    .line 862
    .local v6, displayname:Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v12, "<unknown>"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_0
    const/4 v10, 0x1

    .line 863
    .local v10, unknown:Z
    :goto_0
    if-eqz v10, :cond_1

    .line 864
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 866
    :cond_1
    iget-object v12, v11, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 869
    move-object v6, v9

    .line 870
    if-eqz v9, :cond_2

    const-string v12, "<unknown>"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 871
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 873
    :cond_3
    iget-object v12, v11, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 879
    .local v3, art:Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 887
    .local v1, aid:J
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v4

    .line 888
    .local v4, currentalbumid:J
    iget-object v7, v11, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 889
    .local v7, iv:Landroid/widget/ImageView;
    cmp-long v12, v4, v1

    if-nez v12, :cond_8

    .line 890
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 896
    :goto_1
    iget-object v7, v11, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 897
    if-nez v10, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_5

    .line 898
    :cond_4
    const-wide/16 v1, -0x1

    .line 900
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoaingHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mWhat:I

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 902
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoaingHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mWhat:I

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoaingHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mWhat:I

    long-to-int v14, v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 905
    .local v8, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoaingHandler:Landroid/os/Handler;

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 906
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mWhat:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mWhat:I

    .line 907
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mWhat:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mVisibleItemsCount:I
    invoke-static {v13}, Lcom/android/music/AlbumBrowserActivity;->access$1000(Lcom/android/music/AlbumBrowserActivity;)I

    move-result v13

    rem-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mWhat:I

    .line 909
    return-void

    .line 862
    .end local v1           #aid:J
    .end local v3           #art:Ljava/lang/String;
    .end local v4           #currentalbumid:J
    .end local v7           #iv:Landroid/widget/ImageView;
    .end local v8           #message:Landroid/os/Message;
    .end local v10           #unknown:Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 892
    .restart local v1       #aid:J
    .restart local v3       #art:Ljava/lang/String;
    .restart local v4       #currentalbumid:J
    .restart local v7       #iv:Landroid/widget/ImageView;
    .restart local v10       #unknown:Z
    :cond_8
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 914
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 915
    const/4 p1, 0x0

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/music/AlbumBrowserActivity;->access$1100(Lcom/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    #setter for: Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/music/AlbumBrowserActivity;->access$1102(Lcom/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 919
    invoke-direct {p0, p1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 920
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 922
    :cond_1
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 948
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 957
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 843
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 844
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;-><init>()V

    .line 845
    .local v1, vh:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    const v2, 0x7f0c0017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 846
    const v2, 0x7f0c0018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 847
    const v2, 0x7f0c0025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 848
    const v2, 0x7f0c0022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 850
    iget-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mBackgroundAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 851
    iget-object v2, v1, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 852
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 853
    return-object v0
.end method

.method quitLazyLoadingThread()V
    .locals 4

    .prologue
    .line 979
    const/4 v0, 0x0

    .line 980
    .local v0, isQuitSuccuss:Z
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoadingThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mLazyLoadingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    .line 983
    :cond_0
    const-string v1, "Album"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quit lazy loading thread when activity ondestroy: isQuitSuccuss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void
.end method

.method public reloadStringOnLocaleChanges()V
    .locals 4

    .prologue
    .line 965
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    const v3, 0x7f070046

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, unknownArtist:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, unknownAlbum:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 968
    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 970
    :cond_0
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 971
    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 973
    :cond_1
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 926
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 930
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 935
    :goto_0
    return-object v0

    .line 932
    :cond_2
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/android/music/AlbumBrowserActivity;->access$600(Lcom/android/music/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 933
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 934
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/android/music/AlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    .line 835
    return-void
.end method
