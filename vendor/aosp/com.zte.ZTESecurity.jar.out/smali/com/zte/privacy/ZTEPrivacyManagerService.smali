.class public Lcom/zte/privacy/ZTEPrivacyManagerService;
.super Lcom/zte/privacy/X;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyManagerService"

.field private static final iH:I = -0x2

.field private static final iI:I = 0x0

.field private static final iJ:I = 0x1

.field private static final iK:I = 0x2

.field private static final iN:I = 0x0

.field private static final iO:I = 0x1

.field private static final iP:I = 0x3

.field private static final iQ:I = 0x4

.field private static final iR:I = 0x5


# instance fields
.field private final iB:Ljava/lang/Object;

.field private iC:Lcom/zte/privacy/ar;

.field private iD:Lcom/zte/privacy/ak;

.field private iE:Lcom/zte/privacy/M;

.field private iF:Lcom/zte/privacy/aC;

.field private iG:Lcom/zte/privacy/aq;

.field private final iL:I

.field private iM:Lcom/zte/privacy/T;

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/zte/privacy/X;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iB:Ljava/lang/Object;

    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iD:Lcom/zte/privacy/ak;

    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iE:Lcom/zte/privacy/M;

    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iF:Lcom/zte/privacy/aC;

    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iG:Lcom/zte/privacy/aq;

    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iL:I

    new-instance v0, Lcom/zte/privacy/O;

    invoke-direct {v0, p0}, Lcom/zte/privacy/O;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const-string v0, "ZTEPrivacyManagerService"

    const-string v1, "in ZTEPrivacyManagerService!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/zte/privacy/ar;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/privacy/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    new-instance v0, Lcom/zte/privacy/ak;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/privacy/ak;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iD:Lcom/zte/privacy/ak;

    new-instance v0, Lcom/zte/privacy/aq;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/aq;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iG:Lcom/zte/privacy/aq;

    new-instance v0, Lcom/zte/privacy/aC;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/aC;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iF:Lcom/zte/privacy/aC;

    new-instance v0, Lcom/zte/privacy/M;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/M;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iE:Lcom/zte/privacy/M;

    new-instance v0, Lcom/zte/privacy/T;

    invoke-direct {v0, p0}, Lcom/zte/privacy/T;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iM:Lcom/zte/privacy/T;

    return-void
.end method

