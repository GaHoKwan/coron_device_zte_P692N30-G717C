.class public Lcom/android/launcher2/HideAppsActivity;
.super Landroid/app/ListActivity;
.source "HideAppsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HideAppsActivity$ViewHolder;,
        Lcom/android/launcher2/HideAppsActivity$AppsAdapter;,
        Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;,
        Lcom/android/launcher2/HideAppsActivity$AppEntry;,
        Lcom/android/launcher2/HideAppsActivity$SizeInfo;
    }
.end annotation


# static fields
.field static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "package_list_changed"

.field static final CHANGED_PAGES:Ljava/lang/String; = "changedPages"

.field private static final SIZE_INVALID:I = -0x2

.field private static final SIZE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HideAppsActivity"


# instance fields
.field private mAdapter:Lcom/android/launcher2/HideAppsActivity$AppsAdapter;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/HideAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

.field private mOriginalState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mOriginalState:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;

    .line 96
    new-instance v0, Lcom/android/launcher2/HideAppsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HideAppsActivity$1;-><init>(Lcom/android/launcher2/HideAppsActivity;)V

    iput-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 457
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HideAppsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/launcher2/HideAppsActivity;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/HideAppsActivity;)Lcom/android/launcher2/HideAppsActivity$AppsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mAdapter:Lcom/android/launcher2/HideAppsActivity$AppsAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/HideAppsActivity;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/launcher2/HideAppsActivity;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HideAppsActivity;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/launcher2/HideAppsActivity;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/HideAppsActivity;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HideAppsActivity;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/HideAppsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/launcher2/HideAppsActivity;->notifyDataChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/HideAppsActivity;)Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mHandler:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method private backToHome()V
    .locals 3

    .prologue
    .line 359
    const-string v0, "HideAppsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backToHome: AppsCustomizePagedView.sShowAndHideApps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->sShowAndHideApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sShowAndHideApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/launcher2/HideAppsActivity;->getStateChangedPages()Ljava/util/ArrayList;

    .line 366
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sShowAndHideApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 367
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 371
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 372
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 239
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 240
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStateChangedPages()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v4, pages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 382
    .local v1, index:I
    iget-object v6, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 383
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v1

    .end local v1           #index:I
    .local v2, index:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 384
    iget-object v6, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 385
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, p0, Lcom/android/launcher2/HideAppsActivity;->mOriginalState:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-boolean v7, v3, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    if-eq v6, v7, :cond_0

    .line 386
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sShowAndHideApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 389
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    return-object v4
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 257
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 249
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    .line 298
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 299
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 302
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 303
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 306
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 307
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 310
    :cond_2
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 312
    .local v0, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 313
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ApplicationInfo;

    .line 314
    .local v4, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v4           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_3
    const/4 v3, 0x0

    .line 319
    .local v3, index:I
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 320
    .local v1, appSize:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 321
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ApplicationInfo;

    .line 323
    .restart local v4       #info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/HideAppsActivity$AppEntry;

    invoke-direct {v7, v4}, Lcom/android/launcher2/HideAppsActivity$AppEntry;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    if-eqz v4, :cond_4

    .line 326
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/launcher2/ApplicationInfo;->stateChanged:Z

    .line 327
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mOriginalState:Ljava/util/ArrayList;

    iget-boolean v6, v4, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 331
    .end local v4           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_5
    const-string v5, "HideAppsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init end: appSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mApps = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v5, p0, Lcom/android/launcher2/HideAppsActivity;->mHandler:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    return-void
.end method

.method private notifyDataChanged()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mAdapter:Lcom/android/launcher2/HideAppsActivity$AppsAdapter;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HideAppsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HideAppsActivity$2;-><init>(Lcom/android/launcher2/HideAppsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/launcher2/HideAppsActivity;->backToHome()V

    .line 403
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    const v1, 0x7f040011

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 264
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HideAppsActivity.worker"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/launcher2/HideAppsActivity;->mThread:Landroid/os/HandlerThread;

    .line 265
    iget-object v1, p0, Lcom/android/launcher2/HideAppsActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 266
    new-instance v1, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v2, p0, Lcom/android/launcher2/HideAppsActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;-><init>(Lcom/android/launcher2/HideAppsActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/launcher2/HideAppsActivity;->mHandler:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    .line 269
    invoke-direct {p0}, Lcom/android/launcher2/HideAppsActivity;->init()V

    .line 271
    new-instance v1, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;-><init>(Lcom/android/launcher2/HideAppsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/HideAppsActivity;->mAdapter:Lcom/android/launcher2/HideAppsActivity$AppsAdapter;

    .line 272
    iget-object v1, p0, Lcom/android/launcher2/HideAppsActivity;->mAdapter:Lcom/android/launcher2/HideAppsActivity$AppsAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 274
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 277
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "package_list_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/android/launcher2/HideAppsActivity;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "HideAppsActivity"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/launcher2/HideAppsActivity;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 295
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
    .line 394
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;

    .line 395
    .local v0, holder:Lcom/android/launcher2/HideAppsActivity$ViewHolder;
    iget-object v1, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->hide:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->toggle()V

    .line 397
    iget-object v1, p0, Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    iget-object v2, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->hide:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    .line 398
    return-void

    .line 397
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 347
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 354
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 349
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/HideAppsActivity;->backToHome()V

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/launcher2/HideAppsActivity;->backToHome()V

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 285
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 342
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 343
    return-void
.end method
