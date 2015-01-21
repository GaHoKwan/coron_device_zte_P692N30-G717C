.class public Lcom/android/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;,
        Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# static fields
.field public static final EXECUTION_RESULT_CANCEL:I = 0x3

.field public static final EXECUTION_RESULT_FAIL:I = 0x2

.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

.field private static final MSG_DO_SHARE:I = 0x4

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_START:I = 0x3

.field private static final MSG_TASK_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Gallery2/MenuExecutor"

.field private static final mIsDisplay2dAs3dSupported:Z

.field private static final mIsStereoDisplaySupported:Z


# instance fields
.field private volatile hasCancelMultiOperation:Z

.field private volatile isMultiOperation:Z

.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsStereoDisplaySupported:Z

    .line 79
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDisplay2dAs3dSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsDisplay2dAs3dSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 128
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 129
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$2;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$2;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/MenuExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->hasCancelMultiOperation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->hasCancelMultiOperation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->startCropIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->isMultiOperation:Z

    return p1
.end method

.method private appendMessageForSingleId(Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "dialog"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ProgressDialog;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 841
    const/4 v0, 0x0

    .line 842
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 843
    .local v1, obj:Lcom/android/gallery3d/data/MediaObject;
    if-nez v1, :cond_1

    .line 855
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    :goto_0
    return-void

    .line 846
    .restart local v0       #message:Ljava/lang/String;
    .restart local v1       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    instance-of v2, v1, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_3

    .line 847
    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .end local v1           #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 851
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 852
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 848
    .restart local v1       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_3
    instance-of v2, v1, Lcom/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_2

    .line 849
    check-cast v1, Lcom/android/gallery3d/data/MediaSet;

    .end local v1           #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private clickStereoPhoto(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V
    .locals 8
    .parameter "action"
    .parameter "listener"
    .parameter "message"

    .prologue
    .line 739
    const v5, 0x7f0c00c4

    .line 740
    .local v5, menuTitle:I
    move-object v4, p2

    .line 741
    .local v4, menuListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    move v3, p1

    .line 743
    .local v3, menuAction:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$3;

    invoke-direct {v1, p0, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor$3;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 760
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    const v6, 0x104000a

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 761
    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 762
    const v6, 0x7f0c00c4

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 764
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 765
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 766
    return-void
.end method

.method private createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 4
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0c00c4

    if-eq v1, p2, :cond_0

    .line 96
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setTitle(I)V

    .line 98
    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 102
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->isMultiOperation:Z

    if-eqz v1, :cond_1

    .line 103
    const v1, 0x7f0c02bd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/MenuExecutor$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    :cond_1
    if-le p3, v3, :cond_2

    .line 112
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 114
    :cond_2
    return-object v0
.end method

.method private execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 13
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 525
    const/4 v5, 0x1

    .line 526
    .local v5, result:Z
    const-string v8, "Gallery2/MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execute cmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 529
    .local v6, startTime:J
    sparse-switch p3, :sswitch_data_0

    .line 648
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 533
    :sswitch_0
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->delete(Lcom/android/gallery3d/data/Path;)V

    .line 650
    :cond_0
    :goto_0
    const-string v8, "Gallery2/MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "It takes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms to execute cmd for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return v5

    .line 536
    :sswitch_1
    const/16 v8, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 539
    :sswitch_2
    const/16 v8, -0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 542
    :sswitch_3
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 543
    .local v4, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v1

    .line 544
    .local v1, cacheFlag:I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    .line 545
    const/4 v1, 0x1

    .line 549
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 547
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 553
    .end local v1           #cacheFlag:I
    .end local v4           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_4
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 554
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v8, 0x2

    new-array v3, v8, [D

    .line 555
    .local v3, latlng:[D
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 556
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    const/4 v10, 0x1

    aget-wide v10, v3, v10

    invoke-static {v8, v9, v10, v11}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 557
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v9, 0x0

    aget-wide v9, v3, v9

    const/4 v11, 0x1

    aget-wide v11, v3, v11

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto :goto_0

    .line 562
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #latlng:[D
    :sswitch_5
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 563
    .restart local v4       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->Import()Z

    move-result v5

    .line 564
    goto :goto_0

    .line 529
    :sswitch_data_0
    .sparse-switch
        0x7f0b0003 -> :sswitch_3
        0x7f0b0166 -> :sswitch_0
        0x7f0b0189 -> :sswitch_5
        0x7f0b018b -> :sswitch_0
        0x7f0b018e -> :sswitch_2
        0x7f0b018f -> :sswitch_1
        0x7f0b0194 -> :sswitch_4
    .end sparse-switch
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "action"

    .prologue
    .line 277
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 278
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 279
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, mimeType:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 514
    packed-switch p0, :pswitch_data_0

    .line 519
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 516
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 518
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSingleSelectedPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 271
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 272
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 273
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 272
    goto :goto_0
.end method

.method private onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 2
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 285
    return-void
.end method

.method private onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "result"
    .parameter "listener"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method

.method private onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method private onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
.end method

.method private static setMenuItemEnable(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 780
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 781
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 782
    :cond_0
    return-void
.end method

.method public static setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "visible"

    .prologue
    .line 266
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    :cond_0
    return-void
.end method

.method private startCropIntent()V
    .locals 7

    .prologue
    .line 769
    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 770
    .local v1, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 771
    .local v4, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    .line 772
    .local v3, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v5

    invoke-static {v5}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, mimeType:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 775
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 776
    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->isMultiOperation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 171
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 175
    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 177
    :cond_3
    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0
.end method

.method public static updateMenuForPanorama(Landroid/view/Menu;ZZ)V
    .locals 2
    .parameter "menu"
    .parameter "shareAsPanorama360"
    .parameter "disablePanorama360Options"

    .prologue
    const/4 v1, 0x0

    .line 258
    const v0, 0x7f0b018a

    invoke-static {p0, v0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 259
    if-eqz p2, :cond_0

    .line 260
    const v0, 0x7f0b018e

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 261
    const v0, 0x7f0b018f

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 263
    :cond_0
    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 20
    .parameter "menu"
    .parameter "supported"

    .prologue
    .line 209
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_0

    const/4 v5, 0x1

    .line 210
    .local v5, supportDelete:Z
    :goto_0
    and-int/lit8 v18, p1, 0x2

    if-eqz v18, :cond_1

    const/4 v12, 0x1

    .line 211
    .local v12, supportRotate:Z
    :goto_1
    and-int/lit8 v18, p1, 0x8

    if-eqz v18, :cond_2

    const/4 v4, 0x1

    .line 212
    .local v4, supportCrop:Z
    :goto_2
    const/high16 v18, 0x10

    and-int v18, v18, p1

    if-eqz v18, :cond_3

    const/16 v17, 0x1

    .line 213
    .local v17, supportTrim:Z
    :goto_3
    and-int/lit8 v18, p1, 0x4

    if-eqz v18, :cond_4

    const/4 v14, 0x1

    .line 214
    .local v14, supportShare:Z
    :goto_4
    and-int/lit8 v18, p1, 0x20

    if-eqz v18, :cond_5

    const/4 v13, 0x1

    .line 215
    .local v13, supportSetAs:Z
    :goto_5
    and-int/lit8 v18, p1, 0x10

    if-eqz v18, :cond_6

    const/4 v15, 0x1

    .line 216
    .local v15, supportShowOnMap:Z
    :goto_6
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/4 v3, 0x1

    .line 217
    .local v3, supportCache:Z
    :goto_7
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-eqz v18, :cond_8

    const/4 v7, 0x1

    .line 218
    .local v7, supportEdit:Z
    :goto_8
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/4 v9, 0x1

    .line 219
    .local v9, supportInfo:Z
    :goto_9
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const/4 v8, 0x1

    .line 222
    .local v8, supportImport:Z
    :goto_a
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    if-eqz v18, :cond_b

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isBluetoothPrintSupported()Z

    move-result v18

    if-eqz v18, :cond_b

    const/4 v11, 0x1

    .line 225
    .local v11, supportPrint:Z
    :goto_b
    const v18, 0x8000

    and-int v18, v18, p1

    if-eqz v18, :cond_c

    const/4 v6, 0x1

    .line 227
    .local v6, supportDrmInfo:Z
    :goto_c
    const/high16 v18, 0x1

    and-int v18, v18, p1

    if-eqz v18, :cond_d

    const/16 v16, 0x1

    .line 229
    .local v16, supportStereoMode:Z
    :goto_d
    const/high16 v18, 0x2000

    and-int v18, v18, p1

    if-eqz v18, :cond_e

    const/4 v10, 0x1

    .line 231
    .local v10, supportPQTuning:Z
    :goto_e
    const v18, 0x7f0b018b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 232
    const v18, 0x7f0b018e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 233
    const v18, 0x7f0b018f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 234
    const v18, 0x7f0b0190

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 235
    const v18, 0x7f0b0196

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 237
    const v18, 0x7f0b018a

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 238
    const v18, 0x7f0b0186

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v14}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 239
    const v18, 0x7f0b0191

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 240
    const v18, 0x7f0b0194

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 241
    const v18, 0x7f0b018c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 242
    const v18, 0x7f0b0192

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 243
    const v18, 0x7f0b0189

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 246
    const v18, 0x7f0b0198

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 248
    const v18, 0x7f0b018d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 250
    const v18, 0x7f0b0193

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 252
    const v18, 0x7f0b0197

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 253
    invoke-static/range {p0 .. p1}, Lcom/android/gallery3d/ui/MenuExecutor;->updateStereoMenu(Landroid/view/Menu;I)V

    .line 254
    return-void

    .line 209
    .end local v3           #supportCache:Z
    .end local v4           #supportCrop:Z
    .end local v5           #supportDelete:Z
    .end local v6           #supportDrmInfo:Z
    .end local v7           #supportEdit:Z
    .end local v8           #supportImport:Z
    .end local v9           #supportInfo:Z
    .end local v10           #supportPQTuning:Z
    .end local v11           #supportPrint:Z
    .end local v12           #supportRotate:Z
    .end local v13           #supportSetAs:Z
    .end local v14           #supportShare:Z
    .end local v15           #supportShowOnMap:Z
    .end local v16           #supportStereoMode:Z
    .end local v17           #supportTrim:Z
    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 210
    .restart local v5       #supportDelete:Z
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 211
    .restart local v12       #supportRotate:Z
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 212
    .restart local v4       #supportCrop:Z
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 213
    .restart local v17       #supportTrim:Z
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 214
    .restart local v14       #supportShare:Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 215
    .restart local v13       #supportSetAs:Z
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 216
    .restart local v15       #supportShowOnMap:Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 217
    .restart local v3       #supportCache:Z
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 218
    .restart local v7       #supportEdit:Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 219
    .restart local v9       #supportInfo:Z
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 222
    .restart local v8       #supportImport:Z
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 225
    .restart local v11       #supportPrint:Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 227
    .restart local v6       #supportDrmInfo:Z
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 229
    .restart local v16       #supportStereoMode:Z
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_e
.end method

.method private static updateStereoMenu(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "supported"

    .prologue
    .line 722
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const v1, 0x7f0b0197

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 724
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 727
    const/high16 v1, 0x2

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 728
    const v1, 0x7f0c0230

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 729
    const v1, 0x7f020128

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 730
    :cond_2
    const/high16 v1, 0x4

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 731
    const v1, 0x7f0c0231

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 732
    const v1, 0x7f020129

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static updateSupportedMenuEnabled(Landroid/view/Menu;IZ)V
    .locals 13
    .parameter "menu"
    .parameter "supported"
    .parameter "enabled"

    .prologue
    .line 785
    and-int/lit8 v12, p1, 0x1

    if-eqz v12, :cond_b

    const/4 v2, 0x1

    .line 786
    .local v2, supportDelete:Z
    :goto_0
    and-int/lit8 v12, p1, 0x2

    if-eqz v12, :cond_c

    const/4 v8, 0x1

    .line 787
    .local v8, supportRotate:Z
    :goto_1
    and-int/lit8 v12, p1, 0x8

    if-eqz v12, :cond_d

    const/4 v1, 0x1

    .line 788
    .local v1, supportCrop:Z
    :goto_2
    and-int/lit8 v12, p1, 0x4

    if-eqz v12, :cond_e

    const/4 v10, 0x1

    .line 789
    .local v10, supportShare:Z
    :goto_3
    and-int/lit8 v12, p1, 0x20

    if-eqz v12, :cond_f

    const/4 v9, 0x1

    .line 790
    .local v9, supportSetAs:Z
    :goto_4
    and-int/lit8 v12, p1, 0x10

    if-eqz v12, :cond_10

    const/4 v11, 0x1

    .line 791
    .local v11, supportShowOnMap:Z
    :goto_5
    and-int/lit16 v12, p1, 0x100

    if-eqz v12, :cond_11

    const/4 v0, 0x1

    .line 792
    .local v0, supportCache:Z
    :goto_6
    and-int/lit16 v12, p1, 0x200

    if-eqz v12, :cond_12

    const/4 v4, 0x1

    .line 793
    .local v4, supportEdit:Z
    :goto_7
    and-int/lit16 v12, p1, 0x400

    if-eqz v12, :cond_13

    const/4 v6, 0x1

    .line 794
    .local v6, supportInfo:Z
    :goto_8
    and-int/lit16 v12, p1, 0x800

    if-eqz v12, :cond_14

    const/4 v5, 0x1

    .line 796
    .local v5, supportImport:Z
    :goto_9
    and-int/lit16 v12, p1, 0x4000

    if-eqz v12, :cond_15

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isBluetoothPrintSupported()Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v7, 0x1

    .line 799
    .local v7, supportPrint:Z
    :goto_a
    const v12, 0x8000

    and-int/2addr v12, p1

    if-eqz v12, :cond_16

    const/4 v3, 0x1

    .line 801
    .local v3, supportDrmInfo:Z
    :goto_b
    if-eqz v2, :cond_0

    .line 802
    const v12, 0x7f0b018b

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 804
    :cond_0
    if-eqz v8, :cond_1

    .line 805
    const v12, 0x7f0b018e

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 806
    const v12, 0x7f0b018f

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 808
    :cond_1
    if-eqz v1, :cond_2

    .line 809
    const v12, 0x7f0b0190

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 811
    :cond_2
    if-eqz v10, :cond_3

    .line 812
    const v12, 0x7f0b0186

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 814
    :cond_3
    if-eqz v9, :cond_4

    .line 815
    const v12, 0x7f0b0191

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 817
    :cond_4
    if-eqz v11, :cond_5

    .line 818
    const v12, 0x7f0b0194

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 820
    :cond_5
    if-eqz v4, :cond_6

    .line 821
    const v12, 0x7f0b018c

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 823
    :cond_6
    if-eqz v6, :cond_7

    .line 824
    const v12, 0x7f0b0192

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 826
    :cond_7
    if-eqz v5, :cond_8

    .line 827
    const v12, 0x7f0b0189

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 830
    :cond_8
    if-eqz v7, :cond_9

    .line 831
    const v12, 0x7f0b018d

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 834
    :cond_9
    if-eqz v3, :cond_a

    .line 835
    const v12, 0x7f0b0193

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 837
    :cond_a
    return-void

    .line 785
    .end local v0           #supportCache:Z
    .end local v1           #supportCrop:Z
    .end local v2           #supportDelete:Z
    .end local v3           #supportDrmInfo:Z
    .end local v4           #supportEdit:Z
    .end local v5           #supportImport:Z
    .end local v6           #supportInfo:Z
    .end local v7           #supportPrint:Z
    .end local v8           #supportRotate:Z
    .end local v9           #supportSetAs:Z
    .end local v10           #supportShare:Z
    .end local v11           #supportShowOnMap:Z
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 786
    .restart local v2       #supportDelete:Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 787
    .restart local v8       #supportRotate:Z
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 788
    .restart local v1       #supportCrop:Z
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 789
    .restart local v10       #supportShare:Z
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 790
    .restart local v9       #supportSetAs:Z
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 791
    .restart local v11       #supportShowOnMap:Z
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 792
    .restart local v0       #supportCache:Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 793
    .restart local v4       #supportEdit:Z
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 794
    .restart local v6       #supportInfo:Z
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 796
    .restart local v5       #supportImport:Z
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 799
    .restart local v7       #supportPrint:Z
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_b
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 192
    :cond_0
    return-void
.end method

.method public onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 24
    .parameter "action"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 290
    sparse-switch p1, :sswitch_data_0

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 292
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_0

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_0

    .line 299
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v17

    .line 300
    .local v17, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v20

    .line 301
    .local v20, path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v19

    .line 302
    .local v19, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0c02d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 304
    .local v13, crop:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0c0232

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 306
    .local v10, convertCrop:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->clickStereoPhoto(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v10           #convertCrop:Ljava/lang/String;
    .end local v13           #crop:Ljava/lang/String;
    :cond_2
    const-string v3, "com.android.camera.action.EDITOR_CROP"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v6, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v16

    .line 311
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v19           #obj:Lcom/android/gallery3d/data/MediaObject;
    .end local v20           #path:Lcom/android/gallery3d/data/Path;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v17

    .line 318
    .restart local v17       #manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v20

    .line 319
    .restart local v20       #path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v19

    .line 320
    .restart local v19       #obj:Lcom/android/gallery3d/data/MediaObject;
    const-string v3, "Gallery2/MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemSelected:obj="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v3, "Gallery2/MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemSelected:MediatekFeature.isStereoImage(obj)="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static/range {v19 .. v19}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0c02ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 324
    .local v14, edit:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0c0232

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 326
    .local v11, convertEdit:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/gallery3d/ui/MenuExecutor;->clickStereoPhoto(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    .end local v11           #convertEdit:Ljava/lang/String;
    .end local v14           #edit:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.EDIT"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v16

    .line 331
    .restart local v16       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 335
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v19           #obj:Lcom/android/gallery3d/data/MediaObject;
    .end local v20           #path:Lcom/android/gallery3d/data/Path;
    :sswitch_3
    const-string v3, "android.intent.action.ATTACH_DATA"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v16

    .line 337
    .restart local v16       #intent:Landroid/content/Intent;
    const-string v3, "mimeType"

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 339
    .local v9, activity:Landroid/app/Activity;
    const v3, 0x7f0c02d3

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    .end local v9           #activity:Landroid/app/Activity;
    .end local v16           #intent:Landroid/content/Intent;
    :sswitch_4
    const v5, 0x7f0c02bb

    .local v5, title:I
    :cond_4
    :goto_1
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 413
    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto/16 :goto_0

    .line 347
    .end local v5           #title:I
    :sswitch_5
    const v5, 0x7f0c02cc

    .line 348
    .restart local v5       #title:I
    goto :goto_1

    .line 350
    .end local v5           #title:I
    :sswitch_6
    const v5, 0x7f0c02cb

    .line 351
    .restart local v5       #title:I
    goto :goto_1

    .line 353
    .end local v5           #title:I
    :sswitch_7
    const v5, 0x7f0c02ca

    .line 354
    .restart local v5       #title:I
    goto :goto_1

    .line 356
    .end local v5           #title:I
    :sswitch_8
    const v5, 0x7f0c0316

    .line 357
    .restart local v5       #title:I
    goto :goto_1

    .line 360
    .end local v5           #title:I
    :sswitch_9
    const v5, 0x7f0c0250

    .line 361
    .restart local v5       #title:I
    goto :goto_1

    .line 366
    .end local v5           #title:I
    :sswitch_a
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v17

    .line 368
    .restart local v17       #manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v20

    .line 369
    .restart local v20       #path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v23

    .line 370
    .local v23, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showProtectInfo(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 375
    .end local v17           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v20           #path:Lcom/android/gallery3d/data/Path;
    .end local v23           #uri:Landroid/net/Uri;
    :sswitch_b
    const v5, 0x7f0c01d1

    .line 376
    .restart local v5       #title:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v17

    .line 377
    .restart local v17       #manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v20

    .line 378
    .restart local v20       #path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v19

    .line 379
    .restart local v19       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0c01d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 381
    .local v21, print:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0c0232

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 383
    .local v12, convertPrint:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->clickStereoPhoto(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    .end local v12           #convertPrint:Ljava/lang/String;
    .end local v21           #print:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 389
    .restart local v9       #activity:Landroid/app/Activity;
    const-string v3, "Gallery2/MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Print for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v22

    .line 391
    .local v22, type:I
    const/4 v3, 0x2

    move/from16 v0, v22

    if-ne v0, v3, :cond_4

    .line 394
    const-string v18, "image/*"

    .line 396
    .local v18, mimeType:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 397
    .restart local v16       #intent:Landroid/content/Intent;
    const-string v3, "mediatek.intent.action.PRINT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v3, "android.intent.category.ALTERNATIVE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 402
    const v3, 0x7f0c01d3

    :try_start_0
    invoke-virtual {v9, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 404
    :catch_0
    move-exception v15

    .line 405
    .local v15, ex:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0c01d2

    const/4 v4, 0x0

    invoke-static {v9, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 290
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0004 -> :sswitch_0
        0x7f0b0166 -> :sswitch_9
        0x7f0b0189 -> :sswitch_8
        0x7f0b018b -> :sswitch_4
        0x7f0b018c -> :sswitch_2
        0x7f0b018d -> :sswitch_b
        0x7f0b018e -> :sswitch_6
        0x7f0b018f -> :sswitch_5
        0x7f0b0190 -> :sswitch_1
        0x7f0b0191 -> :sswitch_3
        0x7f0b0193 -> :sswitch_a
        0x7f0b0194 -> :sswitch_7
    .end sparse-switch
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "menuItem"
    .parameter "confirmMsg"
    .parameter "listener"

    .prologue
    .line 449
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 451
    .local v0, action:I
    if-eqz p2, :cond_1

    .line 452
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 453
    :cond_0
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 454
    .local v1, cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c02ab

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c02bd

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 463
    .end local v1           #cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public onMenuClicked2(ILjava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 3
    .parameter "action"
    .parameter "confirmMsg"
    .parameter "listener"

    .prologue
    .line 468
    if-eqz p2, :cond_1

    .line 469
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 470
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 471
    .local v0, cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02ab

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02bd

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 480
    .end local v0           #cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 183
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 6
    .parameter "action"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 483
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 484
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 6
    .parameter "action"
    .parameter "title"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 490
    const v5, 0x7f0b0166

    if-ne p1, v5, :cond_1

    .line 491
    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/SelectionManager;->getPrepared()Ljava/util/ArrayList;

    move-result-object v1

    .line 496
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 498
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->isMultiOperation:Z

    .line 499
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 500
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v0, p2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 503
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v3, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->appendMessageForSingleId(Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V

    .line 505
    if-eqz p5, :cond_0

    .line 506
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 508
    :cond_0
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 509
    .local v2, operation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 510
    iput-boolean p4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 511
    return-void

    .line 493
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v2           #operation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    goto :goto_0

    :cond_2
    move v3, v4

    .line 498
    goto :goto_1
.end method
