.class public Lcom/zte/heartyservice/examination/StorageListActivity;
.super Landroid/app/Activity;
.source "StorageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/examination/StorageListActivity$AppInfoComparator;,
        Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;,
        Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;
    }
.end annotation


# instance fields
.field private appInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;

.field private mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSpeedUpServiceConnection:Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/examination/StorageListActivity;Lcom/zte/heartyservice/examination/StorageListActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;

    .line 49
    new-instance v0, Lcom/zte/heartyservice/examination/StorageListActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/examination/StorageListActivity$1;-><init>(Lcom/zte/heartyservice/examination/StorageListActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 264
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/examination/StorageListActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->appInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/examination/StorageListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->appInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/examination/StorageListActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/StorageListActivity;->updateListView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/examination/StorageListActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/examination/StorageListActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/examination/StorageListActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/examination/StorageListActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/StorageListActivity;->startApplicationDetails(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/examination/StorageListActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private startApplicationDetails(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 185
    iget-object v2, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mAdapter:Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;

    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .line 186
    .local v1, item:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/zte/heartyservice/examination/StorageListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    return-void
.end method

.method private updateListView(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, appInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    const/16 v0, 0xa

    .line 165
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    new-instance v1, Lcom/zte/heartyservice/examination/StorageListActivity$AppInfoComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/examination/StorageListActivity$AppInfoComparator;-><init>(Lcom/zte/heartyservice/examination/StorageListActivity;Lcom/zte/heartyservice/examination/StorageListActivity$1;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 174
    new-instance v0, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;-><init>(Lcom/zte/heartyservice/examination/StorageListActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mAdapter:Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;

    .line 175
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mAdapter:Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/zte/heartyservice/examination/StorageListActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/examination/StorageListActivity$2;-><init>(Lcom/zte/heartyservice/examination/StorageListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    invoke-interface {v0}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v1, 0x7f030118

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/examination/StorageListActivity;->setContentView(I)V

    .line 121
    const v1, 0x7f0e005c

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/examination/StorageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mListView:Landroid/widget/ListView;

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/StorageListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020159

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/StorageListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/heartyservice/examination/StorageListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 131
    return-void

    .line 125
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;

    if-eqz v1, :cond_1

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 149
    :try_start_1
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v2, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/examination/StorageListActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    iput-object v3, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;

    .line 161
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 162
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 157
    iput-object v3, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;

    throw v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->appInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/StorageListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appcacheinfo_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->appInfoList:Ljava/util/List;

    .line 139
    iget-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity;->appInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/examination/StorageListActivity;->updateListView(Ljava/util/List;)V

    .line 141
    :cond_0
    return-void
.end method
