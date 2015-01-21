.class public Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "PrivacyGallaryBucketActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;,
        Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;,
        Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    }
.end annotation


# static fields
.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final IMAGES_SELECTION:Ljava/lang/String; = "_display_name!=\'\' AND _data!=\'\' AND bucket_display_name!=\'\' "

.field private static final MsgDoScanSD:I = 0x1

.field private static final MsgRefreashGallayBucket:I = 0x5

.field private static final MsgRefreshWhenGetBitMap:I = 0x6

.field private static final MsgSDError:I = 0x4

.field private static final MsgScanFinish:I = 0x3

.field private static final MsgScanStart:I = 0x2

.field private static final VIDEO_PROJECTION:[Ljava/lang/String; = null

.field private static final VIDEO_SELECTION:Ljava/lang/String; = "_display_name!=\'\' AND _data!=\'\' AND bucket_display_name!=\'\' "


# instance fields
.field private image_add_divider:Landroid/widget/TextView;

.field private mCurcor:Landroid/database/Cursor;

.field private mGallaryBucketAdapter:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;

.field private mGallayBucketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

.field private strongbox_buttonbar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_display_name"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "bucket_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->IMAGES_PROJECTION:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_display_name"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "bucket_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->VIDEO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->image_add_divider:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGridView:Landroid/widget/GridView;

    .line 38
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->strongbox_buttonbar:Landroid/view/View;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHashMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    .line 51
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallaryBucketAdapter:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;

    .line 58
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 290
    new-instance v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->initGallaryBucketBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->initGallaryBucketWithoutBitmap()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->doRefreshGallaryBucket()V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallaryBucketAdapter:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;

    return-object v0
.end method

.method private askRefreshGallaryBucket()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method

.method private doRefreshGallaryBucket()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 106
    new-instance v0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallaryBucketAdapter:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;

    .line 107
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallaryBucketAdapter:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    return-void
.end method

.method private initGallaryBucketBitmap()V
    .locals 5

    .prologue
    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;

    .line 217
    .local v2, loaclGallayFolderItem:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    iget v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMapType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 218
    iget-object v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMapPath:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMap:Landroid/graphics/Bitmap;

    .line 224
    :goto_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 228
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #loaclGallayFolderItem:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    :catch_0
    move-exception v0

    .line 232
    :cond_0
    return-void

    .line 221
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #loaclGallayFolderItem:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    :cond_1
    iget-object v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMapPath:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private initGallaryBucketWithoutBitmap()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->IMAGES_PROJECTION:[Ljava/lang/String;

    const-string v3, "_display_name!=\'\' AND _data!=\'\' AND bucket_display_name!=\'\' "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    .line 138
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "bucket_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 141
    .local v6, bucketId:I
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHashMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;

    .line 142
    .local v8, item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    if-nez v8, :cond_1

    .line 143
    new-instance v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;

    .end local v8           #item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    invoke-direct {v8, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    .line 144
    .restart local v8       #item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHashMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iput v6, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bucketId:I

    .line 147
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "bucket_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bucketName:Ljava/lang/String;

    .line 149
    const/4 v0, 0x1

    iput v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfImage:I

    .line 150
    const/4 v0, 0x0

    iput v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfVideo:I

    .line 151
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMapPath:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    iput v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMapType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v6           #bucketId:I
    .end local v8           #item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    :catch_0
    move-exception v0

    .line 205
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    iput-object v10, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    .line 211
    :cond_0
    :goto_1
    return-void

    .line 155
    .restart local v6       #bucketId:I
    .restart local v8       #item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    :cond_1
    :try_start_1
    iget v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfImage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfImage:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 205
    .end local v6           #bucketId:I
    .end local v8           #item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 207
    iput-object v10, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    :cond_2
    throw v0

    .line 160
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    .line 165
    :cond_4
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->VIDEO_PROJECTION:[Ljava/lang/String;

    const-string v3, "_display_name!=\'\' AND _data!=\'\' AND bucket_display_name!=\'\' "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    .line 168
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 169
    :goto_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "bucket_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 171
    .restart local v6       #bucketId:I
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHashMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;

    .line 172
    .restart local v8       #item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    if-nez v8, :cond_5

    .line 173
    new-instance v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;

    .end local v8           #item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    invoke-direct {v8, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    .line 174
    .restart local v8       #item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHashMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iput v6, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bucketId:I

    .line 177
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "bucket_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bucketName:Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    iput v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfImage:I

    .line 180
    const/4 v0, 0x1

    iput v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfVideo:I

    .line 181
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMapPath:Ljava/lang/String;

    .line 182
    const/4 v0, 0x2

    iput v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bitMapType:I

    goto :goto_2

    .line 185
    :cond_5
    iget v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfVideo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfVideo:I

    goto :goto_2

    .line 190
    .end local v6           #bucketId:I
    .end local v8           #item:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    :cond_6
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 191
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 196
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;

    .line 197
    .local v9, loaclGallayFolderItem:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    const v0, 0x7f0a030f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, v9, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfImage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, v9, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->numOfVideo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->description:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 205
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #loaclGallayFolderItem:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
    :cond_8
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    iput-object v10, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mCurcor:Landroid/database/Cursor;

    goto/16 :goto_1
.end method

.method private initScan()V
    .locals 3

    .prologue
    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 263
    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;)V

    .line 264
    .local v1, scanReceiver:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;
    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 347
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->setNeedCheckSD(Z)V

    .line 63
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f0a030d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 68
    const v0, 0x7f0e0108

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGridView:Landroid/widget/GridView;

    .line 69
    const v0, 0x7f0e0105

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->strongbox_buttonbar:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->strongbox_buttonbar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->initGallaryBucketWithoutBitmap()V

    .line 72
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->doRefreshGallaryBucket()V

    .line 73
    new-instance v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    invoke-direct {v0, p0, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 74
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->initScan()V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->cancel(Z)Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 89
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "id"

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mGallayBucketList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;

    iget v1, v1, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->bucketId:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->cancel(Z)Z

    .line 95
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->initGallaryBucketWithoutBitmap()V

    .line 98
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->doRefreshGallaryBucket()V

    .line 99
    new-instance v0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    invoke-direct {v0, p0, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 100
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onResume()V

    .line 102
    return-void
.end method
