.class public Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "PrivacyGallayChooseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;,
        Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;,
        Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
    }
.end annotation


# static fields
.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final IMAGES_SELECTION:Ljava/lang/String; = "bucket_id=? AND _display_name!=\'\' AND _data!=\'\' AND bucket_display_name!=\'\' "

.field private static final MsgDissmissPD:I = 0x5

.field private static final MsgRefreashGallayChoose:I = 0x1

.field private static final MsgRefreshWhenGetBitMap:I = 0x6

.field private static final MsgShowPD:I = 0x2

.field private static final MsgUpdatePD:I = 0x3

.field private static final MsgUpdatePDMsg:I = 0x4

.field private static final VIDEO_PROJECTION:[Ljava/lang/String; = null

.field private static final VIDEO_SELECTION:Ljava/lang/String; = "bucket_id=? AND _display_name!=\'\' AND _data!=\'\' AND bucket_display_name!=\'\' "


# instance fields
.field private choose_all:Z

.field private encrypt:Landroid/widget/Button;

.field private id:I

.field private image_add_divider:Landroid/widget/TextView;

.field private mAllBtn:Landroid/view/View;

.field private mChoosedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurcor:Landroid/database/Cursor;

.field private mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

.field private mGallaryChooseAdapter:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

.field private mGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

.field private mGallayChooseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

.field private mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private select_all:Landroid/widget/Button;

.field private strongbox_buttonbar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "_display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->IMAGES_PROJECTION:[Ljava/lang/String;

    .line 68
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "_display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->VIDEO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 41
    iput v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->id:I

    .line 42
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->image_add_divider:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGridView:Landroid/widget/GridView;

    .line 44
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->strongbox_buttonbar:Landroid/view/View;

    .line 45
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->encrypt:Landroid/widget/Button;

    .line 46
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->select_all:Landroid/widget/Button;

    .line 53
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    .line 54
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mChoosedFileList:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallaryChooseAdapter:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

    .line 58
    iput-boolean v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->choose_all:Z

    .line 62
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    .line 63
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 72
    new-instance v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    .line 127
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    .line 128
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 384
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallaryChooseAdapter:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->doRefreshGallaryChoose()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->showPD()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->dissmissPD()V

    return-void
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->updatePD(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mChoosedFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->initGallaryChooseWithoutBitmap()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->askRefreshGallaryChoose()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    return-object p1
.end method

.method private askRefreshGallaryChoose()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method private dissmissPD()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void
.end method

.method private doRefreshGallaryChoose()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 194
    new-instance v0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallaryChooseAdapter:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

    .line 195
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallaryChooseAdapter:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 198
    return-void
.end method

.method private initGallaryChooseWithoutBitmap()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->IMAGES_PROJECTION:[Ljava/lang/String;

    const-string v3, "bucket_id=? AND _display_name!=\'\' AND _data!=\'\' AND bucket_display_name!=\'\' "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v7, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    .line 250
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    new-instance v6, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    .line 253
    .local v6, item:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->setRefName(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    .line 258
    const/4 v0, 0x1

    iput v0, v6, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->type:I

    .line 259
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v6           #item:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    :catch_0
    move-exception v0

    .line 292
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 294
    iput-object v8, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    .line 297
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->updateActionBar()V

    .line 298
    return-void

    .line 263
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->VIDEO_PROJECTION:[Ljava/lang/String;

    const-string v3, "bucket_id=? AND _display_name!=\'\' AND _data!=\'\' AND bucket_display_name!=\'\' "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v7, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    .line 271
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 272
    :goto_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    new-instance v6, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    .line 274
    .restart local v6       #item:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->setRefName(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    .line 279
    const/4 v0, 0x2

    iput v0, v6, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->type:I

    .line 280
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 292
    .end local v6           #item:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 294
    iput-object v8, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    :cond_3
    throw v0

    .line 284
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 294
    iput-object v8, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mCurcor:Landroid/database/Cursor;

    goto/16 :goto_1
.end method

.method private setActionBar()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 511
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->actionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 512
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 513
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 517
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 519
    .local v1, customLayout:Landroid/view/View;
    const v2, 0x7f0e0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mAllBtn:Landroid/view/View;

    .line 521
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mAllBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    const v2, 0x7f0e002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mTitle:Landroid/widget/TextView;

    .line 525
    const v2, 0x7f0e002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, backButton:Landroid/view/View;
    new-instance v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$5;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$5;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->updateActionBar()V

    .line 532
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 533
    return-void
.end method

.method private showPD()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method

.method private updateActionBar()V
    .locals 7

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, count:I
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 538
    .local v2, localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    iget-boolean v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    if-eqz v3, :cond_0

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    .end local v2           #localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 543
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->choose_all:Z

    .line 547
    :goto_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mAllBtn:Landroid/view/View;

    iget-boolean v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->choose_all:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    .line 549
    if-lez v0, :cond_3

    .line 550
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a011b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    :goto_2
    return-void

    .line 545
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->choose_all:Z

    goto :goto_1

    .line 553
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0a03c3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private updatePD(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 211
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method

.method private updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "n"
    .parameter "percent"
    .parameter "name"

    .prologue
    .line 215
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 216
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v2, "percent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 221
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 452
    return-void
.end method

.method public initGallaryChooseBitmap()V
    .locals 5

    .prologue
    .line 302
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 304
    .local v2, loaclGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    iget v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 305
    iget-object v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->bitMap:Landroid/graphics/Bitmap;

    .line 311
    :goto_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 315
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #loaclGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    :catch_0
    move-exception v0

    .line 319
    :cond_0
    return-void

    .line 308
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #loaclGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    :cond_1
    iget-object v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->bitMap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 346
    :sswitch_0
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mChoosedFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 347
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, startEncryTask:Z
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 350
    .local v1, localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    iget-boolean v3, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    if-ne v3, v4, :cond_1

    .line 351
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mChoosedFileList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    const/4 v2, 0x1

    goto :goto_1

    .line 355
    .end local v1           #localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    :cond_2
    if-ne v2, v4, :cond_0

    .line 356
    new-instance v3, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;)V

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    .line 357
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 364
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #startEncryTask:Z
    :sswitch_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 365
    iget-boolean v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->choose_all:Z

    if-nez v3, :cond_3

    .line 366
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 367
    .restart local v1       #localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    iput-boolean v4, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    goto :goto_2

    .line 370
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 371
    .restart local v1       #localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    iput-boolean v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    goto :goto_3

    .line 374
    .end local v1           #localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    :cond_4
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->updateActionBar()V

    .line 375
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallaryChooseAdapter:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 344
    :sswitch_data_0
    .sparse-switch
        0x7f0e0030 -> :sswitch_1
        0x7f0e0073 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->setNeedCheckSD(Z)V

    .line 133
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v1, 0x7f030057

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->setContentView(I)V

    .line 135
    const v1, 0x7f0a0310

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->setActionBar()V

    .line 139
    const v1, 0x7f0e0108

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGridView:Landroid/widget/GridView;

    .line 140
    const v1, 0x7f0e0105

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->strongbox_buttonbar:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->strongbox_buttonbar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    const v1, 0x7f0e0073

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->encrypt:Landroid/widget/Button;

    .line 144
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->encrypt:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 148
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 149
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 150
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 151
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$2;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->id:I

    .line 165
    iget v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->id:I

    if-nez v1, :cond_0

    .line 170
    :goto_0
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->initGallaryChooseWithoutBitmap()V

    .line 173
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->askRefreshGallaryChoose()V

    .line 174
    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    invoke-direct {v1, p0, v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    .line 175
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->strongbox_buttonbar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 494
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 465
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 466
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0335

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->getRefName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 467
    const v1, 0x7f0a032f

    new-instance v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$3;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$3;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    const v1, 0x7f0a0333

    new-instance v2, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$4;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$4;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->cancel(Z)Z

    .line 183
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;->cancel(Z)Z

    .line 187
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    .line 189
    :cond_1
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 190
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
    .line 330
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    .line 331
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 332
    .local v0, localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    iget-boolean v1, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->imageChecked:Landroid/widget/ImageView;

    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    .line 339
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->updateActionBar()V

    .line 340
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mItem:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->imageChecked:Landroid/widget/ImageView;

    const v2, 0x7f020075

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->checked:Z

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 456
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 457
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->showDialog(I)V

    .line 458
    return v1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 499
    packed-switch p1, :pswitch_data_0

    .line 508
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 501
    check-cast v0, Landroid/app/AlertDialog;

    .line 502
    .local v0, localAlertDialog:Landroid/app/AlertDialog;
    const v1, 0x7f0a0335

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->getRefName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 503
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
