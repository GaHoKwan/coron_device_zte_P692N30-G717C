.class public Lcom/autonavi/xmgd/logic/MapLogicImpl;
.super Lcom/autonavi/xmgd/logic/n;

# interfaces
.implements Lcom/autonavi/xmgd/logic/b;


# static fields
.field private static b:Lcom/autonavi/xmgd/logic/MapLogicImpl;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;

.field a:Lcom/autonavi/xmgd/naviservice/e;

.field private c:Lcom/autonavi/xmgd/e/k;

.field private d:Lcom/autonavi/xm/navigation/server/GCoord;

.field private e:Lcom/autonavi/xmgd/naviservice/f;

.field private f:Lcom/autonavi/xmgd/logic/t;

.field private g:Lcom/autonavi/xmgd/logic/z;

.field private h:Landroid/os/Handler;

.field private i:Lcom/autonavi/xmgd/logic/c;

.field private j:Z

.field private k:J

.field private l:I

.field private m:Lcom/autonavi/xmgd/utility/Timer;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:[Lcom/autonavi/xmgd/e/k;

.field private w:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private x:Lcom/autonavi/xmgd/logic/w;

.field private y:Z

.field private z:Z


# direct methods
.method private constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/n;-><init>()V

    iput-object v6, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c:Lcom/autonavi/xmgd/e/k;

    iput-object v6, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object v6, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    iput-object v6, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e:Lcom/autonavi/xmgd/naviservice/f;

    new-instance v0, Lcom/autonavi/xmgd/logic/t;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/t;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f:Lcom/autonavi/xmgd/logic/t;

    new-instance v0, Lcom/autonavi/xmgd/logic/z;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/z;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->h:Landroid/os/Handler;

    iput-boolean v4, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->j:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->k:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->l:I

    new-instance v0, Lcom/autonavi/xmgd/utility/Timer;

    const-wide/16 v1, 0xfa

    new-instance v3, Lcom/autonavi/xmgd/logic/o;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/logic/o;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xmgd/utility/Timer;-><init>(JLcom/autonavi/xmgd/utility/Timer$ITimerListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->m:Lcom/autonavi/xmgd/utility/Timer;

    iput-boolean v5, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->n:Z

    iput-boolean v5, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->o:Z

    iput-boolean v5, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->p:Z

    iput-boolean v4, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->r:Z

    iput-boolean v4, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->s:Z

    iput-boolean v5, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->t:Z

    iput-boolean v4, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->u:Z

    iput-object v6, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->w:Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v0, Lcom/autonavi/xmgd/logic/w;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/w;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->x:Lcom/autonavi/xmgd/logic/w;

    iput-boolean v4, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->z:Z

    iput-boolean v4, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->A:Z

    iput-boolean v4, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B:Z

    iput-boolean v4, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->C:Z

    new-instance v0, Lcom/autonavi/xmgd/logic/s;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/s;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->D:Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;

    invoke-super {p0, v5}, Lcom/autonavi/xmgd/logic/n;->f(Z)V

    return-void
.end method

.method private a(Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_AUTOMAT:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_BED:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_COFFEE:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_DINING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_DRUGSTORE:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_PARKING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_NATURALGAS:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_PHONEBOOTH:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_PHYSICAL:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_REPAIR:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_RESTING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_ATM:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_c

    const/16 v0, 0xb

    goto :goto_0

    :cond_c
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_SHOP:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    :cond_d
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_SHOWER:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_e

    const/16 v0, 0xd

    goto :goto_0

    :cond_e
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_SPECIALITY:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    :cond_f
    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_WC:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    if-ne p1, v1, :cond_0

    const/16 v0, 0xf

    goto :goto_0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/MapLogicImpl;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->l:I

    return p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/MapLogicImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->k:J

    return-wide v0
.end method

.method private a(III)V
    .locals 2

    new-instance v0, Lcom/autonavi/xmgd/g/a;

    invoke-direct {v0}, Lcom/autonavi/xmgd/g/a;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/autonavi/xmgd/g/a;->a(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->j:Z

    return p1
.end method

.method public static ab()Lcom/autonavi/xmgd/logic/b;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-direct {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    return-object v0
.end method

.method public static ac()Lcom/autonavi/xmgd/logic/b;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    return-object v0
.end method

.method private ak()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "MapController"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->e:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/logic/z;->a(Z)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExtraItent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getDataSaveDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SAVE_ROUTE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ad()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.autonavi.xmgd.navigator.broadcast.APP_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->s()Lcom/autonavi/xm/navigation/server/GCoord;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v1

    iget v2, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-direct {p0, v2, v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(III)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/logic/z;->a(Z)V

    goto :goto_0
.end method

.method private al()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->t:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->t:Z

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g(Z)V

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->h:Landroid/os/Handler;

    new-instance v2, Lcom/autonavi/xmgd/logic/r;

    invoke-direct {v2, p0, v0}, Lcom/autonavi/xmgd/logic/r;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private am()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v0, v8, [Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v1, v0, v7

    if-eqz v1, :cond_1

    aget-object v1, v0, v7

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->szNextRoadName:Ljava/lang/String;

    aget-object v2, v0, v7

    iget v2, v2, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nTotalRemainDis:I

    aget-object v3, v0, v7

    iget v3, v3, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nNextDis:I

    aget-object v4, v0, v7

    iget v4, v4, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nTurnID:I

    aget-object v0, v0, v7

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nTotalArrivalTime:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "arinfo_next_road_name"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "arinfo_next_road_dis"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "arinfo_remin_dis"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "arinfo_car_speed"

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->af()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "arinfo_limit_distance"

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "arinfo_turn_id"

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "arinfo_arrival_time"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v0, v8, [Lcom/autonavi/xm/navigation/server/map/GZoomObject;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B:Z

    if-nez v1, :cond_4

    const-string v1, "arinfo_zoomview_statu"

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/naviservice/l;->h()Lcom/autonavi/xm/navigation/server/GRect;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "arinfo_zoomview_width"

    iget v3, v1, Lcom/autonavi/xm/navigation/server/GRect;->right:I

    iget v4, v1, Lcom/autonavi/xm/navigation/server/GRect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "arinfo_zoomview_height"

    iget v3, v1, Lcom/autonavi/xm/navigation/server/GRect;->bottom:I

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GRect;->top:I

    sub-int v1, v3, v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    aget-object v0, v0, v7

    invoke-static {v0}, Lcom/plugin/installapk/ar/util/ZoomViewInfo;->disperseGZoomObject(Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arinfo_zoomview_object"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-boolean v8, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B:Z

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xmgd.plugin.action.ar.updateview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    new-array v0, v8, [Lcom/autonavi/xm/navigation/server/map/GZoomObject;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B:Z

    if-ne v0, v8, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arinfo_zoomview_statu"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.autonavi.xmgd.plugin.action.ar.updateview"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    iput-boolean v7, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B:Z

    :cond_3
    return-void

    :cond_4
    const-string v1, "arinfo_zoomview_statu"

    invoke-virtual {v5, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B:Z

    if-ne v0, v8, :cond_6

    const-string v0, "arinfo_zoomview_statu"

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    iput-boolean v7, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B:Z

    goto :goto_1
.end method

.method private an()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_1

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->szNextRoadName:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "navi_record_info_next_road_name"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.autonavi.xmgd.plugin.action.navigator_record.updateview"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v4, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "navi_record_info_next_road_name"

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->szRoadName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.autonavi.xmgd.plugin.action.navigator_record.updateview"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private ao()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x55

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "\u9ad8\u901f\u51fa\u53e3"

    new-array v3, v7, [Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v3}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_6

    aget-object v1, v3, v6

    iget v1, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;->nNumberOfManeuver:I

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    aget-object v1, v3, v6

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;->pManeuverText:[Lcom/autonavi/xm/navigation/server/guide/GManeuverText;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nTurnID:I

    if-ne v1, v8, :cond_3

    aget-object v1, v3, v6

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;->pManeuverText:[Lcom/autonavi/xm/navigation/server/guide/GManeuverText;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->szDescription:Ljava/lang/String;

    const-string v2, "[n]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v2, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[n]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-array v2, v7, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v6, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v1, v2, v6

    iget v1, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_0

    aget-object v3, v2, v6

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTurnID:I

    if-ne v3, v8, :cond_2

    aget-object v0, v2, v6

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->szCurRoadName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    new-array v4, v7, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v6, v4}, Lcom/autonavi/xmgd/naviservice/e;->a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v1, v4, v6

    iget v1, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_4

    aget-object v5, v4, v6

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTurnID:I

    if-ne v5, v8, :cond_5

    aget-object v0, v4, v6

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->szCurRoadName:Ljava/lang/String;

    :cond_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    new-array v2, v7, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v6, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v1, v2, v6

    iget v1, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_0

    aget-object v3, v2, v6

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTurnID:I

    if-ne v3, v8, :cond_7

    aget-object v0, v2, v6

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->szCurRoadName:Ljava/lang/String;

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_4
.end method

.method static synthetic b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    return-object v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/z;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    return-object v0
.end method

.method static synthetic d(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->s:Z

    return p1
.end method

.method static synthetic e(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->y:Z

    return p1
.end method

.method private f(Lcom/autonavi/xm/navigation/server/GCoord;)I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->r:Z

    return v0
.end method

.method static synthetic f(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->z:Z

    return p1
.end method

.method private g(Z)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->x:Lcom/autonavi/xmgd/logic/w;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/w;->a(Lcom/autonavi/xmgd/logic/w;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    const v1, 0x7f0700a8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xmgd/logic/z;->a(IZZ)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->x:Lcom/autonavi/xmgd/logic/w;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/w;->b(Lcom/autonavi/xmgd/logic/w;)I

    goto :goto_0
.end method

.method static synthetic g(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->s:Z

    return v0
.end method

.method static synthetic h(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->z:Z

    return v0
.end method

.method static synthetic i(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->am()V

    return-void
.end method

.method static synthetic j(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->an()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->o()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B()V

    return-void
.end method

.method public B()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->g()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-void
.end method

.method public C()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->z()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->A()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    move-result-object v0

    return-object v0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/z;->b()Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->p:Z

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->r:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->y:Z

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->z:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->s:Z

    return v0
.end method

.method public K()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->D()I

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->K()I

    move-result v2

    new-array v3, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v4, :cond_0

    aget-object v2, v3, v1

    iget-boolean v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->bHasData:Z

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->x:Lcom/autonavi/xmgd/logic/w;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/w;->a()Z

    move-result v0

    return v0
.end method

.method public N()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c:Lcom/autonavi/xmgd/e/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c:Lcom/autonavi/xmgd/e/k;

    :cond_0
    return-void
.end method

.method public O()Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c:Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method public P()Lcom/autonavi/xm/navigation/server/GCoord;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d:Lcom/autonavi/xm/navigation/server/GCoord;

    return-object v0
.end method

.method public Q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->C:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->e()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->C:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->f()V

    :cond_0
    return-void
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->C:Z

    return v0
.end method

.method public T()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExtraItent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070149

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->al()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->a()Lcom/autonavi/xmgd/naviservice/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/h;->c()V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->D:Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_SetGetElementCB(Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;)Lcom/autonavi/xm/navigation/server/GStatus;

    iput-boolean v2, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->n:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(Z)Z

    goto :goto_0
.end method

.method public U()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getDataSaveDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SAVE_ROUTE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public V()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->u:Z

    return v0
.end method

.method public W()[Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->v:[Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method public X()Lcom/autonavi/xmgd/utility/CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->w:Lcom/autonavi/xmgd/utility/CustomDialog;

    return-object v0
.end method

.method public Y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->A:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->p()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "setStart"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/e;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "goCar"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "goCar"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "goCar"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B:Z

    iput-object v2, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->m:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->m:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/z;->a()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->q:Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->q:Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->aa()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object v2, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    :cond_2
    return-void
.end method

.method public a(IILcom/autonavi/xm/navigation/server/map/GMoveMapOp;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->k:J

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->b()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(IILcom/autonavi/xm/navigation/server/map/GMoveMapOp;)V

    return-void
.end method

.method public a(ILcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, v3}, Lcom/autonavi/xmgd/naviservice/e;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->m()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "onRouteCalculateResult"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->n()Lcom/autonavi/xm/navigation/server/GStatus;

    new-array v0, v3, [Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-array v0, v3, [Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-array v0, v3, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/autonavi/xmgd/naviservice/e;->a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_2
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->x:Lcom/autonavi/xmgd/logic/w;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/logic/w;->a(Landroid/location/Location;)V

    return-void
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/controls/r;)V
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e:Lcom/autonavi/xmgd/naviservice/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/logic/y;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/y;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e:Lcom/autonavi/xmgd/naviservice/f;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e:Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xmgd/naviservice/f;)V

    :cond_0
    check-cast p1, Lcom/autonavi/xmgd/logic/c;

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->m:Lcom/autonavi/xmgd/utility/Timer;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/utility/Timer;->start(J)V

    new-instance v0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->q:Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.autonavi.xmgd.plugin.action.callcenter.show_callcenter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autonavi.xmgd.plugin.action.ar.status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.plugin.installapk.speechcommand.sendaction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.plugin.action.play_tts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.plugin.action.exit_app"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.plugin.action.restart_app.tob"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autonavi.xmgd.plugin.action.highwaymode.status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.plugin.action.chonfig_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autonavi.xmgd.plugin.action.navigator_record.status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->q:Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ak()V

    :cond_1
    return-void
.end method

.method public a(Lcom/autonavi/xmgd/utility/CustomDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->w:Lcom/autonavi/xmgd/utility/CustomDialog;

    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/xmgd/logic/z;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x396

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200aa

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    invoke-interface {v1, p1, v0}, Lcom/autonavi/xmgd/logic/c;->a(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a([Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->v:[Lcom/autonavi/xmgd/e/k;

    return-void
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(II)[I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Lcom/autonavi/xm/navigation/server/GRect;

    new-array v1, v5, [I

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_DISPLAY_ORIENTATION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetInt(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v1, v1, v4

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->G_DISPLAY_ORIENTATION_H:Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_H_MAP_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    aget-object v1, v0, v4

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GRect;->right:I

    aget-object v2, v0, v4

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GRect;->left:I

    sub-int/2addr v1, v2

    aget-object v2, v0, v4

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GRect;->bottom:I

    aget-object v0, v0, v4

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GRect;->top:I

    sub-int/2addr v2, v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v0, :cond_1

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v0, :cond_1

    new-array v0, v6, [I

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v4

    div-int/lit8 v1, v2, 0x2

    aput v1, v0, v5

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_V_MAP_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_1
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    goto :goto_1

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public ad()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getDataSaveDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SAVE_ROUTE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->n:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->T()V

    goto :goto_0
.end method

.method public ae()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getDataSaveDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SAVE_ROUTE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public af()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->r()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->q()I

    move-result v0

    goto :goto_0
.end method

.method public ag()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/z;->e()V

    return-void
.end method

.method public ah()V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->isHasPhoneCall()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public ai()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->l:I

    return v0
.end method

.method public aj()V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->Z()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.autonavi.xmgd.plugin.action.highwaymode.finish"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v14, v1, [Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v14}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v15

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ao()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    sget-object v16, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v15, 0x0

    aget-object v15, v14, v15

    if-eqz v15, :cond_6

    const/4 v1, 0x0

    aget-object v1, v14, v1

    iget v13, v1, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nServiceAreaNum:I

    const/4 v1, 0x2

    if-lt v13, v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, v14, v1

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->pServiceAreas:[Lcom/autonavi/xm/navigation/server/guide/GServiceArea;

    const/4 v5, 0x1

    aget-object v6, v1, v5

    iget-object v12, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->szName:Ljava/lang/String;

    iget v11, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->nDis:I

    iget-object v1, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->eSAFlag:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->eSAFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->eSAFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v10, v7, [I

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v7, :cond_1

    iget-object v1, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->eSAFlag:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;)I

    move-result v1

    aput v1, v10, v5

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-lt v13, v1, :cond_8

    const/4 v1, 0x0

    aget-object v1, v14, v1

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->pServiceAreas:[Lcom/autonavi/xm/navigation/server/guide/GServiceArea;

    const/4 v3, 0x0

    aget-object v6, v1, v3

    iget-object v4, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->szName:Ljava/lang/String;

    iget v3, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->nDis:I

    iget-object v1, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->eSAFlag:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->eSAFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->eSAFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v2, v7, [I

    const/4 v1, 0x0

    move v5, v1

    :goto_2
    if-ge v5, v7, :cond_2

    iget-object v1, v6, Lcom/autonavi/xm/navigation/server/guide/GServiceArea;->eSAFlag:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;)I

    move-result v1

    aput v1, v2, v5

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    move v2, v3

    move-object v3, v4

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ao()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    aget-object v4, v14, v4

    iget v6, v4, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nExitDis:I

    const/4 v4, 0x0

    aget-object v4, v14, v4

    iget v5, v4, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nExitTime:I

    const/4 v4, 0x0

    aget-object v4, v14, v4

    iget-object v8, v4, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->szNextRoadName:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v14, v4

    iget v4, v4, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nNextDis:I

    if-lez v6, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v15, v7}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v15

    sget-object v16, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v4, 0x0

    aget-object v4, v7, v4

    iget v4, v4, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nNextDis:I

    const/4 v5, 0x0

    aget-object v5, v7, v5

    iget v5, v5, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nNextArrivalTime:I

    move v6, v4

    :cond_4
    const/4 v7, 0x0

    aget-object v7, v14, v7

    iget v7, v7, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nTurnID:I

    move/from16 v17, v7

    move-object v7, v10

    move v10, v2

    move-object v2, v8

    move-object v8, v1

    move/from16 v1, v17

    move/from16 v18, v11

    move-object v11, v12

    move-object v12, v3

    move-object v3, v9

    move/from16 v9, v18

    :goto_4
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "highway_mode_service_num"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "highway_mode_service1_name"

    invoke-virtual {v14, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "highway_mode_service1_dis"

    invoke-virtual {v14, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "highway_mode_service1_types"

    invoke-virtual {v14, v10, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v8, "highway_mode_service2_name"

    invoke-virtual {v14, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "highway_mode_service2_dis"

    invoke-virtual {v14, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "highway_mode_service2_types"

    invoke-virtual {v14, v8, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v7, "highway_mode_exit_name"

    invoke-virtual {v14, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "highway_mode_exit_dis"

    invoke-virtual {v14, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "highway_mode_exit_time"

    invoke-virtual {v14, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "highway_mode_next_name"

    invoke-virtual {v14, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "highway_mode_next_dis"

    invoke-virtual {v14, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "highway_mode_next_trun_id"

    invoke-virtual {v14, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.autonavi.xmgd.plugin.action.highwaymode.updateview"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const/4 v14, 0x1

    new-array v14, v14, [Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v15, v14}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v15

    sget-object v16, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v1, 0x0

    aget-object v1, v14, v1

    iget-object v6, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->szNextRoadName:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v14, v1

    iget v5, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nNextDis:I

    const/4 v1, 0x0

    aget-object v1, v14, v1

    iget v7, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nNextArrivalTime:I

    const/4 v1, 0x0

    aget-object v1, v14, v1

    iget v1, v1, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nTurnID:I

    move-object v8, v2

    move-object v2, v6

    move v6, v5

    move/from16 v17, v7

    move-object v7, v10

    move v10, v3

    move-object v3, v9

    move v9, v11

    move-object v11, v12

    move-object v12, v4

    move v4, v5

    move/from16 v5, v17

    goto/16 :goto_4

    :cond_6
    move/from16 v17, v5

    move v5, v7

    move-object v7, v10

    move v10, v3

    move-object v3, v9

    move v9, v11

    move-object v11, v12

    move-object v12, v4

    move/from16 v4, v17

    move/from16 v18, v8

    move-object v8, v2

    move-object v2, v6

    move/from16 v6, v18

    goto/16 :goto_4

    :cond_7
    move-object v1, v2

    move v2, v3

    move-object v3, v4

    goto/16 :goto_3

    :cond_8
    move-object v1, v2

    move v2, v3

    move-object v3, v4

    goto/16 :goto_3
.end method

.method public b(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/e;->c(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-static {p1}, Lcom/autonavi/xmgd/e/j;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/j;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->t()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public b(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xmgd/e/k;
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    new-instance v1, Lcom/autonavi/xmgd/e/k;

    invoke-direct {v1, p1}, Lcom/autonavi/xmgd/e/k;-><init>(Lcom/autonavi/xm/navigation/server/GCoord;)V

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v2, p1}, Lcom/autonavi/xmgd/naviservice/e;->b(Lcom/autonavi/xm/navigation/server/GCoord;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iput v0, v1, Lcom/autonavi/xmgd/e/k;->lDistance:I

    return-object v1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->n:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ae()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->b()V

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->h()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f:Lcom/autonavi/xmgd/logic/t;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/t;->a()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e:Lcom/autonavi/xmgd/naviservice/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e:Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->b(Lcom/autonavi/xmgd/naviservice/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e:Lcom/autonavi/xmgd/naviservice/f;

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.autonavi.xmgd.navigator.broadcast.APP_EXIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super {p0}, Lcom/autonavi/xmgd/logic/n;->b()V

    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getDataSaveDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SAVE_ROUTE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->x:Lcom/autonavi/xmgd/logic/w;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/logic/w;->a(II)V

    return-void
.end method

.method public b(IILcom/autonavi/xm/navigation/server/map/GMoveMapOp;)V
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/map/GMoveMap;-><init>()V

    iput-object p3, v0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v1, p1, p2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "moveTo"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "moveTo"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->k()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/4 v1, 0x7

    const-string v2, "moveTo"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "moveTo"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/logic/z;->a(Z)V

    return-void
.end method

.method public c(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/e;->b(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->t()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v2, v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a(I[I)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public c(II)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.plugin.installapk.speechcommand.speechreceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    iget v3, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->l:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public c(Lcom/autonavi/xm/navigation/server/GCoord;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v2

    new-array v3, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v4, :cond_0

    aget-object v2, v3, v1

    iget-boolean v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->bHasData:Z

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f:Lcom/autonavi/xmgd/logic/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/logic/t;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/t;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f:Lcom/autonavi/xmgd/logic/t;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f:Lcom/autonavi/xmgd/logic/t;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/logic/t;->a(Z)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070163

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/af;->e()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070164

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    invoke-interface {v1, p1, v0}, Lcom/autonavi/xmgd/logic/c;->a(Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070165

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070166

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Lcom/autonavi/xmgd/e/k;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c:Lcom/autonavi/xmgd/e/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/logic/c;->a(Lcom/autonavi/xmgd/e/k;)V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->u:Z

    return-void
.end method

.method public d()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public e()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->e()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/af;->a(Lcom/autonavi/xmgd/e/k;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->A:Z

    return-void
.end method

.method public e(Lcom/autonavi/xmgd/e/k;)Z
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c:Lcom/autonavi/xmgd/e/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i:Lcom/autonavi/xmgd/logic/c;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/logic/c;->b(Lcom/autonavi/xmgd/e/k;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, ""

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v2, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v0, v3

    if-eqz v2, :cond_4

    aget-object v2, v0, v3

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->szRoadName:Ljava/lang/String;

    if-eqz v2, :cond_4

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->szRoadName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u2014\u2014"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_4

    const-string v2, "autonavi60"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MapLogic]roadName is unknow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public g()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->K()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v2

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->d:I

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public i()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->h()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public j()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->i()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public k()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;

    iget-object v3, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v3, v2}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->eScaleLevel:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_25_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public l()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;

    iget-object v3, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v3, v2}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->eScaleLevel:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->f()I

    move-result v0

    return v0
.end method

.method public n()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->b(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_ELEVATION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-interface {v3, v4, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v2, v2, v0

    const/16 v3, 0x5a

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public p()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    const/16 v1, -0xa

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->b(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_ELEVATION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-interface {v3, v4, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v2, v2, v0

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public r()Lcom/autonavi/xmgd/e/k;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v0, v0, v3

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->szRoadName:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->c(Lcom/autonavi/xm/navigation/server/GCoord;)I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v3

    new-instance v0, Lcom/autonavi/xmgd/e/k;

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/e/k;-><init>(Lcom/autonavi/xm/navigation/server/GCoord;)V

    iput-object v2, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iput v3, v0, Lcom/autonavi/xmgd/e/k;->lDistance:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Lcom/autonavi/xm/navigation/server/GCoord;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    return-object v0
.end method

.method public t()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->m()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->x()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g:Lcom/autonavi/xmgd/logic/z;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/logic/z;->e()V

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "deleteRoute"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->h:Landroid/os/Handler;

    new-instance v2, Lcom/autonavi/xmgd/logic/p;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/logic/p;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public u()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->j()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/4 v2, 0x6

    const-string v3, "startSimulate"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public v()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->k()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/4 v2, 0x7

    const-string v3, "moveTo"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    return-object v0
.end method

.method public w()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->l()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/4 v2, 0x6

    const-string v3, "continueSimulate"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    return-object v0
.end method

.method public x()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->m()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "stopSimulate"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->h:Landroid/os/Handler;

    new-instance v2, Lcom/autonavi/xmgd/logic/q;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/logic/q;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public y()Z
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->c:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v1

    sget v2, Lcom/autonavi/xmgd/naviservice/l;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    move-result v0

    return v0
.end method

.method public z()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->x()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->n()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method
