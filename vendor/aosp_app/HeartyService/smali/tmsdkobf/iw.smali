.class public final Ltmsdkobf/iw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/bg/module/qscanner/ICertCheckerV2;


# instance fields
.field private mContext:Landroid/content/Context;

.field private sl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bq;",
            ">;"
        }
    .end annotation
.end field

.field private sm:Ljava/lang/String;

.field private sn:I

.field private so:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bq;",
            ">;"
        }
    .end annotation
.end field

.field private sp:Ljava/lang/String;

.field private sq:I

.field private sr:Ltmsdk/common/module/applist/AppListManager;

.field private final ss:J

.field private final st:Ljava/lang/String;

.field private su:Ltmsdk/common/module/update/IUpdateObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide v2, 0x300000000L

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v2, p0, Ltmsdkobf/iw;->ss:J

    .line 41
    const-string v0, "action_cert_list_update"

    iput-object v0, p0, Ltmsdkobf/iw;->st:Ljava/lang/String;

    .line 43
    new-instance v0, Ltmsdkobf/iw$1;

    invoke-direct {v0, p0}, Ltmsdkobf/iw$1;-><init>(Ltmsdkobf/iw;)V

    iput-object v0, p0, Ltmsdkobf/iw;->su:Ltmsdk/common/module/update/IUpdateObserver;

    .line 69
    iput-object p1, p0, Ltmsdkobf/iw;->mContext:Landroid/content/Context;

    .line 70
    const-class v0, Ltmsdk/common/module/applist/AppListManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/applist/AppListManager;

    iput-object v0, p0, Ltmsdkobf/iw;->sr:Ltmsdk/common/module/applist/AppListManager;

    .line 71
    const-class v0, Ltmsdk/common/module/update/UpdateManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/update/UpdateManager;

    iget-object v1, p0, Ltmsdkobf/iw;->su:Ltmsdk/common/module/update/IUpdateObserver;

    invoke-virtual {v0, v2, v3, v1}, Ltmsdk/common/module/update/UpdateManager;->addObserver(JLtmsdk/common/module/update/IUpdateObserver;)V

    .line 72
    invoke-direct {p0}, Ltmsdkobf/iw;->dF()V

    .line 73
    invoke-direct {p0}, Ltmsdkobf/iw;->dG()V

    .line 74
    return-void
.end method

