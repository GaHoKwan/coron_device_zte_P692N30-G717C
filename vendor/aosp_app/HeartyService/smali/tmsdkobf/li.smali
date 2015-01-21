.class Ltmsdkobf/li;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/lf;


# static fields
.field private static final Ce:Ljava/lang/String;

.field private static Cf:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final Cg:Ljava/lang/String;

.field private Ch:Ljava/lang/String;

.field private Ci:Ltmsdkobf/ao;

.field private Cj:Ltmsdkobf/av;

.field private Ck:Ltmsdkobf/cj;

.field private Cl:Ltmsdkobf/bj;

.field private Cm:Ltmsdkobf/u;

.field private Cn:Ltmsdkobf/aj;

.field private Co:Ltmsdkobf/bi;

.field volatile Cp:Z

.field private Cq:Ljava/lang/Object;

.field private volatile Cr:J

.field private volatile Cs:J

.field private Ct:Z

.field private mContext:Landroid/content/Context;

.field private mImei:Ljava/lang/String;

.field private vQ:Ltmsdkobf/kf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "WupSessionHelperImpl"

    sput-object v0, Ltmsdkobf/li;->TAG:Ljava/lang/String;

    .line 69
    const-string v0, "host_url"

    invoke-static {v0}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltmsdkobf/li;->Ce:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "tid"

    iput-object v0, p0, Ltmsdkobf/li;->Cg:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Ltmsdkobf/li;->Ch:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdkobf/li;->Cq:Ljava/lang/Object;

    .line 97
    iput-wide v3, p0, Ltmsdkobf/li;->Cr:J

    .line 98
    iput-wide v3, p0, Ltmsdkobf/li;->Cs:J

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/li;->Ct:Z

    .line 102
    iput-object p1, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "wup"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    .line 105
    sget-object v0, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v1, "guid"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltmsdk/common/utils/PhoneInfoUtil;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/li;->Ch:Ljava/lang/String;

    .line 113
    invoke-static {}, Ltmsdkobf/jx;->eW()V

    .line 116
    invoke-direct {p0}, Ltmsdkobf/li;->ge()V

    .line 117
    return-void
.end method

.method private a(Ltmsdkobf/bn;)V
    .locals 4
    .parameter "serverCmdInfo"

    .prologue
    .line 617
    const-string v1, "CMD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryDirectHandleTips: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ltmsdkobf/bn;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 618
    const-string v1, "CMD"

    const-string v2, "XX run http session, handle cloud instr"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 620
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action_direct_verify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 622
    iget-object v1, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 623
    return-void
.end method

