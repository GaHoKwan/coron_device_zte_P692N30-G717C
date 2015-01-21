.class public Lcom/android/soundrecorder/RecordingFileList;
.super Landroid/app/Activity;
.source "RecordingFileList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;,
        Lcom/android/soundrecorder/RecordingFileList$FileTask;
    }
.end annotation


# static fields
.field private static final CREAT_DATE:Ljava/lang/String; = "creatdate"

.field private static final CREAT_DATE_INDEX:I = 0x6

.field private static final DEFAULT_SLECTION:I = -0x1

.field private static final DIALOG_TAG_DELETE:Ljava/lang/String; = "Delete"

.field private static final DIALOG_TAG_PROGRESS:Ljava/lang/String; = "Progress"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final DURATION_INDEX:I = 0x3

.field public static final EDIT:I = 0x2

.field private static final FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FORMAT_DURATION:Ljava/lang/String; = "formatduration"

.field public static final NORMAL:I = 0x1

.field private static final NO_CHECK_POSITION:I = -0x1

.field private static final ONE_SECOND:I = 0x3e8

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATH_INDEX:I = 0x2

.field private static final RECORDING_FILELIST_DATA:Ljava/lang/String; = "recording_filelist_data"

.field private static final RECORD_ID:Ljava/lang/String; = "recordid"

.field private static final RECORD_ID_INDEX:I = 0x7

.field private static final REMOVE_PROGRESS_DIALOG_KEY:Ljava/lang/String; = "remove_progress_dialog"

.field private static final TAG:Ljava/lang/String; = "SR/RecordingFileList"

.field private static final TIME_BASE:I = 0x3c


# instance fields
.field private mActivityForeground:Z

.field private final mArrlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAdapterMode:I

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private final mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mDurationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private final mIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedRemoveProgressDialog:Z

.field private final mPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordButton:Landroid/widget/ImageButton;

.field private mRecordingFileListView:Landroid/widget/ListView;

.field private mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

.field private mSelection:I

.field private final mTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    .line 53
    iput v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mSelection:I

    .line 54
    iput v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mTop:I

    .line 55
    iput-boolean v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mNeedRemoveProgressDialog:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mArrlist:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mNameList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mPathList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mTitleList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mDurationList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mIdList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-boolean v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mActivityForeground:Z

    .line 73
    new-instance v0, Lcom/android/soundrecorder/RecordingFileList$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/RecordingFileList$1;-><init>(Lcom/android/soundrecorder/RecordingFileList;)V

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 670
    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/RecordingFileList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/soundrecorder/RecordingFileList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/soundrecorder/RecordingFileList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mActivityForeground:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/soundrecorder/RecordingFileList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/RecordingFileList;->removeOldFragmentByTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/soundrecorder/RecordingFileList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/soundrecorder/RecordingFileList;->mNeedRemoveProgressDialog:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/soundrecorder/RecordingFileList;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/RecordingFileList;->setListData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/soundrecorder/RecordingFileList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mDeleteButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/soundrecorder/RecordingFileList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/soundrecorder/RecordingFileList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;

    return-object p1
.end method

