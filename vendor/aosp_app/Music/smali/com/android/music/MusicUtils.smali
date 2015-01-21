.class public Lcom/android/music/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicUtils$LogEntry;,
        Lcom/android/music/MusicUtils$FastBitmapDrawable;,
        Lcom/android/music/MusicUtils$ServiceBinder;,
        Lcom/android/music/MusicUtils$ServiceToken;,
        Lcom/android/music/MusicUtils$Defs;
    }
.end annotation


# static fields
.field public static final ADD_TO_PLAYLIST_ITEM_ID:Ljava/lang/String; = "add_to_playlist_item_id"

.field public static final DELETE_DESC_STRING_ID:Ljava/lang/String; = "delete_desc_string_id"

.field public static final DELETE_DESC_TRACK_INFO:Ljava/lang/String; = "delete_desc_track_info"

.field public static final NEW_PLAYLIST:Ljava/lang/String; = "new_playlist"

.field public static final PLAYLIST_NAME:Ljava/lang/String; = "playlist_name"

.field public static final SAVE_AS_PLAYLIST:Ljava/lang/String; = "save_as_playlist"

.field public static final SAVE_PLAYLIST_FLAG:Ljava/lang/String; = "SAVE_PLAYLIST_FLAG"

.field public static final SDCARD_STATUS_MESSAGE:Ljava/lang/String; = "message"

.field public static final SDCARD_STATUS_ONOFF:Ljava/lang/String; = "onoff"

.field public static final SDCARD_STATUS_UPDATE:Ljava/lang/String; = "com.android.music.sdcardstatusupdate"

.field public static final START_ACTIVITY_TAB_ID:Ljava/lang/String; = "start_activity_tab_id"

.field private static final TAG:Ljava/lang/String; = "MusicUtils"

.field private static mCachedBit:Landroid/graphics/Bitmap;

.field private static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sArtCacheId:I

