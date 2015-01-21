.class public Lcom/zte/heartyservice/speedup/GarbageClearedActivity;
.super Landroid/app/Activity;
.source "GarbageClearedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;,
        Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;,
        Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;,
        Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;
    }
.end annotation


# instance fields
.field adapter:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

.field private animation:Landroid/view/animation/Animation;

.field private clearBtn:Landroid/view/View;

.field private clearBtnText:Landroid/widget/TextView;

.field private dcimFile:Ljava/lang/String;

.field private garbageNumberLabel:Landroid/widget/TextView;

.field private ic_speed:Landroid/widget/ImageView;

.field private init:Z

.field listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/speedup/GarbageListItem;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mIdler:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;

.field private mListView:Landroid/widget/ExpandableListView;

.field private mReceiver:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;

.field private mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

.field private noUsedFile:Ljava/lang/String;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private sign:I

.field private total_cache:J

.field private total_deleted_apk_file:J

.field private total_installed_apk_file:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->clearBtn:Landroid/view/View;

    .line 71
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->garbageNumberLabel:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->adapter:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    .line 74
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->listItems:Ljava/util/List;

    .line 76
    iput-wide v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J

    .line 77
    iput-wide v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_deleted_apk_file:J

    .line 78
    iput-wide v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_installed_apk_file:J

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->lock:Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->init:Z

    .line 83
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 85
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 86
    new-instance v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Lcom/zte/heartyservice/speedup/GarbageClearedActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mIdler:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;

    .line 87
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->sign:I

    .line 91
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->animation:Landroid/view/animation/Animation;

    .line 92
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->ic_speed:Landroid/widget/ImageView;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mHandler:Landroid/os/Handler;

    .line 96
    const-string v0, "/LOST.DIR"

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->noUsedFile:Ljava/lang/String;

    .line 97
    const-string v0, "/DCIM/.thumbnails"

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->dcimFile:Ljava/lang/String;

    .line 144
    new-instance v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$1;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 1045
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->garbageNumberLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_deleted_apk_file:J

    return-wide v0
.end method