.method private formatDuration(I)Ljava/lang/String;
    .locals 5
    .parameter "duration"

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, timerFormat:Ljava/lang/String;
    div-int/lit16 v0, p1, 0x3e8

    .line 396
    .local v0, time:I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    rem-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private registerExternalStorageListener()V
    .locals 3

    .prologue
    .line 739
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<registerExternalStorageListener>"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 741
    new-instance v1, Lcom/android/soundrecorder/RecordingFileList$4;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/RecordingFileList$4;-><init>(Lcom/android/soundrecorder/RecordingFileList;)V

    iput-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 757
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 758
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 759
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 764
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private removeOldFragmentByTag(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 446
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<removeOldFragmentByTag> tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 448
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<removeOldFragmentByTag> fragmentManager = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 450
    .local v1, oldFragment:Landroid/app/DialogFragment;
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<removeOldFragmentByTag> oldFragment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 454
    :cond_0
    return-void
.end method

.method private setDeleteDialogSingle(Z)V
    .locals 5
    .parameter "single"

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 464
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<setDeleteDialogSingle> fragmentManager = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v2, "Delete"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/soundrecorder/DeleteDialogFragment;

    .line 467
    .local v1, oldFragment:Lcom/android/soundrecorder/DeleteDialogFragment;
    if-nez v1, :cond_0

    .line 468
    const-string v2, "SR/RecordingFileList"

    const-string v3, "<setDeleteDialogSingle> no old delete dialog"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/soundrecorder/DeleteDialogFragment;->setSingle(Z)V

    .line 471
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<setDeleteDialogSingle> setSingle single = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setListData(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<setListData>"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    new-instance v0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;

    invoke-direct {v0, p0, p1}, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;-><init>(Lcom/android/soundrecorder/RecordingFileList;Ljava/util/List;)V

    .line 270
    .local v0, queryTask:Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    return-void
.end method

.method private showDeleteDialog(Z)V
    .locals 5
    .parameter "single"

    .prologue
    .line 429
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<showDeleteDialog> single = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v2, "Delete"

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/RecordingFileList;->removeOldFragmentByTag(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 432
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<showDeleteDialog> fragmentManager = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/soundrecorder/DeleteDialogFragment;->newInstance(Ljava/lang/Boolean;)Lcom/android/soundrecorder/DeleteDialogFragment;

    move-result-object v1

    .local v1, newFragment:Landroid/app/DialogFragment;
    move-object v2, v1

    .line 434
    check-cast v2, Lcom/android/soundrecorder/DeleteDialogFragment;

    iget-object v3, p0, Lcom/android/soundrecorder/RecordingFileList;->mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/DeleteDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 435
    const-string v2, "Delete"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 437
    return-void
.end method


# virtual methods
.method public afterQuery(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 361
    const-string v2, "SR/RecordingFileList"

    const-string v3, "<afterQuery>"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-nez p1, :cond_0

    .line 363
    iput v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    .line 364
    invoke-virtual {p0, v4}, Lcom/android/soundrecorder/RecordingFileList;->swicthAdapterView(I)V

    .line 384
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList;->mIdList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 367
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    const-string v2, "Delete"

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/RecordingFileList;->removeOldFragmentByTag(Ljava/lang/String;)V

    .line 369
    iput v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    .line 370
    invoke-virtual {p0, v4}, Lcom/android/soundrecorder/RecordingFileList;->swicthAdapterView(I)V

    goto :goto_0

    .line 373
    :cond_1
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<afterQuery> list.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/RecordingFileList;->setDeleteDialogSingle(Z)V

    .line 375
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    .line 376
    new-instance v0, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList;->mNameList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/soundrecorder/RecordingFileList;->mPathList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/soundrecorder/RecordingFileList;->mTitleList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList;->mDurationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/soundrecorder/RecordingFileList;->mIdList:Ljava/util/List;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/soundrecorder/EditViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 378
    .local v0, adapter:Lcom/android/soundrecorder/EditViewAdapter;
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordingFileList;->restoreLastSelection()V

    goto :goto_0

    .end local v0           #adapter:Lcom/android/soundrecorder/EditViewAdapter;
    :cond_2
    move v1, v8

    .line 374
    goto :goto_1
.end method

.method public deleteItems()V
    .locals 3

    .prologue
    .line 479
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<deleteItems> call FileTask to delete"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Lcom/android/soundrecorder/RecordingFileList$FileTask;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/RecordingFileList$FileTask;-><init>(Lcom/android/soundrecorder/RecordingFileList;)V

    .line 481
    .local v0, fileTask:Lcom/android/soundrecorder/RecordingFileList$FileTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 482
    return-void
.end method

.method public finishSelf()V
    .locals 3

    .prologue
    .line 715
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<finishSelf>"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    .line 717
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 718
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 719
    const-string v1, "dowhat"

    const-string v2, "init"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 721
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 722
    return-void
.end method

.method protected getSelectedFiles()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    const-string v5, "SR/RecordingFileList"

    const-string v6, "<getSelectedFiles> begin"

    invoke-static {v5, v6}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    if-eq v5, v6, :cond_0

    .line 520
    const-string v5, "SR/RecordingFileList"

    const-string v6, "<getSelectedFiles> end"

    invoke-static {v5, v6}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    return-object v3

    .line 523
    :cond_0
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/soundrecorder/EditViewAdapter;

    if-eqz v5, :cond_1

    .line 524
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {v5}, Lcom/android/soundrecorder/EditViewAdapter;->getCheckedItemsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 526
    .local v0, checkedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 527
    .local v4, listSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 528
    new-instance v1, Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    .local v1, file:Ljava/io/File;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 532
    .end local v0           #checkedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    .end local v4           #listSize:I
    :cond_1
    const-string v5, "SR/RecordingFileList"

    const-string v6, "<getSelectedFiles> end"

    invoke-static {v5, v6}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 560
    const-string v0, "SR/RecordingFileList"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    if-ne v0, v1, :cond_0

    .line 562
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    .line 563
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordingFileList;->saveLastSelection()V

    .line 564
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordingFileList;->swicthAdapterView(I)V

    .line 569
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordingFileList;->finishSelf()V

    .line 567
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 403
    :sswitch_0
    const-string v2, "SR/RecordingFileList"

    const-string v3, "<onClick> recordButton"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 405
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 407
    const-string v2, "dowhat"

    const-string v3, "record"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 412
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    const-string v2, "SR/RecordingFileList"

    const-string v5, "<onClick> deleteButton"

    invoke-static {v2, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {v2}, Lcom/android/soundrecorder/EditViewAdapter;->getCheckedItemsCount()I

    move-result v0

    .line 415
    .local v0, count:I
    if-ne v0, v3, :cond_0

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/soundrecorder/RecordingFileList;->showDeleteDialog(Z)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0017 -> :sswitch_0
        0x7f0c002b -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icycle"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<onCreate> begin"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 87
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    .line 88
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordButton:Landroid/widget/ImageButton;

    .line 89
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mDeleteButton:Landroid/widget/ImageButton;

    .line 90
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mEmptyView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/soundrecorder/RecordingFileList$2;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/RecordingFileList$2;-><init>(Lcom/android/soundrecorder/RecordingFileList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/soundrecorder/RecordingFileList$3;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/RecordingFileList$3;-><init>(Lcom/android/soundrecorder/RecordingFileList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 162
    invoke-direct {p0}, Lcom/android/soundrecorder/RecordingFileList;->registerExternalStorageListener()V

    .line 163
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<onCreate> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 726
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<onDestroy> begin"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 731
    :cond_0
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<onDestroy> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 733
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 538
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<onPause> begin"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, checkedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    if-ne v1, v2, :cond_1

    .line 541
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/soundrecorder/EditViewAdapter;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {v1}, Lcom/android/soundrecorder/EditViewAdapter;->getCheckedPosList()Ljava/util/List;

    move-result-object v0

    .line 544
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    iput-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;

    .line 546
    const-string v1, "SR/RecordingFileList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<onPause> save checkedList; mCheckedList.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mActivityForeground:Z

    .line 553
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordingFileList;->saveLastSelection()V

    .line 554
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<onPause> end"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 556
    return-void

    .line 550
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string v2, "SR/RecordingFileList"

    const-string v3, "<onRestoreInstanceState> begin"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "Delete"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 196
    .local v0, fragment:Landroid/app/Fragment;
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onRestoreInstanceState> getFragmentManager() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz v0, :cond_0

    .line 199
    check-cast v0, Lcom/android/soundrecorder/DeleteDialogFragment;

    .end local v0           #fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList;->mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/DeleteDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 200
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onRestoreInstanceState> getFragmentManager() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    const-string v2, "recording_filelist_data"

    invoke-virtual {p0, v2, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 204
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "remove_progress_dialog"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const-string v2, "Progress"

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/RecordingFileList;->removeOldFragmentByTag(Ljava/lang/String;)V

    .line 207
    :cond_1
    iput-boolean v5, p0, Lcom/android/soundrecorder/RecordingFileList;->mNeedRemoveProgressDialog:Z

    .line 208
    const-string v2, "SR/RecordingFileList"

    const-string v3, "<onRestoreInstanceState> end"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 214
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<onResume> begin"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecordingFileList;->setListData(Ljava/util/List;)V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mActivityForeground:Z

    .line 217
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<onResume> end"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 168
    const-string v4, "SR/RecordingFileList"

    const-string v5, "<onRetainNonConfigurationInstance> begin"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, checkedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordingFileList;->saveLastSelection()V

    .line 171
    const/4 v4, 0x2

    iget v5, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    if-ne v4, v5, :cond_0

    .line 172
    iget-object v4, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/soundrecorder/EditViewAdapter;

    if-eqz v4, :cond_0

    .line 173
    iget-object v4, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {v4}, Lcom/android/soundrecorder/EditViewAdapter;->getCheckedPosList()Ljava/util/List;

    move-result-object v0

    .line 175
    const-string v4, "SR/RecordingFileList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<onRetainNonConfigurationInstance> checkedList.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    new-instance v2, Lcom/android/soundrecorder/ListViewProperty;

    iget v4, p0, Lcom/android/soundrecorder/RecordingFileList;->mSelection:I

    iget v5, p0, Lcom/android/soundrecorder/RecordingFileList;->mTop:I

    invoke-direct {v2, v0, v4, v5}, Lcom/android/soundrecorder/ListViewProperty;-><init>(Ljava/util/List;II)V

    .line 181
    .local v2, listViewProperty:Lcom/android/soundrecorder/ListViewProperty;
    const-string v4, "recording_filelist_data"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 182
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 183
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "SR/RecordingFileList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<onRetainNonConfigurationInstance> mNeedRemoveProgressDialog = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/soundrecorder/RecordingFileList;->mNeedRemoveProgressDialog:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v4, "remove_progress_dialog"

    iget-boolean v5, p0, Lcom/android/soundrecorder/RecordingFileList;->mNeedRemoveProgressDialog:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    const-string v4, "SR/RecordingFileList"

    const-string v5, "<onRetainNonConfigurationInstance> end"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v2
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 248
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<onStart> begin"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/ListViewProperty;

    .line 250
    .local v0, listViewProperty:Lcom/android/soundrecorder/ListViewProperty;
    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/android/soundrecorder/ListViewProperty;->getCheckedList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/android/soundrecorder/ListViewProperty;->getCheckedList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;

    .line 254
    :cond_0
    invoke-virtual {v0}, Lcom/android/soundrecorder/ListViewProperty;->getCurPos()I

    move-result v1

    iput v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mSelection:I

    .line 255
    invoke-virtual {v0}, Lcom/android/soundrecorder/ListViewProperty;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mTop:I

    .line 257
    :cond_1
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<onStart> end"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public queryData()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 279
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<queryData>"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mArrlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mDurationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 287
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v18, stringBuilder:Ljava/lang/StringBuilder;
    const-string v1, "is_music"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, " =0 and "

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "_data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, " LIKE \'%"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, "Recording"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, "%\'"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "artist"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "album"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "_data"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "duration"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "_display_name"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "date_added"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "title"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 305
    .local v16, recordingFileCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_0

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 306
    :cond_0
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<queryData> the data return by query is null"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    const/4 v1, 0x0

    .line 347
    if-eqz v16, :cond_1

    .line 348
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_1
    :goto_0
    return-object v1

    .line 309
    :cond_2
    :try_start_1
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<queryData> the data return by query is available"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 311
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 312
    .local v13, num:I
    const/16 v17, 0x6

    .line 313
    .local v17, sizeOfHashMap:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    if-ge v11, v13, :cond_7

    .line 314
    new-instance v12, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v12, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 315
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 316
    .local v14, path:Ljava/lang/String;
    const/4 v10, 0x0

    .line 317
    .local v10, fileName:Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 318
    const-string v1, "/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 320
    :cond_3
    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 321
    .local v8, duration:I
    const/16 v1, 0x3e8

    if-ge v8, v1, :cond_4

    .line 322
    const/16 v8, 0x3e8

    .line 324
    :cond_4
    const/4 v1, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, createDate:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 327
    .local v15, recordId:I
    const-string v1, "filename"

    invoke-virtual {v12, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "path"

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "duration"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "creatdate"

    invoke-virtual {v12, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "formatduration"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/soundrecorder/RecordingFileList;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "recordid"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mDurationList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/soundrecorder/RecordingFileList;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mIdList:Ljava/util/List;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mArrlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 343
    .end local v7           #createDate:Ljava/lang/String;
    .end local v8           #duration:I
    .end local v10           #fileName:Ljava/lang/String;
    .end local v11           #j:I
    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13           #num:I
    .end local v14           #path:Ljava/lang/String;
    .end local v15           #recordId:I
    .end local v17           #sizeOfHashMap:I
    :catch_0
    move-exception v9

    .line 344
    .local v9, e:Ljava/lang/IllegalStateException;
    const/16 v1, 0xd

    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/soundrecorder/ErrorHandle;->showErrorInfo(Landroid/app/Activity;I)V

    .line 345
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    if-eqz v16, :cond_5

    .line 348
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/soundrecorder/RecordingFileList;->mArrlist:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 347
    :catchall_0
    move-exception v1

    if-eqz v16, :cond_6

    .line 348
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_6
    throw v1

    .restart local v11       #j:I
    .restart local v13       #num:I
    .restart local v17       #sizeOfHashMap:I
    :cond_7
    if-eqz v16, :cond_5

    goto :goto_2
.end method

.method protected restoreLastSelection()V
    .locals 3

    .prologue
    .line 238
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<restoreLastSelection>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mSelection:I

    if-ltz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mSelection:I

    iget v2, p0, Lcom/android/soundrecorder/RecordingFileList;->mTop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/soundrecorder/RecordingFileList;->mSelection:I

    .line 243
    :cond_0
    return-void
.end method

.method protected saveLastSelection()V
    .locals 3

    .prologue
    .line 224
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<saveLastSelection>"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mSelection:I

    .line 227
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mTop:I

    .line 232
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public swicthAdapterView(I)V
    .locals 10
    .parameter "pos"

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 491
    iget v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I

    if-ne v6, v1, :cond_0

    .line 492
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<swicthAdapterView> from edit mode to normal mode"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList;->mArrlist:Ljava/util/ArrayList;

    const v3, 0x7f030002

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "filename"

    aput-object v5, v4, v8

    const-string v5, "creatdate"

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v6, "formatduration"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 497
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 498
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordingFileList;->restoreLastSelection()V

    .line 509
    return-void

    .line 501
    :cond_0
    const-string v1, "SR/RecordingFileList"

    const-string v2, "<swicthAdapterView> from normal mode to edit mode"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v0, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList;->mNameList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/soundrecorder/RecordingFileList;->mPathList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/soundrecorder/RecordingFileList;->mTitleList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList;->mDurationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/soundrecorder/RecordingFileList;->mIdList:Ljava/util/List;

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/soundrecorder/EditViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 504
    .local v0, adapter:Lcom/android/soundrecorder/EditViewAdapter;
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 493
    :array_0
    .array-data 0x4
        0x1t 0x0t 0xct 0x7ft
        0x2t 0x0t 0xct 0x7ft
        0x3t 0x0t 0xct 0x7ft
    .end array-data
.end method