.field private static sArtId:I

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/music/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sContentValuesCache:[Landroid/content/ContentValues;

.field private static final sEmptyList:[J

.field private static final sExternalMediaUri:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static sLastSdStatus:Ljava/lang/String;

.field private static sLogPtr:I

.field private static sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

.field public static sService:Lcom/android/music/IMediaPlaybackService;

.field private static sTime:Landroid/text/format/Time;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 227
    sput-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 385
    new-array v0, v3, [J

    sput-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    .line 639
    sput-object v4, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 747
    sput-object v4, Lcom/android/music/MusicUtils;->sLastSdStatus:Ljava/lang/String;

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 891
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 892
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1014
    const/4 v0, -0x2

    sput v0, Lcom/android/music/MusicUtils;->sArtId:I

    .line 1015
    sput-object v4, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 1016
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 1017
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1018
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 1019
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 1020
    const/4 v0, -0x1

    sput v0, Lcom/android/music/MusicUtils;->sArtCacheId:I

    .line 1026
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1027
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1030
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1031
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1206
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/MusicUtils;->sExternalMediaUri:Ljava/lang/String;

    .line 1486
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/android/music/MusicUtils$LogEntry;

    sput-object v0, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    .line 1487
    sput v3, Lcom/android/music/MusicUtils;->sLogPtr:I

    .line 1488
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    return-void
.end method

.method static synthetic access$000()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static addFolderToMusic(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 21
    .parameter "context"
    .parameter "folderPath"
    .parameter "needMoveToFirstAudioId"
    .parameter "needPlay"

    .prologue
    .line 1812
    const-string v2, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFolderToMusic: folderPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needMoveToFirstAudioData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needPlay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    if-nez p1, :cond_1

    .line 1873
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    const-string v2, "\'"

    const-string v3, "\'\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1819
    .local v9, data:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1820
    .local v5, where:Ljava/lang/String;
    const-string v2, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFolderToMusic: where = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "title_pinyin_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1826
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v11, 0x1

    .line 1827
    .local v11, isSelectFolderEmpty:Z
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1828
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lcom/android/music/MusicUtils;->getSongListForCursorExceptSubFolder(Landroid/database/Cursor;Ljava/lang/String;)[J

    move-result-object v13

    .line 1829
    .local v13, list:[J
    array-length v12, v13

    .line 1830
    .local v12, length:I
    if-lez v12, :cond_3

    .line 1832
    if-eqz p4, :cond_6

    .line 1833
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_2

    .line 1835
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_2

    .line 1836
    aget-wide v2, v13, v10

    cmp-long v2, p2, v2

    if-nez v2, :cond_5

    .line 1837
    const/4 v2, 0x0

    aget-wide v16, v13, v2

    .line 1838
    .local v16, ret:J
    const/4 v2, 0x0

    aget-wide v3, v13, v10

    aput-wide v3, v13, v2

    .line 1839
    aput-wide v16, v13, v10

    .line 1844
    .end local v10           #i:I
    .end local v16           #ret:J
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 1861
    :goto_2
    const/4 v11, 0x0

    .line 1864
    .end local v12           #length:I
    .end local v13           #list:[J
    :cond_3
    if-eqz v8, :cond_4

    .line 1865
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1866
    const/4 v8, 0x0

    .line 1869
    :cond_4
    if-eqz v11, :cond_0

    .line 1870
    invoke-static/range {p0 .. p0}, Lcom/mediatek/music/ext/Extensions;->getPluginObject(Landroid/content/Context;)Lcom/mediatek/music/ext/IMusicTrackBrowser;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/music/ext/IMusicTrackBrowser;->getEmptyFolderString()Ljava/lang/String;

    move-result-object v18

    .line 1871
    .local v18, toastShow:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1835
    .end local v18           #toastShow:Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v12       #length:I
    .restart local v13       #list:[J
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1847
    .end local v10           #i:I
    :cond_6
    const-string v2, "/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1848
    .local v14, name:Ljava/lang/String;
    const-string v2, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFolderToMusic: name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/music/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    .line 1852
    .local v15, playlistId:I
    if-ltz v15, :cond_7

    .line 1853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/music/MusicUtils;->makePlaylistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1855
    :cond_7
    new-instance v20, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1856
    .local v20, values:Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 1858
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1859
    int-to-long v2, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto/16 :goto_2
.end method

.method static addSearchView(Landroid/app/Activity;Landroid/view/Menu;Landroid/widget/SearchView$OnQueryTextListener;)Landroid/view/MenuItem;
    .locals 6
    .parameter "activity"
    .parameter "menu"
    .parameter "queryTextListener"

    .prologue
    .line 1581
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f0b0001

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1582
    const v4, 0x7f0c0044

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1583
    .local v1, searchItem:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    .line 1585
    .local v3, searchView:Landroid/widget/SearchView;
    invoke-virtual {v3, p2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1586
    const v4, 0x7f070073

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1587
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1588
    const-string v4, "search"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 1590
    .local v2, searchManager:Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 1591
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 1592
    .local v0, info:Landroid/app/SearchableInfo;
    invoke-virtual {v3, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1594
    .end local v0           #info:Landroid/app/SearchableInfo;
    :cond_0
    return-object v1
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[J)V
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 627
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 637
    :goto_0
    return-void

    .line 631
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/android/music/IMediaPlaybackService;->enqueue([JI)V

    .line 632
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    array-length v3, p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    .end local v0           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJ)V
    .locals 17
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 671
    const-string v5, "MusicUtils"

    const-string v6, "ListSelection null"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_0
    return-void

    .line 673
    :cond_0
    move-object/from16 v0, p1

    array-length v14, v0

    .line 674
    .local v14, size:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 677
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    .line 681
    .local v4, cols:[Ljava/lang/String;
    :try_start_0
    const-string v5, "external"

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 682
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 683
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 684
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 685
    .local v8, base:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 686
    const/4 v13, 0x0

    .line 688
    .local v13, numinserted:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v14, :cond_1

    .line 689
    const/16 v5, 0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v11, v5, v8}, Lcom/android/music/MusicUtils;->makeInsertItems([JIII)V

    .line 690
    sget-object v5, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v5

    add-int/2addr v13, v5

    .line 688
    add-int/lit16 v11, v11, 0x3e8

    goto :goto_1

    .line 692
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080004

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v7, v15

    invoke-virtual {v5, v6, v13, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 694
    .local v12, message:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #base:I
    .end local v9           #cur:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v12           #message:Ljava/lang/String;
    .end local v13           #numinserted:I
    :catch_0
    move-exception v10

    .line 696
    .local v10, ex:Ljava/lang/UnsupportedOperationException;
    const-string v5, "MusicUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToPlaylist() with UnsupportedOperationException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static bindToService(Landroid/app/Activity;)Lcom/android/music/MusicUtils$ServiceToken;
    .locals 1
    .parameter "context"

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    return-object v0
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;
    .locals 6
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 243
    .local v1, realActivity:Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 244
    move-object v1, p0

    .line 246
    :cond_0
    const-string v3, "MusicUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindToService: activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, cw:Landroid/content/ContextWrapper;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 249
    new-instance v2, Lcom/android/music/MusicUtils$ServiceBinder;

    invoke-direct {v2, p1}, Lcom/android/music/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 250
    .local v2, sb:Lcom/android/music/MusicUtils$ServiceBinder;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    sget-object v3, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v3, Lcom/android/music/MusicUtils$ServiceToken;

    invoke-direct {v3, v0}, Lcom/android/music/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 255
    :goto_0
    return-object v3

    .line 254
    :cond_1
    const-string v3, "MusicUtils"

    const-string v4, "Failed to bind to service"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static clearAlbumArtCache()V
    .locals 2

    .prologue
    .line 1047
    sget-object v1, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 1048
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1049
    monitor-exit v1

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearPlaylist(Landroid/content/Context;I)I
    .locals 7
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, deleteItem:I
    :try_start_0
    const-string v4, "external"

    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 536
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 541
    .end local v0           #deleteItem:I
    .end local v3           #uri:Landroid/net/Uri;
    .local v1, deleteItem:I
    :goto_0
    return v1

    .line 537
    .end local v1           #deleteItem:I
    .restart local v0       #deleteItem:I
    :catch_0
    move-exception v2

    .line 538
    .local v2, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_1
    const-string v4, "MusicUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearPlaylist() with UnsupportedOperationException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    const/4 v0, -0x1

    move v1, v0

    .line 541
    .end local v0           #deleteItem:I
    .restart local v1       #deleteItem:I
    goto :goto_0

    .end local v1           #deleteItem:I
    .end local v2           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v0       #deleteItem:I
    :catchall_0
    move-exception v4

    move v1, v0

    .end local v0           #deleteItem:I
    .restart local v1       #deleteItem:I
    goto :goto_0
.end method

.method public static clearQueue()V
    .locals 3

    .prologue
    .line 982
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/android/music/IMediaPlaybackService;->removeTracks(II)I

    .line 984
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 985
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 987
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static debugDump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 1500
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1501
    sget v3, Lcom/android/music/MusicUtils;->sLogPtr:I

    add-int v2, v3, v1

    .line 1502
    .local v2, idx:I
    sget-object v3, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 1503
    sget-object v3, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    sub-int/2addr v2, v3

    .line 1505
    :cond_0
    sget-object v3, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    aget-object v0, v3, v2

    .line 1506
    .local v0, entry:Lcom/android/music/MusicUtils$LogEntry;
    if-eqz v0, :cond_1

    .line 1507
    invoke-virtual {v0, p0}, Lcom/android/music/MusicUtils$LogEntry;->dump(Ljava/io/PrintWriter;)V

    .line 1500
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1510
    .end local v0           #entry:Lcom/android/music/MusicUtils$LogEntry;
    .end local v2           #idx:I
    :cond_2
    return-void
.end method

.method static debugLog(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 1492
    sget-object v0, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    sget v1, Lcom/android/music/MusicUtils;->sLogPtr:I

    new-instance v2, Lcom/android/music/MusicUtils$LogEntry;

    invoke-direct {v2, p0}, Lcom/android/music/MusicUtils$LogEntry;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 1493
    sget v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    .line 1494
    sget v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    sget-object v1, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1495
    const/4 v0, 0x0

    sput v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    .line 1497
    :cond_0
    return-void
.end method

.method public static deleteTracks(Landroid/content/Context;[J)I
    .locals 21
    .parameter "context"
    .parameter "list"

    .prologue
    .line 546
    const-string v2, "MusicUtils"

    const-string v3, ">> deleteTracks"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v11, 0x0

    .line 548
    .local v11, deleteTrackNum:I
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album_id"

    aput-object v3, v4, v2

    .line 550
    .local v4, cols:[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v20, where:Ljava/lang/StringBuilder;
    const-string v2, "_id IN ("

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 553
    aget-wide v2, p1, v16

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 554
    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v16

    if-ge v0, v2, :cond_0

    .line 555
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 558
    :cond_1
    const-string v2, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-static/range {p0 .. p0}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v12, v11

    .line 623
    .end local v11           #deleteTrackNum:I
    .local v12, deleteTrackNum:I
    :goto_1
    return v12

    .line 564
    .end local v12           #deleteTrackNum:I
    .restart local v11       #deleteTrackNum:I
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 567
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_7

    .line 572
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 573
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 575
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 576
    .local v17, id:J
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    move-wide/from16 v0, v17

    invoke-interface {v2, v0, v1}, Lcom/android/music/IMediaPlaybackService;->removeTrack(J)I

    .line 578
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 579
    .local v8, artIndex:J
    sget-object v3, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :try_start_1
    sget-object v2, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 584
    .end local v8           #artIndex:J
    .end local v17           #id:J
    :catch_0
    move-exception v2

    .line 588
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    move v12, v11

    .line 589
    .end local v11           #deleteTrackNum:I
    .restart local v12       #deleteTrackNum:I
    goto :goto_1

    .line 581
    .end local v12           #deleteTrackNum:I
    .restart local v8       #artIndex:J
    .restart local v11       #deleteTrackNum:I
    .restart local v17       #id:J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 592
    .end local v8           #artIndex:J
    .end local v17           #id:J
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v11

    .line 600
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 602
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 603
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 604
    .local v19, name:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .local v15, f:Ljava/io/File;
    :try_start_6
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_5

    .line 609
    const-string v2, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 612
    :catch_1
    move-exception v14

    .line 613
    .local v14, ex:Ljava/lang/SecurityException;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 593
    .end local v14           #ex:Ljava/lang/SecurityException;
    .end local v15           #f:Ljava/io/File;
    .end local v19           #name:Ljava/lang/String;
    :catch_2
    move-exception v13

    .local v13, e:Ljava/lang/Exception;
    move v12, v11

    .line 595
    .end local v11           #deleteTrackNum:I
    .restart local v12       #deleteTrackNum:I
    goto/16 :goto_1

    .line 616
    .end local v12           #deleteTrackNum:I
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v11       #deleteTrackNum:I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 622
    const-string v2, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<< deleteTracks: num = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 623
    .end local v11           #deleteTrackNum:I
    .restart local v12       #deleteTrackNum:I
    goto/16 :goto_1
.end method

.method public static displayDatabaseError(Landroid/app/Activity;Z)V
    .locals 11
    .parameter "a"
    .parameter "isMounted"

    .prologue
    .line 751
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 849
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 761
    .local v4, status:Ljava/lang/String;
    sget-object v8, Lcom/android/music/MusicUtils;->sLastSdStatus:Ljava/lang/String;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/music/MusicUtils;->sLastSdStatus:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 762
    const-string v8, "MusicUtils"

    const-string v9, "displayDatabaseError: SD status is not change"

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 765
    :cond_1
    const-string v8, "MusicUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayDatabaseError: SD status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    sput-object v4, Lcom/android/music/MusicUtils;->sLastSdStatus:Ljava/lang/String;

    .line 775
    const v5, 0x7f070042

    .line 776
    .local v5, title:I
    const v2, 0x7f070043

    .line 778
    .local v2, message:I
    const-string v8, "shared"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "unmounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 781
    :cond_2
    const v5, 0x7f070042

    .line 782
    const v2, 0x7f070043

    .line 812
    :cond_3
    :goto_1
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 814
    const v8, 0x7f0c0029

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 815
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 816
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :cond_4
    const v8, 0x7f0c003e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 820
    if-eqz v7, :cond_5

    .line 821
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 823
    :cond_5
    const v8, 0x7f0c003d

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 824
    if-eqz v7, :cond_6

    .line 825
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 827
    :cond_6
    const v8, 0x102000a

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 828
    if-eqz v7, :cond_7

    .line 829
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 831
    :cond_7
    const v8, 0x7f0c0038

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 832
    if-eqz v7, :cond_8

    .line 833
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 834
    .local v3, parent:Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 837
    .end local v3           #parent:Landroid/view/View;
    :cond_8
    const v8, 0x7f0c0027

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 838
    if-eqz v7, :cond_9

    .line 839
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 842
    :cond_9
    const v8, 0x7f0c003e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 843
    .local v6, tv:Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 845
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.android.music.sdcardstatusupdate"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, i:Landroid/content/Intent;
    const-string v8, "message"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    const-string v8, "onoff"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 787
    .end local v0           #i:Landroid/content/Intent;
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_a
    const-string v8, "removed"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 789
    const v5, 0x7f07003f

    .line 790
    const v2, 0x7f070040

    goto/16 :goto_1

    .line 795
    :cond_b
    const-string v8, "mounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p1, :cond_3

    .line 800
    const-string v8, ""

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 801
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 802
    .local v1, intent:Landroid/content/Intent;
    const-class v8, Lcom/android/music/ScanningProgress;

    invoke-virtual {v1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 804
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 805
    .local v3, parent:Landroid/app/Activity;
    if-eqz v3, :cond_c

    .line 806
    const/16 v8, 0xb

    invoke-virtual {v3, v1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 808
    :cond_c
    const/16 v8, 0xb

    invoke-virtual {p0, v1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method

.method static emptyShow(Landroid/widget/ListView;Landroid/app/Activity;)V
    .locals 7
    .parameter "list"
    .parameter "a"

    .prologue
    const v6, 0x7f0c0013

    const/16 v5, 0x8

    const v4, 0x7f0c0028

    const/4 v3, 0x0

    .line 1604
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1605
    const v2, 0x7f0c0027

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1606
    .local v0, scanView:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1608
    .local v1, text:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/music/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1609
    invoke-virtual {p1, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1610
    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1611
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1612
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 1628
    .end local v0           #scanView:Landroid/view/View;
    .end local v1           #text:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 1613
    .restart local v0       #scanView:Landroid/view/View;
    .restart local v1       #text:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1614
    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1615
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1618
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1622
    .end local v0           #scanView:Landroid/view/View;
    .end local v1           #text:Landroid/widget/TextView;
    :cond_2
    invoke-static {p1}, Lcom/android/music/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1623
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1

    .line 1625
    :cond_3
    invoke-virtual {p1, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1
.end method

.method public static getAllSongs(Landroid/content/Context;)[J
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 463
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "is_music=1"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 468
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 480
    if-eqz v6, :cond_0

    .line 481
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v4

    .line 471
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 472
    .local v8, len:I
    new-array v9, v8, [J

    .line 473
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_2

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 475
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 480
    :cond_2
    if-eqz v6, :cond_3

    .line 481
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v4, v9

    goto :goto_0

    .line 480
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 481
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    .line 1145
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"
    .parameter "allowdefault"

    .prologue
    .line 1153
    const-string v5, "MusicUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> getArtWork, song_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", album_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gez v5, :cond_3

    .line 1157
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-ltz v5, :cond_1

    .line 1158
    const-wide/16 v5, -0x1

    invoke-static {p0, p1, p2, v5, v6}, Lcom/android/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1159
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1202
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 1163
    :cond_1
    if-eqz p5, :cond_2

    .line 1164
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1166
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1169
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1170
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1171
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_7

    .line 1172
    const/4 v2, 0x0

    .line 1174
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1175
    const/4 v5, 0x0

    sget-object v6, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1194
    if-eqz v2, :cond_0

    .line 1195
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1197
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1176
    :catch_1
    move-exception v1

    .line 1179
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "MusicUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getArtWork: open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed, try getArtworkFromFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1181
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 1182
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1183
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1184
    if-nez v0, :cond_5

    if-eqz p5, :cond_5

    .line 1185
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1194
    .end local v0           #bm:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 1195
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1197
    :catch_2
    move-exception v5

    goto :goto_0

    .line 1188
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz p5, :cond_5

    .line 1189
    :try_start_4
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1194
    :cond_5
    if-eqz v2, :cond_0

    .line 1195
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1197
    :catch_3
    move-exception v5

    goto :goto_0

    .line 1193
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 1194
    if-eqz v2, :cond_6

    .line 1195
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1198
    :cond_6
    :goto_1
    throw v5

    .line 1202
    .end local v2           #in:Ljava/io/InputStream;
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1197
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method private static getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    .line 1208
    const-string v8, "MusicUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">> getArtworkFromFile, songid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", albumid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v1, 0x0

    .line 1210
    .local v1, bm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 1211
    .local v0, art:[B
    const/4 v5, 0x0

    .line 1213
    .local v5, path:Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v8, p3, v8

    if-gez v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 1214
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Must specify an album or a song id"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1216
    :cond_0
    const/4 v6, 0x0

    .line 1218
    .local v6, pfd:Landroid/os/ParcelFileDescriptor;
    const-wide/16 v8, 0x0

    cmp-long v8, p3, v8

    if-gez v8, :cond_4

    .line 1219
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://media/external/audio/media/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/albumart"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1220
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "r"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1221
    const-string v8, "MusicUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getArtworkFromFile: pFD="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    if-eqz v6, :cond_1

    .line 1223
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 1224
    .local v4, fd:Ljava/io/FileDescriptor;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 1240
    .end local v4           #fd:Ljava/io/FileDescriptor;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 1241
    :try_start_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1247
    .end local v7           #uri:Landroid/net/Uri;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 1248
    sput-object v1, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 1250
    :cond_3
    const-string v8, "MusicUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<< getArtworkFromFile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-object v1

    .line 1227
    :cond_4
    :try_start_2
    sget-object v8, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v8, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1228
    .restart local v7       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "r"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1229
    const-string v8, "MusicUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getArtworkFromFile: pFD="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    if-eqz v6, :cond_1

    .line 1231
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 1232
    .restart local v4       #fd:Ljava/io/FileDescriptor;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    goto :goto_0

    .line 1243
    .end local v4           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v2

    .line 1244
    .local v2, e:Ljava/io/IOException;
    const-string v8, "MusicUtils"

    const-string v9, "fd.close: IOException!"

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1235
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 1240
    if-eqz v6, :cond_2

    .line 1241
    :try_start_3
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1243
    :catch_2
    move-exception v2

    .line 1244
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "MusicUtils"

    const-string v9, "fd.close: IOException!"

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1236
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 1237
    .local v3, ex:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v8, "MusicUtils"

    const-string v9, "getArtworkFromFile: FileNotFoundException!"

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1240
    if-eqz v6, :cond_2

    .line 1241
    :try_start_5
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 1243
    :catch_4
    move-exception v2

    .line 1244
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "MusicUtils"

    const-string v9, "fd.close: IOException!"

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1239
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    .line 1240
    if-eqz v6, :cond_5

    .line 1241
    :try_start_6
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1245
    :cond_5
    :goto_2
    throw v8

    .line 1243
    :catch_5
    move-exception v2

    .line 1244
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "MusicUtils"

    const-string v10, "fd.close: IOException!"

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getCachedArtwork(Landroid/content/Context;JLandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .parameter "context"
    .parameter "artIndex"
    .parameter "defaultArtwork"

    .prologue
    .line 1053
    const/4 v8, 0x0

    .line 1054
    .local v8, d:Landroid/graphics/drawable/Drawable;
    sget-object v2, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 1055
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    .line 1056
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    if-nez v8, :cond_0

    .line 1058
    move-object/from16 v8, p3

    .line 1059
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1060
    .local v10, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1061
    .local v12, w:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1063
    .local v9, h:I
    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-static/range {v1 .. v6}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1064
    .local v7, b:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 1066
    const/4 v1, 0x1

    invoke-static {v7, v12, v9, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1067
    new-instance v8, Lcom/android/music/MusicUtils$FastBitmapDrawable;

    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v7}, Lcom/android/music/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1068
    .restart local v8       #d:Landroid/graphics/drawable/Drawable;
    sget-object v2, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 1070
    :try_start_1
    sget-object v1, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/Drawable;

    .line 1071
    .local v11, value:Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_1

    .line 1072
    sget-object v1, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1079
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v9           #h:I
    .end local v10           #icon:Landroid/graphics/Bitmap;
    .end local v11           #value:Landroid/graphics/drawable/Drawable;
    .end local v12           #w:I
    :cond_0
    return-object v8

    .line 1056
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1074
    .restart local v7       #b:Landroid/graphics/Bitmap;
    .restart local v9       #h:I
    .restart local v10       #icon:Landroid/graphics/Bitmap;
    .restart local v11       #value:Landroid/graphics/drawable/Drawable;
    .restart local v12       #w:I
    :cond_1
    move-object v8, v11

    goto :goto_0

    .line 1076
    .end local v11           #value:Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static getCardId(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1453
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1454
    .local v0, res:Landroid/content/ContentResolver;
    const-string v1, "content://media/external/fs_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1455
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 1456
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 1457
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1458
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1459
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1463
    :goto_0
    return v7

    .line 1461
    :cond_0
    const-string v1, "MusicUtils"

    const-string v2, "getCardId: cursor=null"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getContentURIForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 880
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAlbumId()J
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 309
    :goto_0
    return-wide v0

    .line 306
    :catch_0
    move-exception v0

    .line 309
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()J
    .locals 2

    .prologue
    .line 313
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getArtistId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 319
    :goto_0
    return-wide v0

    .line 316
    :catch_0
    move-exception v0

    .line 319
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()J
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 329
    :goto_0
    return-wide v0

    .line 326
    :catch_0
    move-exception v0

    .line 329
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentShuffleMode()I
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, mode:I
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 336
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 337
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 1255
    const-string v1, "MusicUtils"

    const-string v2, "getDefaultArtwork"

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1257
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1265
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static getSDCardId(Landroid/os/storage/StorageManager;)I
    .locals 7
    .parameter "storageManager"

    .prologue
    .line 1528
    const/4 v2, -0x1

    .line 1529
    .local v2, mSDCardId:I
    if-eqz p0, :cond_0

    .line 1530
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v3

    .line 1531
    .local v3, volumePath:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1532
    array-length v1, v3

    .line 1533
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1534
    const-string v4, "MusicUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCardpath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    .line 1533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1539
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v3           #volumePath:[Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static getSongListForAlbum(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 426
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 428
    .local v2, ccols:[Ljava/lang/String;
    const-string v3, "album_id=? AND is_music=1"

    .line 430
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 431
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 435
    invoke-static {v6}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 436
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 439
    .end local v7           #list:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/android/music/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForArtist(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 408
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 410
    .local v2, ccols:[Ljava/lang/String;
    const-string v3, "artist_id=?  AND is_music=1"

    .line 412
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 413
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album_key,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 417
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 418
    invoke-static {v6}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 419
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 422
    .end local v7           #list:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/android/music/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[J
    .locals 7
    .parameter "cursor"

    .prologue
    .line 388
    if-nez p0, :cond_1

    .line 389
    sget-object v4, Lcom/android/music/MusicUtils;->sEmptyList:[J

    .line 404
    :cond_0
    return-object v4

    .line 391
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 392
    .local v3, len:I
    new-array v4, v3, [J

    .line 393
    .local v4, list:[J
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 394
    const/4 v0, -0x1

    .line 396
    .local v0, colidx:I
    :try_start_0
    const-string v5, "audio_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 400
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 401
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 402
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 397
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 398
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static getSongListForCursorExceptSubFolder(Landroid/database/Cursor;Ljava/lang/String;)[J
    .locals 13
    .parameter "cursor"
    .parameter "folderPath"

    .prologue
    .line 1695
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1696
    :cond_0
    sget-object v6, Lcom/android/music/MusicUtils;->sEmptyList:[J

    .line 1727
    :cond_1
    :goto_0
    return-object v6

    .line 1698
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 1699
    .local v4, len:I
    new-array v5, v4, [J

    .line 1700
    .local v5, listAll:[J
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1701
    const-string v10, "_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1702
    .local v1, columnId:I
    const-string v10, "_data"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1705
    .local v0, columnData:I
    const/4 v8, 0x0

    .line 1706
    .local v8, songNum:I
    const/4 v3, 0x0

    .local v3, i:I
    move v9, v8

    .end local v8           #songNum:I
    .local v9, songNum:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1707
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1708
    .local v2, data:Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "/"

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1710
    .local v7, path:Ljava/lang/String;
    const-string v10, "MusicUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSongListForCursorExceptSubFolder: path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", folderPath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1712
    add-int/lit8 v8, v9, 0x1

    .end local v9           #songNum:I
    .restart local v8       #songNum:I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    aput-wide v10, v5, v9

    .line 1714
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1706
    add-int/lit8 v3, v3, 0x1

    move v9, v8

    .end local v8           #songNum:I
    .restart local v9       #songNum:I
    goto :goto_1

    .line 1717
    .end local v2           #data:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    :cond_3
    if-nez v9, :cond_4

    .line 1718
    const-string v10, "MusicUtils"

    const-string v11, "getSongListForCursorExceptSubFolder: select folder has no music!"

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    sget-object v6, Lcom/android/music/MusicUtils;->sEmptyList:[J

    goto :goto_0

    .line 1722
    :cond_4
    move v4, v9

    .line 1723
    new-array v6, v4, [J

    .line 1724
    .local v6, listExceptSubFolder:[J
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_1

    .line 1725
    aget-wide v10, v5, v3

    aput-wide v10, v6, v3

    .line 1724
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v6           #listExceptSubFolder:[J
    .restart local v2       #data:Ljava/lang/String;
    .restart local v7       #path:Ljava/lang/String;
    :cond_5
    move v8, v9

    .end local v9           #songNum:I
    .restart local v8       #songNum:I
    goto :goto_2
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 443
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    .line 444
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 447
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 448
    invoke-static {v6}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 449
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 452
    .end local v7           #list:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/android/music/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method static hasBoundClient()Z
    .locals 1

    .prologue
    .line 1681
    sget-object v0, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    :cond_0
    const/4 v0, 0x0

    .line 1684
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static hasMountedExternalSDcard(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 1880
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 1882
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    const/4 v0, 0x0

    .line 1883
    .local v0, hasMountedExternalSDcard:Z
    if-eqz v4, :cond_1

    .line 1884
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v5

    .line 1885
    .local v5, volumePath:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1886
    const/4 v3, 0x0

    .line 1887
    .local v3, status:Ljava/lang/String;
    array-length v2, v5

    .line 1888
    .local v2, length:I
    const/4 v6, 0x2

    if-lt v2, v6, :cond_1

    .line 1889
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1890
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1891
    const-string v6, "MusicUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasMountedExternalSDcard: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1894
    const/4 v0, 0x1

    .line 1889
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1901
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #status:Ljava/lang/String;
    .end local v5           #volumePath:[Ljava/lang/String;
    :cond_1
    const-string v6, "MusicUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasMountedExternalSDcard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return v0
.end method

.method static hasMountedSDcard(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 1549
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 1551
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    const/4 v0, 0x0

    .line 1552
    .local v0, hasMountedSDcard:Z
    if-eqz v4, :cond_1

    .line 1553
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v5

    .line 1554
    .local v5, volumePath:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1555
    const/4 v3, 0x0

    .line 1556
    .local v3, status:Ljava/lang/String;
    array-length v2, v5

    .line 1557
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1558
    aget-object v6, v5, v1

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1559
    const-string v6, "MusicUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasMountedSDcard: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1562
    const/4 v0, 0x1

    .line 1557
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1567
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #status:Ljava/lang/String;
    .end local v5           #volumePath:[Ljava/lang/String;
    :cond_1
    const-string v6, "MusicUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasMountedSDcard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return v0
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 4
    .parameter "a"

    .prologue
    const/16 v3, 0x8

    .line 854
    const v2, 0x7f0c0029

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 855
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 859
    :cond_0
    const v2, 0x7f0c003e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 860
    if-eqz v1, :cond_1

    .line 861
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 863
    :cond_1
    const v2, 0x7f0c003d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 864
    if-eqz v1, :cond_2

    .line 865
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 867
    :cond_2
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 868
    if-eqz v1, :cond_3

    .line 869
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 872
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.sdcardstatusupdate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .local v0, i:Landroid/content/Intent;
    const-string v2, "onoff"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 874
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 876
    const-string v2, "MusicUtils"

    const-string v3, "hideDatabaseError when sdcard mounted!"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method static idForplaylist(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1738
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1743
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 1744
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 1745
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1746
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1747
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1749
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1751
    :cond_1
    return v7
.end method

.method public static initAlbumArtCache()V
    .locals 3

    .prologue
    .line 1036
    :try_start_0
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v1

    .line 1037
    .local v1, id:I
    sget v2, Lcom/android/music/MusicUtils;->sArtCacheId:I

    if-eq v1, v2, :cond_0

    .line 1038
    invoke-static {}, Lcom/android/music/MusicUtils;->clearAlbumArtCache()V

    .line 1039
    sput v1, Lcom/android/music/MusicUtils;->sArtCacheId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 725
    const/4 v7, 0x0

    .line 726
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 728
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 729
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v7, v8

    .line 730
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_0
    return v7

    :cond_1
    move v7, v9

    .line 729
    goto :goto_0
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 376
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 378
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 379
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 172
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p3, :cond_1

    .line 173
    if-ne p2, v5, :cond_0

    .line 174
    const v3, 0x7f070019

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 176
    :cond_0
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 179
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 180
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const v3, 0x7f080002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 186
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 187
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 188
    const v3, 0x7f070085

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    if-ne p2, v8, :cond_0

    .line 207
    const v3, 0x7f070019

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_1

    .line 211
    const v3, 0x7f080002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 214
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 215
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 216
    const v3, 0x7f070085

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 221
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 222
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static makeInsertItems([JIII)V
    .locals 5
    .parameter "ids"
    .parameter "offset"
    .parameter "len"
    .parameter "base"

    .prologue
    .line 649
    add-int v1, p1, p2

    array-length v2, p0

    if-le v1, v2, :cond_0

    .line 650
    array-length v1, p0

    sub-int p2, v1, p1

    .line 653
    :cond_0
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    array-length v1, v1

    if-eq v1, p2, :cond_2

    .line 654
    :cond_1
    new-array v1, p2, [Landroid/content/ContentValues;

    sput-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 657
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_4

    .line 658
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 659
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 662
    :cond_3
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "play_order"

    add-int v3, p3, p1

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "audio_id"

    add-int v3, p1, v0

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_4
    return-void
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V
    .locals 10
    .parameter "context"
    .parameter "sub"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 497
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    const-string v1, "name"

    aput-object v1, v2, v9

    .line 501
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 502
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 503
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resolver = null"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string v3, "name != \'\'"

    .line 507
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name_pinyin_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 510
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 511
    const/16 v1, 0xc

    const v4, 0x7f070052

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 512
    const/4 v1, 0x4

    const v4, 0x7f070053

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 513
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 516
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 517
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "playlist"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v7, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 521
    const/4 v1, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 523
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 526
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    if-eqz v6, :cond_0

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static makePlaylistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "template"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1762
    const/4 v8, 0x1

    .line 1764
    .local v8, num:I
    new-array v2, v13, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v2, v12

    .line 1767
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1768
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "name != \'\'"

    .line 1769
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1773
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1799
    :goto_0
    return-object v4

    .line 1778
    :cond_0
    new-array v1, v13, [Ljava/lang/Object;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .local v9, num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v12

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1785
    .local v11, suggestedname:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, done:Z
    move v8, v9

    .line 1786
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_1
    if-nez v7, :cond_3

    .line 1787
    const/4 v7, 0x1

    .line 1788
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1789
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1790
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1791
    .local v10, playlistname:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1792
    new-array v1, v13, [Ljava/lang/Object;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .restart local v9       #num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v12

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1793
    const/4 v7, 0x0

    move v8, v9

    .line 1795
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1798
    .end local v10           #playlistname:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v11

    .line 1799
    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 895
    cmp-long v2, p1, v7

    if-gez v2, :cond_0

    const v2, 0x7f07007a

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 903
    sget-object v1, Lcom/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 904
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 905
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 906
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 907
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 908
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 910
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 895
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const v2, 0x7f07007b

    goto :goto_0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 919
    invoke-static {p0, p1, v0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 920
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 923
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 924
    return-void
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    .line 932
    invoke-static {p1}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 933
    .local v0, list:[J
    invoke-static {p0, v0, p2, p3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 934
    return-void
.end method

.method public static playAll(Landroid/content/Context;[JI)V
    .locals 1
    .parameter "context"
    .parameter "list"
    .parameter "position"

    .prologue
    .line 927
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 928
    return-void
.end method

.method private static playAll(Landroid/content/Context;[JIZ)V
    .locals 10
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, -0x1

    .line 937
    array-length v7, p1

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v7, :cond_1

    .line 938
    :cond_0
    const-string v6, "MusicUtils"

    const-string v7, "attempt to play empty song list"

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const v6, 0x7f070055

    new-array v7, v8, [Ljava/lang/Object;

    array-length v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 941
    .local v4, message:Ljava/lang/String;
    invoke-static {p0, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 978
    .end local v4           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 946
    :cond_1
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-class v8, Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v7, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 947
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 949
    if-eqz p3, :cond_2

    .line 950
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 952
    :cond_2
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 953
    .local v0, curid:J
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    .line 954
    .local v2, curpos:I
    if-eq p2, v6, :cond_3

    if-ne v2, p2, :cond_3

    aget-wide v7, p1, p2

    cmp-long v7, v0, v7

    if-nez v7, :cond_3

    .line 958
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v5

    .line 959
    .local v5, playlist:[J
    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 961
    const-string v6, "MusicUtils"

    const-string v7, "playAll: same playlist!"

    invoke-static {v6, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->play()V

    goto :goto_0

    .line 971
    .end local v0           #curid:J
    .end local v2           #curpos:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #playlist:[J
    :catch_0
    move-exception v6

    goto :goto_0

    .line 966
    .restart local v0       #curid:J
    .restart local v2       #curpos:I
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_3
    if-gez p2, :cond_4

    .line 967
    const/4 p2, 0x0

    .line 969
    :cond_4
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz p3, :cond_5

    :goto_1
    invoke-interface {v7, p1, v6}, Lcom/android/music/IMediaPlaybackService;->open([JI)V

    .line 970
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 972
    .end local v0           #curid:J
    .end local v2           #curpos:I
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v6

    throw v6

    .restart local v0       #curid:J
    .restart local v2       #curpos:I
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_5
    move v6, p2

    .line 969
    goto :goto_1
.end method

.method public static playPlaylist(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 456
    invoke-static {p0, p1, p2}, Lcom/android/music/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 457
    .local v0, list:[J
    if-eqz v0, :cond_0

    .line 458
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 460
    :cond_0
    return-void
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 721
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    const/4 v7, 0x0

    .line 706
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 707
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 715
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 710
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    if-lez p6, :cond_1

    .line 711
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 713
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 714
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 715
    goto :goto_0
.end method

.method public static resetSdStatus()V
    .locals 2

    .prologue
    .line 1517
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/MusicUtils;->sLastSdStatus:Ljava/lang/String;

    .line 1518
    const-string v0, "MusicUtils"

    const-string v1, "Reset mLastSdStatus to be null to refresh database error UI!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    return-void
.end method

.method static resetStaticService()V
    .locals 2

    .prologue
    .line 1670
    sget-object v0, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1671
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .line 1672
    const-string v0, "MusicUtils"

    const-string v1, "resetStaticService when service onDestroy!"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    return-void
.end method

.method static setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 23
    .parameter "v"
    .parameter "bm"

    .prologue
    .line 1416
    if-nez p1, :cond_0

    .line 1417
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1450
    :goto_0
    return-void

    .line 1421
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 1422
    .local v18, vwidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 1423
    .local v17, vheight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1424
    .local v6, bwidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1425
    .local v5, bheight:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    div-float v15, v19, v20

    .line 1426
    .local v15, scalex:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v5

    move/from16 v20, v0

    div-float v16, v19, v20

    .line 1427
    .local v16, scaley:F
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v19

    const v20, 0x3fa66666

    mul-float v14, v19, v20

    .line 1429
    .local v14, scale:F
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1430
    .local v8, config:Landroid/graphics/Bitmap$Config;
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1431
    .local v4, bg:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1432
    .local v7, c:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 1433
    .local v13, paint:Landroid/graphics/Paint;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1434
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1435
    new-instance v11, Landroid/graphics/ColorMatrix;

    invoke-direct {v11}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1436
    .local v11, greymatrix:Landroid/graphics/ColorMatrix;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1437
    new-instance v9, Landroid/graphics/ColorMatrix;

    invoke-direct {v9}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1438
    .local v9, darkmatrix:Landroid/graphics/ColorMatrix;
    const v19, 0x3e99999a

    const v20, 0x3e99999a

    const v21, 0x3e99999a

    const/high16 v22, 0x3f80

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 1439
    invoke-virtual {v11, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1440
    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v10, v11}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1441
    .local v10, filter:Landroid/graphics/ColorFilter;
    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1442
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 1443
    .local v12, matrix:Landroid/graphics/Matrix;
    neg-int v0, v6

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    neg-int v0, v5

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1444
    const/high16 v19, 0x4120

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1445
    invoke-virtual {v12, v14, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1446
    div-int/lit8 v19, v18, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v17, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1447
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1449
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static setEffectPanelMenu(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 4
    .parameter "context"
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 1662
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1663
    .local v0, i:Landroid/content/Intent;
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1664
    return-void
.end method

.method static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1269
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1271
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1272
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1273
    invoke-static {v0}, Lcom/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1274
    return-void
.end method

.method public static setPartyShuffleMenuIcon(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const v3, 0x7f020022

    .line 358
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 359
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    .line 361
    .local v1, shuffle:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 362
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 363
    const v2, 0x7f07001c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 369
    .end local v1           #shuffle:I
    :cond_0
    :goto_0
    return-void

    .line 365
    .restart local v1       #shuffle:I
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 366
    const v2, 0x7f07001b

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method static setRingtone(Landroid/content/Context;J)V
    .locals 13
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1277
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1279
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1280
    .local v10, ringUri:Landroid/net/Uri;
    const-string v0, "MusicUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRingtone ringUri = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1283
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string v0, "is_alarm"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 1298
    .local v2, cols:[Ljava/lang/String;
    const-string v3, "_id=?"

    .line 1299
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1300
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1304
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1306
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1307
    const-string v0, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1308
    const-string v0, "ringtone_second"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1309
    const v0, 0x7f07004f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v12, 0x2

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1310
    .local v8, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1313
    .end local v8           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1314
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1317
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 1286
    :catch_0
    move-exception v7

    .line 1288
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    const-string v0, "MusicUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t set ringtone flag for id "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1313
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v11       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1314
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static setSpinnerState(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 737
    invoke-static {p0}, Lcom/android/music/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 915
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 916
    return-void
.end method

.method static startEffectPanel(Landroid/app/Activity;)Z
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 1637
    sget-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1650
    :goto_0
    return v3

    .line 1641
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->getAudioSessionId()I

    move-result v0

    .line 1642
    .local v0, audioSessionId:I
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1646
    const/16 v4, 0xd

    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    const/4 v3, 0x1

    goto :goto_0

    .line 1648
    .end local v0           #audioSessionId:I
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1649
    .local v2, re:Landroid/os/RemoteException;
    const-string v4, "MusicUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException in start effect  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static togglePartyShuffle()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 344
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 345
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    .line 347
    .local v0, shuffle:I
    if-ne v0, v2, :cond_1

    .line 348
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V
    .locals 5
    .parameter "token"

    .prologue
    const/4 v4, 0x0

    .line 260
    sput-object v4, Lcom/android/music/MusicUtils;->sLastSdStatus:Ljava/lang/String;

    .line 261
    const-string v2, "MusicUtils"

    const-string v3, "Reset mLastSdStatus to be null"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-nez p0, :cond_1

    .line 263
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind with null token"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/music/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 267
    .local v0, cw:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/MusicUtils$ServiceBinder;

    .line 268
    .local v1, sb:Lcom/android/music/MusicUtils$ServiceBinder;
    if-nez v1, :cond_2

    .line 269
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind for unknown Context"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 273
    sget-object v2, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    sput-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    goto :goto_0
.end method

.method static updateNowPlaying(Landroid/app/Activity;I)V
    .locals 14
    .parameter "activity"
    .parameter "orientation"

    .prologue
    .line 1327
    const v10, 0x7f0c0038

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1328
    .local v5, nowPlayingView:Landroid/view/View;
    if-nez v5, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    const-string v10, "MusicUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateNowPlaying: activity = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", orientaiton = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1333
    .local v4, nowPlayingParent:Landroid/view/View;
    const/4 v10, 0x2

    if-eq p1, v10, :cond_2

    const v10, 0x7f0c003d

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    .line 1335
    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1343
    :cond_3
    const v10, 0x7f0c003a

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1347
    .local v2, blankView:Landroid/view/View;
    :try_start_0
    sget-object v10, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    .line 1348
    const v10, 0x7f0c0001

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1349
    .local v9, title:Landroid/widget/TextView;
    const v10, 0x7f0c0002

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1350
    .local v0, artist:Landroid/widget/TextView;
    sget-object v10, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1355
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v8

    .line 1356
    .local v8, textColor:I
    if-eqz v8, :cond_4

    .line 1357
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1361
    :cond_4
    sget-object v10, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 1362
    .local v1, artistName:Ljava/lang/String;
    const-string v10, "<unknown>"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1363
    const v10, 0x7f070046

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1365
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    new-instance v10, Lcom/android/music/MusicUtils$1;

    invoke-direct {v10}, Lcom/android/music/MusicUtils$1;-><init>()V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1377
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1378
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    const-string v10, "MusicUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateNowPlaying with id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", track name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    .end local v0           #artist:Landroid/widget/TextView;
    .end local v1           #artistName:Ljava/lang/String;
    .end local v8           #textColor:I
    .end local v9           #title:Landroid/widget/TextView;
    :goto_1
    const-class v10, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1395
    const v10, 0x7f0c003b

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1396
    .local v6, overflowButton:Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    const v10, 0x7f0c0039

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1400
    .local v7, searchButton:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_0

    .line 1403
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1382
    .end local v6           #overflowButton:Landroid/view/View;
    .end local v7           #searchButton:Landroid/view/View;
    :cond_6
    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1385
    :catch_0
    move-exception v3

    .line 1386
    .local v3, ex:Landroid/os/RemoteException;
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1387
    const-string v10, "MusicUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateNowPlaying with RemoteException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1406
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_7
    const v10, 0x7f0c0039

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1407
    .restart local v7       #searchButton:Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