.method static synthetic access$1122(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_deleted_apk_file:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_deleted_apk_file:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_installed_apk_file:J

    return-wide v0
.end method

.method static synthetic access$1222(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_installed_apk_file:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_installed_apk_file:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->dcimFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->noUsedFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->init:Z

    return v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->init:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J

    return-wide v0
.end method

.method static synthetic access$922(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J

    return-wide v0
.end method

.method private eventInit()V
    .locals 1

    .prologue
    .line 585
    const v0, 0x7f0e021c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->clearBtn:Landroid/view/View;

    .line 586
    const v0, 0x7f0e0384

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->clearBtnText:Landroid/widget/TextView;

    .line 588
    const v0, 0x7f0e017d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->ic_speed:Landroid/widget/ImageView;

    .line 589
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->animation:Landroid/view/animation/Animation;

    .line 590
    return-void
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 528
    const-wide/16 v2, 0x0

    .line 529
    .local v2, size:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 530
    .local v0, fileList:[Ljava/io/File;
    if-nez v0, :cond_0

    .line 532
    const-wide/16 v4, 0x0

    .line 544
    :goto_0
    return-wide v4

    .line 534
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 536
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 534
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 541
    :cond_1
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_2

    :cond_2
    move-wide v4, v2

    .line 544
    goto :goto_0
.end method

.method public static setFileSize(J)Ljava/lang/String;
    .locals 7
    .parameter "size"

    .prologue
    .line 555
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###.##"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, df:Ljava/text/DecimalFormat;
    long-to-float v3, p0

    const/high16 v4, 0x4980

    div-float v1, v3, v4

    .line 558
    .local v1, f:F
    float-to-double v3, v1

    const-wide/high16 v5, 0x3ff0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 559
    long-to-float v3, p0

    const/high16 v4, 0x4480

    div-float v2, v3, v4

    .line 561
    .local v2, f2:F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    .end local v2           #f2:F
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private switchClearBtnState(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->clearBtnText:Landroid/widget/TextView;

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->clearBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->ic_speed:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 280
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->garbageNumberLabel:Landroid/widget/TextView;

    const v1, 0x7f0a057b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->clearBtnText:Landroid/widget/TextView;

    const v1, 0x7f0a057a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->clearBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected adapterInit(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "listViewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/speedup/GarbageListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, listItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/speedup/GarbageListItem;>;"
    const/4 v2, 0x0

    .line 571
    new-instance v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    invoke-direct {v0, p0, p1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->adapter:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    .line 572
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    .line 573
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->adapter:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 574
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 575
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 576
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 577
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 579
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 580
    iput v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->sign:I

    .line 582
    :cond_0
    return-void
.end method

.method public deleteFolderFile(Ljava/lang/String;Z)V
    .locals 6
    .parameter "filePath"
    .parameter "deleteThisPath"

    .prologue
    .line 494
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 495
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 499
    .local v2, files:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 500
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 499
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    :cond_0
    if-eqz p2, :cond_1

    .line 504
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 505
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 517
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 507
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 508
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 513
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected layoutInit(Landroid/widget/RelativeLayout;I)V
    .locals 2
    .parameter "speedItemLayout"
    .parameter "listItemId"

    .prologue
    .line 624
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 625
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 626
    return-void
.end method

.method protected listViewInit()V
    .locals 65

    .prologue
    .line 287
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->listItems:Ljava/util/List;

    .line 290
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppCacheInfoList()Ljava/util/List;

    move-result-object v58

    .line 291
    .local v58, list_cache:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppCache()J

    move-result-wide v9

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J

    .line 293
    const v3, 0x7f0a004c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v62

    .line 294
    .local v62, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->garbageNumberLabel:Landroid/widget/TextView;

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    new-instance v48, Lcom/zte/heartyservice/speedup/GarbageListItem;

    invoke-direct/range {v48 .. v48}, Lcom/zte/heartyservice/speedup/GarbageListItem;-><init>()V

    .line 298
    .local v48, cacheItem:Lcom/zte/heartyservice/speedup/GarbageListItem;
    sget v3, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_CACHE:I

    move-object/from16 v0, v48

    iput v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->type:I

    .line 299
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    .line 300
    const v3, 0x7f0a03f0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;

    .line 301
    const v3, 0x7f0a03f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->subhead:Ljava/lang/String;

    .line 304
    :try_start_0
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .local v54, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .line 305
    .local v8, localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v8, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v3, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v42

    .line 307
    .local v42, appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 308
    .local v5, appName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 309
    .local v4, appIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    iget-wide v9, v8, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->cache:J

    invoke-static {v3, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, cacheSize:Ljava/lang/String;
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    sget v3, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_CACHE:I

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/zte/heartyservice/speedup/GarbageChildItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    .local v2, childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    .end local v2           #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    .end local v4           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v5           #appName:Ljava/lang/String;
    .end local v7           #cacheSize:Ljava/lang/String;
    .end local v8           #localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    .end local v42           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v54           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 320
    :cond_0
    :goto_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppFileInfoList()Ljava/util/List;

    move-result-object v59

    .line 321
    .local v59, list_file:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDeletedAppFileSize()J

    move-result-wide v9

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_deleted_apk_file:J

    .line 322
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getExistAppFileSize()J

    move-result-wide v9

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_installed_apk_file:J

    .line 324
    new-instance v51, Lcom/zte/heartyservice/speedup/GarbageListItem;

    invoke-direct/range {v51 .. v51}, Lcom/zte/heartyservice/speedup/GarbageListItem;-><init>()V

    .line 325
    .local v51, deletedApkFileItem:Lcom/zte/heartyservice/speedup/GarbageListItem;
    sget v3, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_DELETED_APK_FILE:I

    move-object/from16 v0, v51

    iput v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->type:I

    .line 326
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v51

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    .line 327
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_deleted_apk_file:J

    invoke-static {v3, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v63

    .line 329
    .local v63, temp:Ljava/lang/String;
    const-string v3, "0.00 B"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    const-string v63, "0.01 B"

    .line 332
    :cond_1
    const v3, 0x7f0a03f2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v63, v6, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v51

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;

    .line 334
    const v3, 0x7f0a03f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v51

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->subhead:Ljava/lang/String;

    .line 336
    new-instance v56, Lcom/zte/heartyservice/speedup/GarbageListItem;

    invoke-direct/range {v56 .. v56}, Lcom/zte/heartyservice/speedup/GarbageListItem;-><init>()V

    .line 337
    .local v56, installedApkFileItem:Lcom/zte/heartyservice/speedup/GarbageListItem;
    sget v3, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_INSTALLED_APK_FILE:I

    move-object/from16 v0, v56

    iput v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->type:I

    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v56

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    .line 339
    const v3, 0x7f0a03f4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_installed_apk_file:J

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v56

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;

    .line 340
    const v3, 0x7f0a03f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v56

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->subhead:Ljava/lang/String;

    .line 344
    :try_start_1
    invoke-interface/range {v59 .. v59}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_2
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 345
    .local v15, localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    iget-wide v9, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->fileSize:J

    invoke-static {v3, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 346
    .local v14, size:Ljava/lang/String;
    iget v3, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist:I

    if-nez v3, :cond_9

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020016

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 350
    .restart local v4       #appIcon:Landroid/graphics/drawable/Drawable;
    new-instance v60, Ljava/util/HashSet;

    invoke-direct/range {v60 .. v60}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v60, localSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->lables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v55

    .local v55, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/String;

    .line 353
    .local v57, lable:Ljava/lang/String;
    move-object/from16 v0, v60

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 419
    .end local v4           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v14           #size:Ljava/lang/String;
    .end local v15           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    .end local v55           #i$:Ljava/util/Iterator;
    .end local v57           #lable:Ljava/lang/String;
    .end local v60           #localSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    .line 424
    :cond_2
    :goto_4
    const-string v3, "GargageClear"

    const-string v6, " getSysGarbageFile ========xx=================="

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSysGarbageFile()Lcom/zte/heartyservice/speedup/SysGarbageFile;

    move-result-object v22

    .line 428
    .local v22, sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;
    :try_start_2
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    move-wide/from16 v40, v0

    .line 429
    .local v40, aSize:J
    const-string v3, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SDUtils.getInternalSD().toString() + dcimFile == "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->dcimFile:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->dcimFile:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getFolderSize(Ljava/io/File;)J

    move-result-wide v43

    .line 431
    .local v43, bSize:J
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    move-wide/from16 v46, v0

    .line 432
    .local v46, cSize:J
    const-string v3, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SDUtils.getInternalSD().toString() + noUsedFile == "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->noUsedFile:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->noUsedFile:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getFolderSize(Ljava/io/File;)J

    move-result-wide v49

    .line 435
    .local v49, dSize:J
    new-instance v39, Lcom/zte/heartyservice/speedup/GarbageListItem;

    invoke-direct/range {v39 .. v39}, Lcom/zte/heartyservice/speedup/GarbageListItem;-><init>()V

    .line 436
    .local v39, SyscacheItem:Lcom/zte/heartyservice/speedup/GarbageListItem;
    sget v3, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_SYSTEM_CLEAN:I

    move-object/from16 v0, v39

    iput v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->type:I

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    .line 438
    const v3, 0x7f0a0402

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v10

    add-long v11, v40, v43

    add-long v11, v11, v46

    add-long v11, v11, v49

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;

    .line 440
    const v3, 0x7f0a0403

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->subhead:Ljava/lang/String;

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0202b8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 445
    .local v18, sysIcon:Landroid/graphics/drawable/Drawable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-wide v9, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "KB"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    .line 449
    .local v64, tmpFileSize:Ljava/lang/String;
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    sget v17, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_SYSTEM_CLEAN:I

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0404

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v40 .. v41}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->setFileSize(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcom/zte/heartyservice/speedup/GarbageChildItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    .restart local v2       #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02024c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 453
    .local v25, picIcon:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    .end local v2           #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    sget v24, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_SYSTEM_CLEAN:I

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0405

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v43 .. v44}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->setFileSize(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v23, v2

    move-object/from16 v29, v22

    invoke-direct/range {v23 .. v29}, Lcom/zte/heartyservice/speedup/GarbageChildItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    .restart local v2       #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-wide v9, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "KB"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    .line 458
    .local v61, logFileSize:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02026e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 459
    .local v28, logIcon:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    .end local v2           #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    sget v27, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_SYSTEM_CLEAN:I

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0406

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v46 .. v47}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->setFileSize(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v26, v2

    move-object/from16 v32, v22

    invoke-direct/range {v26 .. v32}, Lcom/zte/heartyservice/speedup/GarbageChildItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    .restart local v2       #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0202ef

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 463
    .local v31, nouseIcon:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    .end local v2           #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    sget v30, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_SYSTEM_CLEAN:I

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0407

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static/range {v49 .. v50}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->setFileSize(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v29, v2

    move-object/from16 v35, v22

    invoke-direct/range {v29 .. v35}, Lcom/zte/heartyservice/speedup/GarbageChildItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 464
    .restart local v2       #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020157

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 467
    .local v34, nothingIcon:Landroid/graphics/drawable/Drawable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->blankFileList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0409

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 468
    .local v37, blankFineCount:Ljava/lang/String;
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    .end local v2           #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    sget v33, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_SYSTEM_CLEAN:I

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0408

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v32, v2

    move-object/from16 v38, v22

    invoke-direct/range {v32 .. v38}, Lcom/zte/heartyservice/speedup/GarbageChildItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    .restart local v2       #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 472
    const-string v3, "GargageClear"

    const-string v6, " getSysGarbageFile ===========yy==============="

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->listItems:Ljava/util/List;

    move-object/from16 v0, v39

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 485
    .end local v2           #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    .end local v18           #sysIcon:Landroid/graphics/drawable/Drawable;
    .end local v25           #picIcon:Landroid/graphics/drawable/Drawable;
    .end local v28           #logIcon:Landroid/graphics/drawable/Drawable;
    .end local v31           #nouseIcon:Landroid/graphics/drawable/Drawable;
    .end local v34           #nothingIcon:Landroid/graphics/drawable/Drawable;
    .end local v37           #blankFineCount:Ljava/lang/String;
    .end local v39           #SyscacheItem:Lcom/zte/heartyservice/speedup/GarbageListItem;
    .end local v40           #aSize:J
    .end local v43           #bSize:J
    .end local v46           #cSize:J
    .end local v49           #dSize:J
    .end local v61           #logFileSize:Ljava/lang/String;
    .end local v64           #tmpFileSize:Ljava/lang/String;
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->listItems:Ljava/util/List;

    const v6, 0x7f0e0385

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->adapterInit(Ljava/util/List;I)V

    .line 487
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->switchClearBtnState(Z)V

    .line 488
    return-void

    .line 313
    .end local v22           #sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;
    .end local v51           #deletedApkFileItem:Lcom/zte/heartyservice/speedup/GarbageListItem;
    .end local v56           #installedApkFileItem:Lcom/zte/heartyservice/speedup/GarbageListItem;
    .end local v59           #list_file:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    .end local v63           #temp:Ljava/lang/String;
    .restart local v54       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_3
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->listItems:Ljava/util/List;

    move-object/from16 v0, v48

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 355
    .end local v54           #i$:Ljava/util/Iterator;
    .restart local v4       #appIcon:Landroid/graphics/drawable/Drawable;
    .restart local v14       #size:Ljava/lang/String;
    .restart local v15       #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    .restart local v51       #deletedApkFileItem:Lcom/zte/heartyservice/speedup/GarbageListItem;
    .restart local v55       #i$:Ljava/util/Iterator;
    .restart local v56       #installedApkFileItem:Lcom/zte/heartyservice/speedup/GarbageListItem;
    .restart local v59       #list_file:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    .restart local v60       #localSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v63       #temp:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    .line 356
    .local v13, subhead:Ljava/lang/String;
    :try_start_4
    invoke-virtual/range {v60 .. v60}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 357
    const v3, 0x7f0a03f6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->lables:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 376
    :goto_6
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    sget v10, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_DELETED_APK_FILE:I

    iget-object v12, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->path:Ljava/lang/String;

    move-object v9, v2

    move-object v11, v4

    invoke-direct/range {v9 .. v15}, Lcom/zte/heartyservice/speedup/GarbageChildItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    .restart local v2       #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    move-object/from16 v0, v51

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 359
    .end local v2           #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    :cond_6
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v45, builder:Ljava/lang/StringBuilder;
    const v3, 0x7f0a03f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const/16 v53, 0x0

    .line 362
    .local v53, i:I
    invoke-virtual/range {v60 .. v60}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :goto_7
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/String;

    .line 363
    .restart local v57       #lable:Ljava/lang/String;
    if-nez v53, :cond_7

    .line 364
    move-object/from16 v0, v45

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :goto_8
    add-int/lit8 v53, v53, 0x1

    goto :goto_7

    .line 366
    :cond_7
    const-string v3, ","

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 370
    .end local v57           #lable:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 379
    .end local v4           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v13           #subhead:Ljava/lang/String;
    .end local v45           #builder:Ljava/lang/StringBuilder;
    .end local v53           #i:I
    .end local v55           #i$:Ljava/util/Iterator;
    .end local v60           #localSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_9
    const/16 v42, 0x0

    .line 380
    .restart local v42       #appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 383
    .restart local v4       #appIcon:Landroid/graphics/drawable/Drawable;
    new-instance v60, Ljava/util/HashSet;

    invoke-direct/range {v60 .. v60}, Ljava/util/HashSet;-><init>()V

    .line 385
    .restart local v60       #localSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist_lables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v55

    .restart local v55       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/String;

    .line 386
    .restart local v57       #lable:Ljava/lang/String;
    move-object/from16 v0, v60

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 388
    .end local v57           #lable:Ljava/lang/String;
    :cond_a
    const/4 v13, 0x0

    .line 389
    .restart local v13       #subhead:Ljava/lang/String;
    invoke-virtual/range {v60 .. v60}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    .line 390
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist_names:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v6, v3, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v42

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 393
    const v3, 0x7f0a03f6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist_lables:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 409
    :goto_a
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    sget v10, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_INSTALLED_APK_FILE:I

    iget-object v12, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->path:Ljava/lang/String;

    move-object v9, v2

    move-object v11, v4

    invoke-direct/range {v9 .. v15}, Lcom/zte/heartyservice/speedup/GarbageChildItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    .restart local v2       #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    move-object/from16 v0, v56

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 395
    .end local v2           #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0200bb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 396
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .restart local v45       #builder:Ljava/lang/StringBuilder;
    const v3, 0x7f0a03f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const/16 v53, 0x0

    .line 399
    .restart local v53       #i:I
    invoke-virtual/range {v60 .. v60}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :goto_b
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/String;

    .line 400
    .restart local v57       #lable:Ljava/lang/String;
    if-nez v53, :cond_c

    .line 401
    move-object/from16 v0, v45

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :goto_c
    add-int/lit8 v53, v53, 0x1

    goto :goto_b

    .line 403
    :cond_c
    const-string v3, ","

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 407
    .end local v57           #lable:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    .line 413
    .end local v4           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v13           #subhead:Ljava/lang/String;
    .end local v14           #size:Ljava/lang/String;
    .end local v15           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    .end local v42           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v45           #builder:Ljava/lang/StringBuilder;
    .end local v53           #i:I
    .end local v55           #i$:Ljava/util/Iterator;
    .end local v60           #localSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_e
    move-object/from16 v0, v51

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->listItems:Ljava/util/List;

    move-object/from16 v0, v51

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_f
    move-object/from16 v0, v56

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->listItems:Ljava/util/List;

    move-object/from16 v0, v56

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 475
    .restart local v22       #sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;
    :catch_2
    move-exception v52

    .line 476
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "GargageClear"

    const-string v6, " getSysGarbageFile ===========zz==============="

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 601
    .local v1, viewId:I
    packed-switch v1, :pswitch_data_0

    .line 616
    :goto_0
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->startActivity(Landroid/content/Intent;)V

    .line 618
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->finish()V

    .line 621
    :cond_0
    return-void

    .line 604
    :pswitch_0
    iget-wide v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDeletedAppFileInfoListSize()I

    move-result v2

    if-lez v2, :cond_2

    .line 605
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Lcom/zte/heartyservice/common/datatype/SpeedType;->GARBAGECLEARED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/SpeedType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 608
    :cond_2
    const v2, 0x7f0a005b

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x7f0e021c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    const v1, 0x7f03010e

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->setContentView(I)V

    .line 254
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 255
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 260
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 261
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 262
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 263
    const v1, 0x7f0e0383

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->garbageNumberLabel:Landroid/widget/TextView;

    .line 264
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->eventInit()V

    .line 268
    return-void

    .line 258
    :cond_0
    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 1025
    iget v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->sign:I

    if-ne v0, v2, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1029
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 1030
    iput p3, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->sign:I

    .line 1042
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1031
    :cond_0
    iget v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->sign:I

    if-ne v0, p3, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->sign:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 1033
    iput v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->sign:I

    goto :goto_0

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->sign:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 1037
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1039
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 1040
    iput p3, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->sign:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 221
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mIdler:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->init:Z

    .line 223
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 227
    :try_start_1
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 236
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 241
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mReceiver:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;

    if-eqz v1, :cond_2

    .line 243
    :try_start_3
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mReceiver:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 248
    :cond_2
    :goto_2
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 233
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 236
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    throw v1

    .line 244
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->ic_speed:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;

    invoke-direct {v2, p0, v4}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Lcom/zte/heartyservice/speedup/GarbageClearedActivity$1;)V

    iput-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, intentSpeedUpService:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 206
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppFileScanState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->listViewInit()V

    .line 216
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->switchClearBtnState(Z)V

    .line 210
    new-instance v2, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;

    invoke-direct {v2, p0, v4}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Lcom/zte/heartyservice/speedup/GarbageClearedActivity$1;)V

    iput-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mReceiver:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.zte.heartyservice.intent.action.appfile_scan_completed"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mReceiver:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