.method private a(Ltmsdkobf/cx;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .parameter "request"
    .parameter "requestId"
    .parameter "servantName"
    .parameter "funcName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/cx;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p5, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Ltmsdkobf/cx;->as(I)V

    .line 632
    invoke-virtual {p1, p3}, Ltmsdkobf/cx;->ao(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1, p4}, Ltmsdkobf/cx;->ap(Ljava/lang/String;)V

    .line 634
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ltmsdkobf/cx;->an(Ljava/lang/String;)V

    .line 635
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 636
    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 637
    .local v2, paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 638
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ltmsdkobf/cx;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 642
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    return-void
.end method

.method private b(Ltmsdkobf/lj;)V
    .locals 3
    .parameter "wupSessionInfo"

    .prologue
    const/16 v2, 0x3e7

    .line 386
    iget v0, p1, Ltmsdkobf/lj;->Cu:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Ltmsdkobf/lj;->Cu:I

    const v1, 0x10000002

    if-eq v0, v1, :cond_0

    iget v0, p1, Ltmsdkobf/lj;->Cu:I

    if-eq v0, v2, :cond_0

    .line 389
    invoke-static {}, Ltmsdkobf/in;->dk()Ltmsdkobf/in;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/in;->dl()V

    .line 393
    :cond_0
    iget v0, p1, Ltmsdkobf/lj;->Cu:I

    if-eq v0, v2, :cond_1

    .line 394
    invoke-static {}, Ltmsdkobf/lz;->hm()Ltmsdkobf/lz;

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/ly;->a(Ltmsdkobf/mf;)V

    .line 395
    invoke-static {}, Ltmsdkobf/ly;->hl()V

    .line 397
    :cond_1
    return-void
.end method

.method private ge()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 124
    iget-object v0, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v1, "last_ft"

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/kf;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/li;->Cr:J

    .line 125
    iget-object v0, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v1, "cts_td"

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/kf;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/li;->Cs:J

    .line 126
    return-void
.end method

.method private gi()Ltmsdkobf/u;
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    if-nez v0, :cond_0

    .line 809
    new-instance v0, Ltmsdkobf/u;

    invoke-direct {v0}, Ltmsdkobf/u;-><init>()V

    iput-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    .line 810
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    iget-object v1, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->d(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    iget-object v1, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->q(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    iget-object v1, p0, Ltmsdkobf/li;->Ch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->r(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    iget-object v1, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltmsdk/common/utils/PhoneInfoUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->s(Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    invoke-static {}, Ltmsdk/common/utils/PhoneInfoUtil;->getAndoidId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->t(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->r(I)V

    .line 816
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    invoke-static {}, Ltmsdk/common/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->u(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    invoke-static {}, Ltmsdk/common/utils/PhoneInfoUtil;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->v(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    iget-object v1, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltmsdk/common/utils/EnvUtil;->getDeviceInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->w(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    sget-object v1, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->x(Ljava/lang/String;)V

    .line 826
    :goto_0
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    return-object v0

    .line 821
    :cond_0
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    sget-object v1, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->x(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    iget-object v1, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->d(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Ltmsdkobf/li;->Cm:Ltmsdkobf/u;

    iget-object v1, p0, Ltmsdkobf/li;->Ch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/u;->r(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private gj()I
    .locals 6

    .prologue
    .line 837
    const/4 v1, -0x2

    .line 838
    .local v1, err:I
    invoke-direct {p0}, Ltmsdkobf/li;->gi()Ltmsdkobf/u;

    move-result-object v0

    .line 839
    .local v0, deviceInfo:Ltmsdkobf/u;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 840
    .local v3, guidInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/ag;>;"
    const-class v4, Ltmsdkobf/lk;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdkobf/lk;

    invoke-virtual {v4, v0, v3}, Ltmsdkobf/lk;->a(Ltmsdkobf/u;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_1

    .line 841
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/ag;

    .line 842
    .local v2, guidInfo:Ltmsdkobf/ag;
    if-eqz v2, :cond_1

    .line 843
    invoke-virtual {v2}, Ltmsdkobf/ag;->o()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    .line 844
    sget-object v4, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 845
    :cond_0
    const/16 v1, -0x7d1

    .line 850
    .end local v2           #guidInfo:Ltmsdkobf/ag;
    :cond_1
    return v1
.end method

.method private gk()Z
    .locals 5

    .prologue
    .line 863
    iget-object v3, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, curImei:Ljava/lang/String;
    iget-object v3, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltmsdk/common/utils/PhoneInfoUtil;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, curMac:Ljava/lang/String;
    iget-object v3, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v4, "imei"

    invoke-virtual {v3, v4, v0}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    .line 866
    iget-object v3, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v4, "mac"

    invoke-virtual {v3, v4, v1}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdkobf/li;->Ch:Ljava/lang/String;

    .line 868
    const/4 v2, 0x0

    .line 869
    .local v2, isOld:Z
    iget-object v3, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltmsdkobf/li;->Ch:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 870
    :cond_0
    iput-object v0, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    .line 871
    iput-object v1, p0, Ltmsdkobf/li;->Ch:Ljava/lang/String;

    .line 872
    const/4 v2, 0x1

    .line 874
    :cond_1
    return v2
.end method

.method private v(J)V
    .locals 5
    .parameter "lastFetchTimeMillis"

    .prologue
    .line 129
    iput-wide p1, p0, Ltmsdkobf/li;->Cr:J

    .line 130
    iget-object v0, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v1, "last_ft"

    iget-wide v2, p0, Ltmsdkobf/li;->Cr:J

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ltmsdkobf/kf;->a(Ljava/lang/String;JZ)V

    .line 131
    return-void
.end method

.method private w(J)V
    .locals 5
    .parameter "countOfTodayFetch"

    .prologue
    .line 134
    iput-wide p1, p0, Ltmsdkobf/li;->Cs:J

    .line 135
    iget-object v0, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v1, "cts_td"

    iget-wide v2, p0, Ltmsdkobf/li;->Cs:J

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ltmsdkobf/kf;->a(Ljava/lang/String;JZ)V

    .line 136
    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/lj;)I
    .locals 1
    .parameter "wupSessionInfo"

    .prologue
    .line 194
    sget-object v0, Ltmsdkobf/li;->Ce:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ltmsdkobf/lj;Ljava/lang/String;)I
    .locals 1
    .parameter "wupSessionInfo"
    .parameter "url"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ltmsdkobf/lj;Z)I
    .locals 1
    .parameter "wupSessionInfo"
    .parameter "forGuid"

    .prologue
    .line 220
    sget-object v0, Ltmsdkobf/li;->Ce:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method a(Ltmsdkobf/lj;ZLjava/lang/String;)I
    .locals 34
    .parameter "wupSessionInfo"
    .parameter "forGuid"
    .parameter "url"

    .prologue
    .line 233
    sget-object v4, Ltmsdkobf/li;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " runHttpSession() url:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Ltmsdkobf/li;->eX()Z

    move-result v16

    .line 236
    .local v16, couldNotConnect:Z
    sget-object v4, Ltmsdkobf/li;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " runHttpSession() couldNotConnect:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    if-eqz v16, :cond_1

    .line 238
    const/16 v21, -0x40

    .line 381
    :cond_0
    :goto_0
    return v21

    .line 241
    :cond_1
    const/16 v21, -0x1770

    .line 242
    .local v21, err:I
    if-nez p1, :cond_2

    .line 243
    const/16 v21, -0x17a9

    goto :goto_0

    .line 245
    :cond_2
    if-nez p2, :cond_3

    .line 246
    invoke-virtual/range {p0 .. p0}, Ltmsdkobf/li;->gl()I

    move-result v21

    if-eqz v21, :cond_3

    .line 247
    add-int/lit8 v21, v21, -0x3c

    goto :goto_0

    .line 250
    :cond_3
    move-object/from16 v0, p1

    iget-object v5, v0, Ltmsdkobf/lj;->Cx:Ltmsdkobf/cx;

    .line 251
    .local v5, request:Ltmsdkobf/cx;
    move-object/from16 v0, p1

    iget-object v0, v0, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    move-object/from16 v27, v0

    .line 253
    .local v27, response:Ltmsdkobf/cx;
    move-object/from16 v0, p1

    iget v6, v0, Ltmsdkobf/lj;->Cu:I

    move-object/from16 v0, p1

    iget-object v4, v0, Ltmsdkobf/lj;->Cv:Ltmsdkobf/lh;

    iget-object v7, v4, Ltmsdkobf/lh;->Cc:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Ltmsdkobf/lj;->Cv:Ltmsdkobf/lh;

    iget-object v8, v4, Ltmsdkobf/lh;->Cd:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 255
    invoke-virtual {v5}, Ltmsdkobf/cx;->J()I

    move-result v26

    .line 256
    .local v26, requestId:I
    const/16 v13, 0x3e7

    .line 258
    .local v13, cmdRequestId:I
    const/4 v7, 0x0

    .line 259
    .local v7, cmdRequest:Ltmsdkobf/cx;
    const/16 v4, 0x3e7

    move/from16 v0, v26

    if-eq v0, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Ltmsdkobf/li;->gf()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 260
    sget-object v4, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v6, 0x3e7

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ltmsdkobf/lh;

    .line 262
    .local v14, cmdRequestParam:Ltmsdkobf/lh;
    new-instance v11, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v11, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 263
    .local v11, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "phonetype"

    invoke-virtual/range {p0 .. p0}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v6

    invoke-virtual {v11, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v4, "userinfo"

    invoke-virtual/range {p0 .. p0}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v6

    invoke-virtual {v11, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v4, "reqinfo"

    invoke-virtual/range {p0 .. p0}, Ltmsdkobf/li;->gm()Ltmsdkobf/aj;

    move-result-object v6

    invoke-virtual {v11, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v7, Ltmsdkobf/cx;

    .end local v7           #cmdRequest:Ltmsdkobf/cx;
    const/4 v4, 0x1

    invoke-direct {v7, v4}, Ltmsdkobf/cx;-><init>(Z)V

    .line 268
    .restart local v7       #cmdRequest:Ltmsdkobf/cx;
    const/16 v8, 0x3e7

    iget-object v9, v14, Ltmsdkobf/lh;->Cc:Ljava/lang/String;

    iget-object v10, v14, Ltmsdkobf/lh;->Cd:Ljava/lang/String;

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 270
    const-string v4, "Chord"

    const-string v6, "WupSessionHelperImpl runHttpSession() getMainTips"

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    .end local v11           #requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14           #cmdRequestParam:Ltmsdkobf/lh;
    :cond_4
    const/16 v24, 0x0

    .line 275
    .local v24, httpConnection:Ltmsdkobf/jx;
    const/16 v19, 0x0

    .line 276
    .local v19, encodedData:[B
    if-nez v7, :cond_6

    .line 277
    :try_start_0
    invoke-virtual {v5}, Ltmsdkobf/cx;->F()[B

    move-result-object v19

    .line 288
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Ltmsdk/common/tcc/TccCryptor;->encrypt([B[B)[B

    move-result-object v20

    .line 290
    .local v20, encryptData:[B
    move-object/from16 v0, p1

    iget-boolean v4, v0, Ltmsdkobf/lj;->Cz:Z

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Ltmsdkobf/jx;->e(Ljava/lang/String;Z)Ltmsdkobf/jx;

    move-result-object v24

    .line 291
    const-string v4, "POST"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ltmsdkobf/jx;->setRequestMethod(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ltmsdkobf/jx;->setPostData([B)V

    .line 293
    invoke-virtual/range {v24 .. v24}, Ltmsdkobf/jx;->eY()I

    .line 295
    new-instance v28, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v28 .. v28}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 296
    .local v28, retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    const/4 v4, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ltmsdkobf/jx;->a(ZLjava/util/concurrent/atomic/AtomicReference;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ltmsdk/common/exception/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v21

    if-eqz v21, :cond_8

    .line 365
    if-eqz v24, :cond_5

    .line 366
    invoke-virtual/range {v24 .. v24}, Ltmsdkobf/jx;->close()V

    .line 367
    const/16 v24, 0x0

    .line 370
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltmsdkobf/li;->Cp:Z

    if-nez v4, :cond_0

    if-nez v21, :cond_0

    .line 372
    invoke-static {}, Ltmsdk/common/TMSDKContext;->reportChannelInfo()V

    goto/16 :goto_0

    .line 280
    .end local v20           #encryptData:[B
    .end local v28           #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    :cond_6
    :try_start_1
    invoke-virtual {v5}, Ltmsdkobf/cx;->F()[B

    move-result-object v25

    .line 281
    .local v25, requestData:[B
    invoke-virtual {v7}, Ltmsdkobf/cx;->F()[B

    move-result-object v12

    .line 282
    .local v12, cmdData:[B
    move-object/from16 v0, v25

    array-length v4, v0

    array-length v6, v12

    add-int/2addr v4, v6

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 283
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    array-length v8, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v6, v0

    array-length v8, v12

    move-object/from16 v0, v19

    invoke-static {v12, v4, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ltmsdk/common/exception/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 349
    .end local v12           #cmdData:[B
    .end local v25           #requestData:[B
    :catch_0
    move-exception v18

    .line 350
    .local v18, e:Ltmsdk/common/exception/NetWorkException;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ltmsdk/common/exception/NetWorkException;->getErrCode()I

    move-result v21

    .line 351
    sget-object v4, Ltmsdkobf/li;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetWorkException:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ltmsdk/common/exception/NetWorkException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    invoke-virtual/range {v18 .. v18}, Ltmsdk/common/exception/NetWorkException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    if-eqz v24, :cond_7

    .line 366
    invoke-virtual/range {v24 .. v24}, Ltmsdkobf/jx;->close()V

    .line 367
    const/16 v24, 0x0

    .line 370
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltmsdkobf/li;->Cp:Z

    if-nez v4, :cond_0

    if-nez v21, :cond_0

    .line 372
    invoke-static {}, Ltmsdk/common/TMSDKContext;->reportChannelInfo()V

    goto/16 :goto_0

    .line 300
    .end local v18           #e:Ltmsdk/common/exception/NetWorkException;
    .restart local v20       #encryptData:[B
    .restart local v28       #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    :cond_8
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    .line 302
    .local v29, retInfo:[B
    if-eqz v29, :cond_9

    move-object/from16 v0, v29

    array-length v4, v0

    if-lez v4, :cond_9

    .line 304
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B

    move-result-object v17

    .line 306
    .local v17, decryptData:[B
    const/4 v4, 0x0

    aget-byte v4, v17, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v6, 0x1

    aget-byte v6, v17, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    const/4 v6, 0x2

    aget-byte v6, v17, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    const/4 v6, 0x3

    aget-byte v6, v17, v6

    and-int/lit16 v6, v6, 0xff

    or-int v23, v4, v6

    .line 307
    .local v23, firstLength:I
    move-object/from16 v0, v17

    array-length v4, v0

    move/from16 v0, v23

    if-ne v0, v4, :cond_c

    .line 309
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltmsdkobf/cx;->b([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ltmsdk/common/exception/NetworkOnMainThreadException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 348
    .end local v17           #decryptData:[B
    .end local v23           #firstLength:I
    :cond_9
    :goto_2
    const/16 v21, 0x0

    .line 365
    if-eqz v24, :cond_a

    .line 366
    invoke-virtual/range {v24 .. v24}, Ltmsdkobf/jx;->close()V

    .line 367
    const/16 v24, 0x0

    .line 370
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltmsdkobf/li;->Cp:Z

    if-nez v4, :cond_b

    if-nez v21, :cond_b

    .line 372
    invoke-static {}, Ltmsdk/common/TMSDKContext;->reportChannelInfo()V

    .line 377
    .end local v20           #encryptData:[B
    .end local v28           #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    .end local v29           #retInfo:[B
    :cond_b
    :goto_3
    if-nez v21, :cond_0

    .line 378
    invoke-direct/range {p0 .. p1}, Ltmsdkobf/li;->b(Ltmsdkobf/lj;)V

    goto/16 :goto_0

    .line 310
    .restart local v17       #decryptData:[B
    .restart local v20       #encryptData:[B
    .restart local v23       #firstLength:I
    .restart local v28       #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    .restart local v29       #retInfo:[B
    :cond_c
    if-lez v23, :cond_9

    :try_start_4
    move-object/from16 v0, v17

    array-length v4, v0

    add-int/lit8 v6, v23, 0x4

    if-le v4, v6, :cond_9

    .line 311
    aget-byte v4, v17, v23

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v6, v23, 0x1

    aget-byte v6, v17, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    add-int/lit8 v6, v23, 0x2

    aget-byte v6, v17, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    add-int/lit8 v6, v23, 0x3

    aget-byte v6, v17, v6

    and-int/lit16 v6, v6, 0xff

    or-int v31, v4, v6

    .line 312
    .local v31, secondLength:I
    add-int v4, v23, v31

    move-object/from16 v0, v17

    array-length v6, v0

    if-ne v4, v6, :cond_9

    .line 313
    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 314
    .local v22, firstData:[B
    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 315
    .local v30, secondData:[B
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v4, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    new-instance v15, Ltmsdkobf/cx;

    const/4 v4, 0x1

    invoke-direct {v15, v4}, Ltmsdkobf/cx;-><init>(Z)V

    .line 319
    .local v15, cmdResponse:Ltmsdkobf/cx;
    const-string v4, "UTF-8"

    invoke-virtual {v15, v4}, Ltmsdkobf/cx;->an(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ltmsdkobf/cx;->b([B)V

    .line 322
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ltmsdkobf/cx;->b([B)V

    .line 325
    const/16 v33, 0x0

    .line 326
    .local v33, temp:Ltmsdkobf/cx;
    invoke-virtual {v15}, Ltmsdkobf/cx;->J()I

    move-result v4

    move/from16 v0, v26

    if-ne v4, v0, :cond_d

    .line 327
    move-object/from16 v33, v15

    .line 328
    move-object/from16 v15, v27

    .line 329
    move-object/from16 v27, v33

    .line 332
    :cond_d
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    .line 334
    const-string v4, "cmdinfo"

    new-instance v6, Ltmsdkobf/bn;

    invoke-direct {v6}, Ltmsdkobf/bn;-><init>()V

    invoke-virtual {v15, v4, v6}, Ltmsdkobf/cx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ltmsdkobf/bn;

    .line 335
    .local v32, serverCmdInfo:Ltmsdkobf/bn;
    if-nez v32, :cond_f

    .line 337
    new-instance v32, Ltmsdkobf/bn;

    .end local v32           #serverCmdInfo:Ltmsdkobf/bn;
    invoke-direct/range {v32 .. v32}, Ltmsdkobf/bn;-><init>()V

    .line 338
    .restart local v32       #serverCmdInfo:Ltmsdkobf/bn;
    const-string v4, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ltmsdkobf/bn;->Z(Ljava/lang/String;)V

    .line 344
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/bn;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ltmsdk/common/exception/NetworkOnMainThreadException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 354
    .end local v15           #cmdResponse:Ltmsdkobf/cx;
    .end local v17           #decryptData:[B
    .end local v20           #encryptData:[B
    .end local v22           #firstData:[B
    .end local v23           #firstLength:I
    .end local v28           #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    .end local v29           #retInfo:[B
    .end local v30           #secondData:[B
    .end local v31           #secondLength:I
    .end local v32           #serverCmdInfo:Ltmsdkobf/bn;
    .end local v33           #temp:Ltmsdkobf/cx;
    :catch_1
    move-exception v18

    .line 355
    .local v18, e:Ljava/lang/IllegalArgumentException;
    const/16 v21, -0x17a9

    .line 356
    :try_start_5
    sget-object v4, Ltmsdkobf/li;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wup agrs error:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 365
    if-eqz v24, :cond_e

    .line 366
    invoke-virtual/range {v24 .. v24}, Ltmsdkobf/jx;->close()V

    .line 367
    const/16 v24, 0x0

    .line 370
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltmsdkobf/li;->Cp:Z

    if-nez v4, :cond_b

    if-nez v21, :cond_b

    .line 372
    invoke-static {}, Ltmsdk/common/TMSDKContext;->reportChannelInfo()V

    goto/16 :goto_3

    .line 341
    .end local v18           #e:Ljava/lang/IllegalArgumentException;
    .restart local v15       #cmdResponse:Ltmsdkobf/cx;
    .restart local v17       #decryptData:[B
    .restart local v20       #encryptData:[B
    .restart local v22       #firstData:[B
    .restart local v23       #firstLength:I
    .restart local v28       #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    .restart local v29       #retInfo:[B
    .restart local v30       #secondData:[B
    .restart local v31       #secondLength:I
    .restart local v32       #serverCmdInfo:Ltmsdkobf/bn;
    .restart local v33       #temp:Ltmsdkobf/cx;
    :cond_f
    :try_start_6
    invoke-virtual/range {v32 .. v32}, Ltmsdkobf/bn;->y()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ltmsdkobf/li;->cz(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ltmsdk/common/exception/NetworkOnMainThreadException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 358
    .end local v15           #cmdResponse:Ltmsdkobf/cx;
    .end local v17           #decryptData:[B
    .end local v20           #encryptData:[B
    .end local v22           #firstData:[B
    .end local v23           #firstLength:I
    .end local v28           #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    .end local v29           #retInfo:[B
    .end local v30           #secondData:[B
    .end local v31           #secondLength:I
    .end local v32           #serverCmdInfo:Ltmsdkobf/bn;
    .end local v33           #temp:Ltmsdkobf/cx;
    :catch_2
    move-exception v18

    .line 359
    .local v18, e:Ltmsdk/common/exception/NetworkOnMainThreadException;
    :try_start_7
    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 365
    .end local v18           #e:Ltmsdk/common/exception/NetworkOnMainThreadException;
    :catchall_0
    move-exception v4

    if-eqz v24, :cond_10

    .line 366
    invoke-virtual/range {v24 .. v24}, Ltmsdkobf/jx;->close()V

    .line 367
    const/16 v24, 0x0

    .line 370
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v6, v0, Ltmsdkobf/li;->Cp:Z

    if-nez v6, :cond_11

    if-nez v21, :cond_11

    .line 372
    invoke-static {}, Ltmsdk/common/TMSDKContext;->reportChannelInfo()V

    :cond_11
    throw v4

    .line 360
    :catch_3
    move-exception v18

    .line 361
    .local v18, e:Ljava/lang/Throwable;
    const/16 v21, -0x1770

    .line 362
    :try_start_8
    sget-object v4, Ltmsdkobf/li;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wup error:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 365
    if-eqz v24, :cond_12

    .line 366
    invoke-virtual/range {v24 .. v24}, Ltmsdkobf/jx;->close()V

    .line 367
    const/16 v24, 0x0

    .line 370
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltmsdkobf/li;->Cp:Z

    if-nez v4, :cond_b

    if-nez v21, :cond_b

    .line 372
    invoke-static {}, Ltmsdk/common/TMSDKContext;->reportChannelInfo()V

    goto/16 :goto_3
.end method

.method public a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "response"
    .parameter "key"
    .parameter "object"

    .prologue
    .line 653
    if-nez p2, :cond_0

    .line 654
    const-string p2, ""

    .line 656
    :cond_0
    invoke-virtual {p1, p2, p3}, Ltmsdkobf/cx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cz(Ljava/lang/String;)V
    .locals 3
    .parameter "tipsId"

    .prologue
    .line 928
    const-string v0, "Chord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNewTipsId() newTipsId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 929
    iget-object v0, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v1, "tid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 930
    return-void
.end method

.method public eX()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Ltmsdkobf/jx;->eX()Z

    move-result v0

    return v0
.end method

.method public ga()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/li;->Ct:Z

    .line 121
    return-void
.end method

.method public gb()Ltmsdkobf/ao;
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Ltmsdkobf/li;->Ci:Ltmsdkobf/ao;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Ltmsdkobf/ao;

    invoke-direct {v0}, Ltmsdkobf/ao;-><init>()V

    iput-object v0, p0, Ltmsdkobf/li;->Ci:Ltmsdkobf/ao;

    .line 666
    iget-object v0, p0, Ltmsdkobf/li;->Ci:Ltmsdkobf/ao;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ltmsdkobf/ao;->w(I)V

    .line 667
    iget-object v0, p0, Ltmsdkobf/li;->Ci:Ltmsdkobf/ao;

    const-string v1, "sub_platform"

    invoke-static {v1}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltmsdkobf/ao;->x(I)V

    .line 670
    :cond_0
    iget-object v0, p0, Ltmsdkobf/li;->Ci:Ltmsdkobf/ao;

    return-object v0
.end method

.method public gc()Ltmsdkobf/cj;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 691
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    if-nez v8, :cond_3

    .line 692
    new-instance v8, Ltmsdkobf/cj;

    invoke-direct {v8}, Ltmsdkobf/cj;-><init>()V

    iput-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    .line 693
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    iget-object v9, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    iput-object v9, v8, Ltmsdkobf/cj;->U:Ljava/lang/String;

    .line 694
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    const-string v9, "lc"

    invoke-static {v9}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Ltmsdkobf/cj;->fe:Ljava/lang/String;

    .line 695
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    const-string v9, "channel"

    invoke-static {v9}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Ltmsdkobf/cj;->fk:Ljava/lang/String;

    .line 696
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    invoke-static {}, Ltmsdk/common/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Ltmsdkobf/cj;->W:Ljava/lang/String;

    .line 697
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    const-string v9, "product"

    invoke-static {v9}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Ltmsdkobf/cj;->product:I

    .line 699
    const-string v8, "pversion"

    invoke-static {v8}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v2

    .line 700
    .local v2, pv:I
    const-string v8, "cversion"

    invoke-static {v8}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v0

    .line 701
    .local v0, cv:I
    const-string v8, "hotfix"

    invoke-static {v8}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    .line 702
    .local v1, hv:I
    if-nez v2, :cond_0

    .line 704
    const-string v8, "softversion"

    invoke-static {v8}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, softversion:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[\\.]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, segs:[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    .line 707
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 708
    aget-object v8, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 709
    aget-object v8, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 712
    .end local v3           #segs:[Ljava/lang/String;
    .end local v4           #softversion:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    new-instance v9, Ltmsdkobf/aq;

    invoke-direct {v9, v2, v0, v1}, Ltmsdkobf/aq;-><init>(III)V

    iput-object v9, v8, Ltmsdkobf/cj;->iv:Ltmsdkobf/aq;

    .line 713
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    sget-object v9, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    iput-object v9, v8, Ltmsdkobf/cj;->V:Ljava/lang/String;

    .line 714
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    iget-object v9, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v9}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Ltmsdkobf/cj;->imsi:Ljava/lang/String;

    .line 715
    iget-object v8, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v9

    sget-object v10, Ltmsdkobf/t;->ba:Ltmsdkobf/t;

    if-ne v9, v10, :cond_1

    :goto_0
    iput v5, v8, Ltmsdkobf/cj;->iu:I

    .line 716
    iget-object v5, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    iget-object v8, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v8}, Ltmsdk/common/utils/EnvUtil;->isBuildIn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    iput v6, v5, Ltmsdkobf/cj;->ab:I

    .line 717
    iget-object v5, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v6

    iput v6, v5, Ltmsdkobf/cj;->bg:I

    .line 718
    iget-object v5, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    const-string v6, "build"

    invoke-static {v6}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Ltmsdkobf/cj;->fo:I

    .line 726
    .end local v0           #cv:I
    .end local v1           #hv:I
    .end local v2           #pv:I
    :goto_2
    iget-object v5, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    return-object v5

    .restart local v0       #cv:I
    .restart local v1       #hv:I
    .restart local v2       #pv:I
    :cond_1
    move v5, v6

    .line 715
    goto :goto_0

    :cond_2
    move v6, v7

    .line 716
    goto :goto_1

    .line 720
    .end local v0           #cv:I
    .end local v1           #hv:I
    .end local v2           #pv:I
    :cond_3
    iget-object v7, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    sget-object v8, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    iput-object v8, v7, Ltmsdkobf/cj;->V:Ljava/lang/String;

    .line 721
    iget-object v7, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    iget-object v8, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    iput-object v8, v7, Ltmsdkobf/cj;->U:Ljava/lang/String;

    .line 722
    iget-object v7, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    invoke-static {}, Ltmsdk/common/utils/EnvUtil;->getRootStatus()I

    move-result v8

    iput v8, v7, Ltmsdkobf/cj;->iw:I

    .line 723
    iget-object v7, p0, Ltmsdkobf/li;->Ck:Ltmsdkobf/cj;

    invoke-static {}, Ltmsdk/common/utils/NetworkUtil;->getNetworkType()Ltmsdkobf/t;

    move-result-object v8

    sget-object v9, Ltmsdkobf/t;->ba:Ltmsdkobf/t;

    if-ne v8, v9, :cond_4

    :goto_3
    iput v5, v7, Ltmsdkobf/cj;->iu:I

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method public gd()Ltmsdkobf/bi;
    .locals 5

    .prologue
    .line 778
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    if-nez v2, :cond_1

    .line 779
    new-instance v2, Ltmsdkobf/bi;

    invoke-direct {v2}, Ltmsdkobf/bi;-><init>()V

    iput-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    .line 780
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    sget-object v3, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->f(Ljava/lang/String;)V

    .line 781
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    const-string v3, "lc"

    invoke-static {v3}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->Q(Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    const-string v3, "product"

    invoke-static {v3}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ltmsdkobf/x;->s(I)Ltmsdkobf/x;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdkobf/x;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->setName(Ljava/lang/String;)V

    .line 783
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    const-string v3, "softversion"

    invoke-static {v3}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->setVersion(Ljava/lang/String;)V

    .line 784
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    iget-object v3, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->d(Ljava/lang/String;)V

    .line 785
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    iget-object v3, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->q(Ljava/lang/String;)V

    .line 786
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->setType(I)V

    .line 787
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->T(Ljava/lang/String;)V

    .line 788
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    invoke-static {}, Ltmsdk/common/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->U(Ljava/lang/String;)V

    .line 789
    iget-object v2, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ltmsdk/common/utils/PhoneInfoUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 790
    .local v1, width:I
    iget-object v2, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ltmsdk/common/utils/PhoneInfoUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 791
    .local v0, height:I
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->V(Ljava/lang/String;)V

    .line 792
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    const-string v3, "sub_platform"

    invoke-static {v3}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->x(I)V

    .line 793
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    const-string v3, "channel"

    invoke-static {v3}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->W(Ljava/lang/String;)V

    .line 794
    iget-object v3, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    iget-object v2, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ltmsdk/common/utils/EnvUtil;->isBuildIn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Ltmsdkobf/bi;->i(I)V

    .line 798
    .end local v0           #height:I
    .end local v1           #width:I
    :goto_1
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    return-object v2

    .line 794
    .restart local v0       #height:I
    .restart local v1       #width:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 796
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_1
    iget-object v2, p0, Ltmsdkobf/li;->Co:Ltmsdkobf/bi;

    iget-object v3, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltmsdkobf/bi;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public gf()Z
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 139
    iget-object v10, p0, Ltmsdkobf/li;->Cq:Ljava/lang/Object;

    monitor-enter v10

    .line 140
    :try_start_0
    iget-boolean v11, p0, Ltmsdkobf/li;->Ct:Z

    if-nez v11, :cond_0

    .line 141
    const-string v9, "Chord"

    const-string v11, "couldFetchCloud() mIsCloudReady: false"

    invoke-static {v9, v11}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    monitor-exit v10

    .line 169
    :goto_0
    return v8

    .line 146
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 147
    .local v5, now:J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 148
    .local v0, curDate:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    iget-wide v11, p0, Ltmsdkobf/li;->Cr:J

    invoke-direct {v3, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 149
    .local v3, lastDate:Ljava/util/Date;
    invoke-static {v0, v3}, Ltmsdkobf/js;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v7

    .line 150
    .local v7, nowIsTheDayOfLastFetch:Z
    const-string v11, "Chord"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "couldFetchCloud() nowIsTheDayOfLastFetch: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    if-nez v7, :cond_2

    .line 152
    const-wide/16 v11, 0x0

    invoke-direct {p0, v11, v12}, Ltmsdkobf/li;->w(J)V

    .line 158
    :cond_1
    iget-wide v11, p0, Ltmsdkobf/li;->Cr:J

    sub-long v1, v5, v11

    .line 159
    .local v1, diff:J
    const-wide/32 v11, 0x124f80

    cmp-long v11, v1, v11

    if-lez v11, :cond_3

    move v4, v9

    .line 160
    .local v4, moreThanBlank:Z
    :goto_1
    const-string v11, "Chord"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "couldFetchCloud() moreThanBlank: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    if-nez v4, :cond_4

    .line 162
    const-string v9, "Chord"

    const-string v11, "couldFetchCloud() couldFetchCloud: false"

    invoke-static {v9, v11}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    monitor-exit v10

    goto :goto_0

    .line 170
    .end local v0           #curDate:Ljava/util/Date;
    .end local v1           #diff:J
    .end local v3           #lastDate:Ljava/util/Date;
    .end local v4           #moreThanBlank:Z
    .end local v5           #now:J
    .end local v7           #nowIsTheDayOfLastFetch:Z
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 153
    .restart local v0       #curDate:Ljava/util/Date;
    .restart local v3       #lastDate:Ljava/util/Date;
    .restart local v5       #now:J
    .restart local v7       #nowIsTheDayOfLastFetch:Z
    :cond_2
    :try_start_1
    iget-wide v11, p0, Ltmsdkobf/li;->Cs:J

    const-wide/16 v13, 0x48

    cmp-long v11, v11, v13

    if-ltz v11, :cond_1

    .line 154
    const-string v9, "Chord"

    const-string v11, "couldFetchCloud() couldFetchCloud: false"

    invoke-static {v9, v11}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    monitor-exit v10

    goto :goto_0

    .restart local v1       #diff:J
    :cond_3
    move v4, v8

    .line 159
    goto :goto_1

    .line 166
    .restart local v4       #moreThanBlank:Z
    :cond_4
    invoke-direct {p0, v5, v6}, Ltmsdkobf/li;->v(J)V

    .line 167
    iget-wide v11, p0, Ltmsdkobf/li;->Cs:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-direct {p0, v11, v12}, Ltmsdkobf/li;->w(J)V

    .line 168
    const-string v8, "Chord"

    const-string v11, "couldFetchCloud() couldFetchCloud: true"

    invoke-static {v8, v11}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v9

    goto/16 :goto_0
.end method

.method public gg()Ltmsdkobf/av;
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Ltmsdkobf/li;->Cj:Ltmsdkobf/av;

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ltmsdkobf/av;

    invoke-direct {v0}, Ltmsdkobf/av;-><init>()V

    iput-object v0, p0, Ltmsdkobf/li;->Cj:Ltmsdkobf/av;

    .line 680
    iget-object v0, p0, Ltmsdkobf/li;->Cj:Ltmsdkobf/av;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ltmsdkobf/av;->w(I)V

    .line 682
    :cond_0
    iget-object v0, p0, Ltmsdkobf/li;->Cj:Ltmsdkobf/av;

    return-object v0
.end method

.method public gh()Ltmsdkobf/bj;
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Ltmsdkobf/bj;

    invoke-direct {v0}, Ltmsdkobf/bj;-><init>()V

    iput-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    .line 736
    iget-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    iget-object v1, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/bj;->q(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    iget-object v1, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/bj;->d(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    const-string v1, "lc"

    invoke-static {v1}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/bj;->Q(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    const-string v1, "softversion"

    invoke-static {v1}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/bj;->setVersion(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    const-string v1, "build"

    invoke-static {v1}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltmsdkobf/bj;->O(I)V

    .line 741
    iget-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    const-string v1, "product"

    invoke-static {v1}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltmsdkobf/bj;->P(I)V

    .line 745
    :goto_0
    iget-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    return-object v0

    .line 743
    :cond_0
    iget-object v0, p0, Ltmsdkobf/li;->Cl:Ltmsdkobf/bj;

    iget-object v1, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/bj;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized gl()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 886
    monitor-enter p0

    const/4 v0, -0x2

    .line 887
    .local v0, err:I
    :try_start_0
    sget-object v2, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Ltmsdkobf/li;->gk()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 889
    :cond_0
    invoke-direct {p0}, Ltmsdkobf/li;->gj()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    .line 899
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 894
    :cond_2
    :try_start_1
    iget-object v2, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v3, "imei"

    iget-object v4, p0, Ltmsdkobf/li;->mImei:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 895
    iget-object v2, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v3, "mac"

    iget-object v4, p0, Ltmsdkobf/li;->Ch:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 896
    iget-object v2, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v3, "guid"

    sget-object v4, Ltmsdkobf/li;->Cf:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 886
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method gm()Ltmsdkobf/aj;
    .locals 5

    .prologue
    .line 907
    iget-object v2, p0, Ltmsdkobf/li;->vQ:Ltmsdkobf/kf;

    const-string v3, "tid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, oldTipsId:Ljava/lang/String;
    const-string v2, "Chord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMainReqInfo() oldTipsId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 909
    iget-object v2, p0, Ltmsdkobf/li;->Cn:Ltmsdkobf/aj;

    if-nez v2, :cond_0

    .line 910
    new-instance v2, Ltmsdkobf/aj;

    invoke-direct {v2}, Ltmsdkobf/aj;-><init>()V

    iput-object v2, p0, Ltmsdkobf/li;->Cn:Ltmsdkobf/aj;

    .line 911
    iget-object v2, p0, Ltmsdkobf/li;->Cn:Ltmsdkobf/aj;

    invoke-virtual {v2, v0}, Ltmsdkobf/aj;->F(Ljava/lang/String;)V

    .line 912
    new-instance v1, Ltmsdkobf/cd;

    iget-object v2, p0, Ltmsdkobf/li;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltmsdkobf/cd;-><init>(Ljava/lang/String;)V

    .line 913
    .local v1, tipsReqInfo:Ltmsdkobf/cd;
    iget-object v2, p0, Ltmsdkobf/li;->Cn:Ltmsdkobf/aj;

    invoke-virtual {v2, v1}, Ltmsdkobf/aj;->a(Ltmsdkobf/cd;)V

    .line 918
    .end local v1           #tipsReqInfo:Ltmsdkobf/cd;
    :goto_0
    iget-object v2, p0, Ltmsdkobf/li;->Cn:Ltmsdkobf/aj;

    return-object v2

    .line 915
    :cond_0
    iget-object v2, p0, Ltmsdkobf/li;->Cn:Ltmsdkobf/aj;

    invoke-virtual {v2, v0}, Ltmsdkobf/aj;->F(Ljava/lang/String;)V

    goto :goto_0
.end method