.method static synthetic a(Lcom/zte/privacy/ZTEPrivacyManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->e(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/zte/privacy/d;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ar;->c(Lcom/zte/privacy/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iE:Lcom/zte/privacy/M;

    invoke-virtual {v0, p1, p2}, Lcom/zte/privacy/M;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/zte/privacy/as;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/zte/privacy/as;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/zte/privacy/ZTEPrivacyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->bQ()V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ZTEPrivacyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch doSetNotificationEnabled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bP()V
    .locals 3

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ZTE_HEARTYSERVICE_MANAGEMENT"

    const-string v2, "ZTEPrivacyManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bQ()V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    invoke-virtual {v0}, Lcom/zte/privacy/ar;->bQ()V

    return-void
.end method

.method static synthetic c(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/aC;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iF:Lcom/zte/privacy/aC;

    return-object v0
.end method

.method private d(Ljava/lang/String;I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iD:Lcom/zte/privacy/ak;

    invoke-virtual {v3, v2, p1}, Lcom/zte/privacy/ak;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iB:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-ne v5, v4, :cond_2

    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, p1, v0, v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/M;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iE:Lcom/zte/privacy/M;

    return-object v0
.end method

.method static synthetic e(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/aq;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iG:Lcom/zte/privacy/aq;

    return-object v0
.end method

.method private e(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->x(Ljava/lang/String;)Lcom/zte/privacy/d;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.zte.heartyservice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v0, v0, Lcom/zte/privacy/d;->z:I

    goto :goto_0

    :cond_5
    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget v0, v0, Lcom/zte/privacy/d;->A:I

    goto :goto_0

    :cond_7
    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v0, v0, Lcom/zte/privacy/d;->B:I

    goto :goto_0

    :cond_8
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v0, v0, Lcom/zte/privacy/d;->C:I

    goto :goto_0

    :cond_9
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v0, v0, Lcom/zte/privacy/d;->F:I

    goto :goto_0

    :cond_a
    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget v0, v0, Lcom/zte/privacy/d;->G:I

    goto :goto_0

    :cond_b
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v0, v0, Lcom/zte/privacy/d;->H:I

    goto :goto_0

    :cond_c
    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget v0, v0, Lcom/zte/privacy/d;->E:I

    goto :goto_0

    :cond_d
    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget v0, v0, Lcom/zte/privacy/d;->D:I

    goto :goto_0

    :cond_e
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget v0, v0, Lcom/zte/privacy/d;->I:I

    goto :goto_0

    :cond_f
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget v0, v0, Lcom/zte/privacy/d;->J:I

    goto/16 :goto_0

    :cond_10
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget v0, v0, Lcom/zte/privacy/d;->K:I

    goto/16 :goto_0

    :cond_11
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    iget v0, v0, Lcom/zte/privacy/d;->L:I

    goto/16 :goto_0

    :cond_13
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget v0, v0, Lcom/zte/privacy/d;->M:I

    goto/16 :goto_0

    :cond_14
    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v0, v0, Lcom/zte/privacy/d;->N:I

    goto/16 :goto_0

    :cond_15
    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget v0, v0, Lcom/zte/privacy/d;->O:I

    goto/16 :goto_0

    :cond_16
    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget v0, v0, Lcom/zte/privacy/d;->P:I

    goto/16 :goto_0

    :cond_17
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v0, v0, Lcom/zte/privacy/d;->Q:I

    goto/16 :goto_0

    :cond_18
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v0, v0, Lcom/zte/privacy/d;->R:I

    goto/16 :goto_0

    :cond_19
    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v0, v0, Lcom/zte/privacy/d;->S:I

    goto/16 :goto_0

    :cond_1a
    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget v0, v0, Lcom/zte/privacy/d;->T:I

    goto/16 :goto_0

    :cond_1b
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v0, v0, Lcom/zte/privacy/d;->U:I

    goto/16 :goto_0

    :cond_1c
    const-string v2, "android.permission.ZTE_SEND_MMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v0, v0, Lcom/zte/privacy/d;->V:I

    goto/16 :goto_0

    :cond_1d
    move v0, v1

    goto/16 :goto_0
.end method

.method private x(Ljava/lang/String;)Lcom/zte/privacy/d;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ar;->x(Ljava/lang/String;)Lcom/zte/privacy/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public KillApplication(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/zte/privacy/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/privacy/w;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addLockedPackage(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->bP()V

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ar;->addLockedPackage(Ljava/lang/String;)V

    return-void
.end method

.method public areNotificationEnabled(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->bP()V

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "areNotificationsEnabledForPackageInt"

    invoke-static {v0, v2, v1}, Lcom/zte/a/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkNeedAskPermission(Ljava/lang/String;IZ)I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iD:Lcom/zte/privacy/ak;

    invoke-virtual {v3, v2, p1}, Lcom/zte/privacy/ak;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iB:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-ne v6, v4, :cond_2

    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, p1, v0, v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v7, v4, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v2, p1, v0, p3}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_3
    if-ne v5, v4, :cond_4

    const/4 v0, -0x2

    invoke-direct {p0, v2, p1, v0, p3}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public checkNeedAskSysPermission(Ljava/lang/String;IZ)I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.zte.heartyservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iD:Lcom/zte/privacy/ak;

    invoke-virtual {v3, v2, p1}, Lcom/zte/privacy/ak;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iB:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-ne v6, v4, :cond_2

    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, p1, v0, v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v7, v4, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v2, p1, v0, p3}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_3
    if-ne v5, v4, :cond_4

    const/4 v0, -0x2

    invoke-direct {p0, v2, p1, v0, p3}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public checkNetworkAccessPermission(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkRecordingPermission(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iF:Lcom/zte/privacy/aC;

    invoke-virtual {v0, p2}, Lcom/zte/privacy/aC;->ad(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllLockedPackages()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->bP()V

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    invoke-virtual {v0}, Lcom/zte/privacy/ar;->clearAllLockedPackages()V

    return-void
.end method

.method public clearPackagePermissionSetting(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ar;->R(Ljava/lang/String;)V

    return-void
.end method

.method public enforceAppLocked(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public getAdapter()Lcom/zte/privacy/ar;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    return-object v0
.end method

.method public getAllLockedPackages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    invoke-virtual {v0}, Lcom/zte/privacy/ar;->getAllLockedPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAntiPhoneRecordingSetting()I
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iF:Lcom/zte/privacy/aC;

    invoke-virtual {v0}, Lcom/zte/privacy/aC;->cB()I

    move-result v0

    return v0
.end method

.method public getPackageNameByUid(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    aget-object v0, v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/d;
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->x(Ljava/lang/String;)Lcom/zte/privacy/d;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityExtentionVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ar;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeLockedPackage(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->bP()V

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iC:Lcom/zte/privacy/ar;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ar;->removeLockedPackage(Ljava/lang/String;)V

    return-void
.end method

.method public savePackageSetting(Lcom/zte/privacy/d;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "ZTEPrivacyManagerService"

    const-string v1, "savePackageSetting:: setting is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Lcom/zte/privacy/d;)V

    goto :goto_0
.end method

.method public sendAntiPhoneRecordingBroadcast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAntiPhoneRecordingSetting(I)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->bP()V

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->iF:Lcom/zte/privacy/aC;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/aC;->U(I)V

    return-void
.end method

.method public setNotificationsEnabled(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->bP()V

    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/zte/privacy/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/privacy/l;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