.method static synthetic a(Ltmsdkobf/iw;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Ltmsdkobf/iw;->dF()V

    return-void
.end method

.method static synthetic b(Ltmsdkobf/iw;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Ltmsdkobf/iw;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Ltmsdkobf/iw;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Ltmsdkobf/iw;->dG()V

    return-void
.end method

.method private dF()V
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Ltmsdkobf/iw;->sr:Ltmsdk/common/module/applist/AppListManager;

    sget-object v2, Ltmsdkobf/bw;->hX:Ltmsdkobf/bw;

    invoke-virtual {v2}, Ltmsdkobf/bw;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ltmsdk/common/module/update/UpdateConfig;->PAY_LIST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ltmsdk/common/module/applist/AppListManager;->loadAppList(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/bu;

    move-result-object v0

    .line 81
    .local v0, softlist:Ltmsdkobf/bu;
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, v0, Ltmsdkobf/bu;->hf:Ljava/util/ArrayList;

    iput-object v1, p0, Ltmsdkobf/iw;->sl:Ljava/util/List;

    .line 83
    iget-object v1, v0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, v0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    iget-object v1, v1, Ltmsdkobf/bv;->hj:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/iw;->sm:Ljava/lang/String;

    .line 85
    iget-object v1, v0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    iget v1, v1, Ltmsdkobf/bv;->hk:I

    iput v1, p0, Ltmsdkobf/iw;->sn:I

    .line 88
    :cond_0
    return-void
.end method

.method private dG()V
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Ltmsdkobf/iw;->sr:Ltmsdk/common/module/applist/AppListManager;

    sget-object v2, Ltmsdkobf/bw;->hY:Ltmsdkobf/bw;

    invoke-virtual {v2}, Ltmsdkobf/bw;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ltmsdk/common/module/update/UpdateConfig;->STEAL_ACCOUNT_LIST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ltmsdk/common/module/applist/AppListManager;->loadAppList(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/bu;

    move-result-object v0

    .line 95
    .local v0, softlist:Ltmsdkobf/bu;
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, v0, Ltmsdkobf/bu;->hf:Ljava/util/ArrayList;

    iput-object v1, p0, Ltmsdkobf/iw;->so:Ljava/util/List;

    .line 97
    iget-object v1, v0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, v0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    iget-object v1, v1, Ltmsdkobf/bv;->hj:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/iw;->sp:Ljava/lang/String;

    .line 99
    iget-object v1, v0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    iget v1, v1, Ltmsdkobf/bv;->hk:I

    iput v1, p0, Ltmsdkobf/iw;->sq:I

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ltmsdk/common/module/qscanner/QScanResultEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 6
    .parameter "result"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    .line 125
    iget v2, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Ltmsdkobf/iw;->sl:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Ltmsdkobf/iw;->sl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/bq;

    .line 127
    .local v0, element:Ltmsdkobf/bq;
    iget-object v2, v0, Ltmsdkobf/bq;->fK:Ljava/lang/String;

    iget-object v3, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iput-boolean v4, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInPayList:Z

    .line 130
    iget v2, v0, Ltmsdkobf/bq;->fM:I

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    iget-object v3, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, v0, Ltmsdkobf/bq;->fM:I

    if-nez v2, :cond_3

    iget-object v2, v0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    iget-object v3, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    :cond_2
    iput v5, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 133
    iget-object v2, p0, Ltmsdkobf/iw;->sm:Ljava/lang/String;

    iput-object v2, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 134
    iget v2, p0, Ltmsdkobf/iw;->sn:I

    iput v2, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 135
    iput v4, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 143
    .end local v0           #element:Ltmsdkobf/bq;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget v2, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    if-eq v2, v4, :cond_7

    iget v2, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    if-eq v2, v5, :cond_7

    iget-object v2, p0, Ltmsdkobf/iw;->so:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 145
    iget-object v2, p0, Ltmsdkobf/iw;->so:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/bq;

    .line 146
    .restart local v0       #element:Ltmsdkobf/bq;
    iget-object v2, v0, Ltmsdkobf/bq;->fK:Ljava/lang/String;

    iget-object v3, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    iput-boolean v4, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInStealAccountList:Z

    .line 149
    iget v2, v0, Ltmsdkobf/bq;->fM:I

    if-ne v2, v4, :cond_5

    iget-object v2, v0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    iget-object v3, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget v2, v0, Ltmsdkobf/bq;->fM:I

    if-nez v2, :cond_7

    iget-object v2, v0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    iget-object v3, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 151
    :cond_6
    const/16 v2, 0xa

    iput v2, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 152
    iget-object v2, p0, Ltmsdkobf/iw;->sp:Ljava/lang/String;

    iput-object v2, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 153
    iget v2, p0, Ltmsdkobf/iw;->sq:I

    iput v2, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 154
    iput v4, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 161
    .end local v0           #element:Ltmsdkobf/bq;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_7
    return-object p1
.end method

.method public checkCert(Ljava/lang/String;)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 5
    .parameter "pkgname"

    .prologue
    .line 106
    new-instance v1, Ltmsdk/common/module/qscanner/QScanResultEntity;

    invoke-direct {v1}, Ltmsdk/common/module/qscanner/QScanResultEntity;-><init>()V

    .line 107
    .local v1, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    iput-object p1, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    .line 108
    const/4 v3, 0x0

    iput v3, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 109
    const-class v3, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/software/SoftwareManager;

    const/16 v4, 0x10

    invoke-virtual {v3, p1, v4}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    .line 110
    .local v0, app:Ltmsdk/common/module/software/AppEntity;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 115
    .end local v1           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .local v2, result:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 113
    .end local v2           #result:Ljava/lang/Object;
    .restart local v1       #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :cond_0
    invoke-virtual {v0}, Ltmsdk/common/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, v1}, Ltmsdkobf/iw;->a(Ltmsdk/common/module/qscanner/QScanResultEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v1

    move-object v2, v1

    .line 115
    .restart local v2       #result:Ljava/lang/Object;
    goto :goto_0
.end method
