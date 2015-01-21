.class public Lcom/mediatek/security/service/PermControlService;
.super Lcom/mediatek/security/service/AsyncService;
.source "PermControlService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/security/service/PermControlService$LocalBinder;,
        Lcom/mediatek/security/service/PermControlService$PermissionListener;
    }
.end annotation


# instance fields
.field private mAlertDlg:Landroid/app/AlertDialog;

.field private final mBinder:Landroid/os/IBinder;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurrentPermRecord:Lcom/mediatek/common/mom/PermissionRecord;

.field private mHandler:Landroid/os/Handler;

.field private mIsAttached:Z

.field private mIsGranted:Z

.field private mIsPermit:Z

.field private mMoMService:Lcom/mediatek/common/mom/IMobileManager;

.field private mPermRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeCountDown:Landroid/widget/TextView;

.field private mUserConfirmLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "PermControlService"

    invoke-direct {p0, v0}, Lcom/mediatek/security/service/AsyncService;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mPermRecordList:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/mediatek/security/service/PermControlService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/security/service/PermControlService$LocalBinder;-><init>(Lcom/mediatek/security/service/PermControlService;)V

    iput-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mBinder:Landroid/os/IBinder;

    .line 71
    new-instance v0, Lcom/mediatek/security/service/PermControlService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/security/service/PermControlService$1;-><init>(Lcom/mediatek/security/service/PermControlService;)V

    iput-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/security/service/PermControlService;)Lcom/mediatek/common/mom/PermissionRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mCurrentPermRecord:Lcom/mediatek/common/mom/PermissionRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/security/service/PermControlService;Lcom/mediatek/common/mom/PermissionRecord;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/mediatek/security/service/PermControlService;->showDialog(Lcom/mediatek/common/mom/PermissionRecord;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/security/service/PermControlService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/security/service/PermControlService;->updateCount(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/security/service/PermControlService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/security/service/PermControlService;->mIsPermit:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/security/service/PermControlService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/security/service/PermControlService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/security/service/PermControlService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/security/service/PermControlService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/security/service/PermControlService;->initService()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/security/service/PermControlService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/security/service/PermControlService;->registerMoMS()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/security/service/PermControlService;Lcom/mediatek/common/mom/PermissionRecord;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/mediatek/security/service/PermControlService;->handleCheckCase(Lcom/mediatek/common/mom/PermissionRecord;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/security/service/PermControlService;Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/security/service/PermControlService;->showDenyToast(Lcom/mediatek/common/mom/PermissionRecord;)V

    return-void
.end method

.method private attachMoMS(Lcom/mediatek/common/mom/IMobileManager;)Z
    .locals 2
    .parameter "service"

    .prologue
    .line 131
    new-instance v1, Lcom/mediatek/security/service/PermControlService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/security/service/PermControlService$2;-><init>(Lcom/mediatek/security/service/PermControlService;)V

    invoke-interface {p1, v1}, Lcom/mediatek/common/mom/IMobileManager;->attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z

    move-result v0

    .line 149
    .local v0, isAttach:Z
    return v0
.end method

.method private callShowDlg(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 372
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 374
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 375
    iget-object v1, p0, Lcom/mediatek/security/service/PermControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    return-void
.end method

.method private declared-synchronized handleCheckCase(Lcom/mediatek/common/mom/PermissionRecord;I)Z
    .locals 5
    .parameter "record"
    .parameter "flag"

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    const-string v1, "PermControlService"

    const-string v2, "handleCheckCase()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    :try_start_1
    iput-object p1, p0, Lcom/mediatek/security/service/PermControlService;->mCurrentPermRecord:Lcom/mediatek/common/mom/PermissionRecord;

    .line 355
    invoke-direct {p0, p2}, Lcom/mediatek/security/service/PermControlService;->callShowDlg(I)V

    .line 358
    iget-object v1, p0, Lcom/mediatek/security/service/PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    const-wide/16 v3, 0x61a8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 359
    const-string v1, "PermControlService"

    const-string v3, "release the lock"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :try_start_3
    const-string v1, "PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsGranted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/security/service/PermControlService;->mIsGranted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-boolean v1, p0, Lcom/mediatek/security/service/PermControlService;->mIsGranted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "PermControlService"

    const-string v3, "error"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 351
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleInstall(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 203
    const-string v2, "PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInstall() with pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-static {p0, p1}, Lcom/mediatek/security/service/PermControlUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    invoke-interface {v2, p1}, Lcom/mediatek/common/mom/IMobileManager;->getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    invoke-static {p1, v0}, Lcom/mediatek/security/datamanager/DatabaseManager;->add(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    invoke-interface {v2, v1}, Lcom/mediatek/common/mom/IMobileManager;->setPermissionRecords(Ljava/util/List;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/mediatek/security/service/PermControlService;->sendCacheUpdateBroadcast(Ljava/lang/String;)V

    .line 218
    .end local v0           #permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    .end local v1           #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v2, "PermControlService"

    const-string v3, "Receive add broadcast but can not query appinfo, internal app removed case"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0, p1}, Lcom/mediatek/security/service/PermControlService;->handleRemove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRemove(Ljava/lang/String;)V
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 195
    const-string v0, "PermControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemove() with pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p1, :cond_0

    .line 197
    invoke-static {p1}, Lcom/mediatek/security/datamanager/DatabaseManager;->delete(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/mediatek/security/service/PermControlService;->sendCacheUpdateBroadcast(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method private initService()V
    .locals 3

    .prologue
    .line 119
    const-string v0, "PermControlService"

    const-string v1, "initService()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/security/service/PermControlUtils;->initUtil(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/IMobileManager;

    iput-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    invoke-direct {p0, v0}, Lcom/mediatek/security/service/PermControlService;->attachMoMS(Lcom/mediatek/common/mom/IMobileManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z

    .line 125
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "permission_control_attached"

    iget-boolean v0, p0, Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    const-string v0, "PermControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsAttached = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printRecordList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-eqz p1, :cond_0

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mom/PermissionRecord;

    .line 277
    .local v1, permrecord:Lcom/mediatek/common/mom/PermissionRecord;
    const-string v2, "PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "permName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #permrecord:Lcom/mediatek/common/mom/PermissionRecord;
    :cond_0
    return-void
.end method

.method private registerMoMS()V
    .locals 6

    .prologue
    .line 153
    const-string v2, "PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerMoMS() mIsAttached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p0}, Lcom/mediatek/security/datamanager/DatabaseManager;->initPermControlData(Landroid/content/Context;)V

    .line 156
    iget-boolean v2, p0, Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z

    if-eqz v2, :cond_0

    .line 158
    invoke-static {}, Lcom/mediatek/security/datamanager/DatabaseManager;->getAllPermRecordList()Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    invoke-direct {p0, v1}, Lcom/mediatek/security/service/PermControlService;->printRecordList(Ljava/util/List;)V

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    invoke-interface {v2, v1}, Lcom/mediatek/common/mom/IMobileManager;->setPermissionRecords(Ljava/util/List;)V

    .line 162
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    new-instance v3, Lcom/mediatek/security/service/PermControlService$PermissionListener;

    invoke-direct {v3, p0}, Lcom/mediatek/security/service/PermControlService$PermissionListener;-><init>(Lcom/mediatek/security/service/PermControlService;)V

    invoke-interface {v2, v3}, Lcom/mediatek/common/mom/IMobileManager;->registerPermissionListener(Lcom/mediatek/common/mom/IPermissionListener;)V

    .line 163
    iget-object v3, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "permission_control_state"

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, v2}, Lcom/mediatek/common/mom/IMobileManager;->enablePermissionController(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_0
    :goto_1
    return-void

    .line 163
    .restart local v1       #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is detached so no permission to use api with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendCacheUpdateBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 413
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 414
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "exta_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v1, "com.mediatek.security.action.DATA_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 417
    return-void
.end method

.method private setCountText(I)V
    .locals 5
    .parameter "timer"

    .prologue
    .line 271
    const v1, 0x7f070006

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/security/service/PermControlService;->mTimeCountDown:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 392
    const-string v1, "PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatusBarEnableStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 395
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 396
    if-eqz p1, :cond_0

    .line 397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 406
    :goto_0
    return-void

    .line 399
    :cond_0
    const/high16 v1, 0x121

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 404
    :cond_1
    const-string v1, "PermControlService"

    const-string v2, "Fail to get status bar instance"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDenyToast(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 4
    .parameter "record"

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 383
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "exta_package_name"

    iget-object v3, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 385
    const-string v2, "extra_permission_name"

    iget-object v3, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 387
    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    .line 388
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 389
    return-void
.end method

.method private showDialog(Lcom/mediatek/common/mom/PermissionRecord;I)V
    .locals 13
    .parameter "record"
    .parameter "flag"

    .prologue
    const/4 v12, 0x0

    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f070004

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 228
    const v8, 0x1080027

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 229
    const v8, 0x7f070001

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    const v8, 0x7f070002

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 234
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040004

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 235
    .local v6, view:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 237
    const v8, 0x7f080008

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 238
    .local v4, messageText:Landroid/widget/TextView;
    const v8, 0x7f080009

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/security/service/PermControlService;->mTimeCountDown:Landroid/widget/TextView;

    .line 239
    const v8, 0x7f08000a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/security/service/PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    .line 240
    and-int/lit8 v8, p2, 0x4

    if-lez v8, :cond_0

    .line 241
    iget-object v8, p0, Lcom/mediatek/security/service/PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_0
    iget-object v8, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/mediatek/security/service/PermControlUtils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, label:Ljava/lang/String;
    const v8, 0x7f070005

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v12

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-static {p0, v11}, Lcom/mediatek/security/service/PermControlUtils;->getMessageBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, msg:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/security/service/PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    .line 249
    iget-object v8, p0, Lcom/mediatek/security/service/PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v8, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 250
    iget-object v8, p0, Lcom/mediatek/security/service/PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 252
    iget-object v8, p0, Lcom/mediatek/security/service/PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 253
    .local v7, win:Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 254
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, -0x8000

    or-int/2addr v8, v9

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 255
    invoke-virtual {v7, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 256
    invoke-direct {p0, v12}, Lcom/mediatek/security/service/PermControlService;->setStatusBarEnableStatus(Z)V

    .line 258
    iget-object v8, p0, Lcom/mediatek/security/service/PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 259
    const/16 v8, 0x14

    invoke-direct {p0, v8}, Lcom/mediatek/security/service/PermControlService;->updateCount(I)V

    .line 260
    return-void
.end method

.method private updateCount(I)V
    .locals 4
    .parameter "timer"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/mediatek/security/service/PermControlService;->setCountText(I)V

    .line 264
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 266
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 267
    iget-object v1, p0, Lcom/mediatek/security/service/PermControlService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 268
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, enable:Z
    const/4 v1, 0x2

    .line 460
    .local v1, status:I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 461
    const/4 v1, 0x0

    .line 462
    const/4 v0, 0x1

    .line 467
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService;->mCurrentPermRecord:Lcom/mediatek/common/mom/PermissionRecord;

    invoke-virtual {v2, v1}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 469
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService;->mCurrentPermRecord:Lcom/mediatek/common/mom/PermissionRecord;

    invoke-static {v2, p0}, Lcom/mediatek/security/service/PermControlUtils;->changePermission(Lcom/mediatek/common/mom/PermissionRecord;Landroid/content/Context;)V

    .line 471
    :cond_1
    const-string v2, "PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Click dialog button with check box "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iput-boolean v0, p0, Lcom/mediatek/security/service/PermControlService;->mIsPermit:Z

    .line 473
    return-void

    .line 463
    :cond_2
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 464
    const/4 v1, 0x1

    .line 465
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/mediatek/security/service/AsyncService;->onCreate()V

    .line 111
    const-string v0, "PermControlService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/mediatek/security/service/PermControlService;->initService()V

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0}, Lcom/mediatek/security/service/AsyncService;->onDestroy()V

    .line 433
    const-string v0, "PermControlService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mMoMService:Lcom/mediatek/common/mom/IMobileManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/common/mom/IMobileManager;->enablePermissionController(Z)V

    .line 437
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/security/service/PermControlService;->setStatusBarEnableStatus(Z)V

    .line 438
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 477
    const-string v0, "PermControlService"

    const-string v1, "Dialog dimissed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/security/service/PermControlService;->setStatusBarEnableStatus(Z)V

    .line 479
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    const-string v0, "PermControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPermit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/security/service/PermControlService;->mIsPermit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-boolean v0, p0, Lcom/mediatek/security/service/PermControlService;->mIsPermit:Z

    invoke-virtual {p0, v0}, Lcom/mediatek/security/service/PermControlService;->setPermissionStatus(Z)V

    .line 482
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 174
    if-eqz p1, :cond_3

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, action:Ljava/lang/String;
    const-string v2, "PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleIntent() action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "exta_package_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, pkgName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/security/service/PermControlService;->handleInstall(Ljava/lang/String;)V

    .line 192
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 180
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    const-string v2, "exta_package_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .restart local v1       #pkgName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/security/service/PermControlService;->handleRemove(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v1           #pkgName:Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/mediatek/security/service/PermControlService;->registerMoMS()V

    goto :goto_0

    .line 189
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    const-string v2, "PermControlService"

    const-string v3, "intent = null servie is killed and relaunched by system"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/mediatek/security/service/PermControlService;->registerMoMS()V

    goto :goto_0
.end method

.method public setPermissionStatus(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/mediatek/security/service/PermControlService;->mIsGranted:Z

    .line 425
    iget-object v1, p0, Lcom/mediatek/security/service/PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 427
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
