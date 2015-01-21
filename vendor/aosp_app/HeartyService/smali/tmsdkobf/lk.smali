.class public final Ltmsdkobf/lk;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private CA:Ltmsdkobf/ll;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/ch;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 416
    .local p2, checkRst:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/ch;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/ll;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/r;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/s;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/cb;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, confInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/r;>;"
    .local p2, confSrcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/s;>;"
    .local p3, tipinfo:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/cb;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdkobf/ll;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;Ljava/util/ArrayList;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/br;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/d;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, softFeatures:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/br;>;"
    .local p2, analyseInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/d;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ltmsdkobf/ll;->a(Ljava/util/List;Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/at;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, rsptemp:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/at;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/ll;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bt;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bx;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ak;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, softKeys:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bt;>;"
    .local p2, serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bx;>;"
    .local p3, softInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ak;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Ltmsdkobf/ll;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bn;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, cmdInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bn;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1}, Ltmsdkobf/ll;->a(Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public a(Ltmsdkobf/ai;Ltmsdkobf/ah;)I
    .locals 1
    .parameter "linceneninfo"
    .parameter "result"

    .prologue
    .line 461
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/ll;->a(Ltmsdkobf/ai;Ltmsdkobf/ah;)I

    move-result v0

    return v0
.end method

.method public a(Ltmsdkobf/az;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter "queryParam"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/az;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bb;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, queryResultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bb;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/ll;->a(Ltmsdkobf/az;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public a(Ltmsdkobf/bd;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter "smsInfo"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/bd;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/be;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bc;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, trafficTemplateRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/be;>;"
    .local p3, stRetInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bc;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdkobf/ll;->a(Ltmsdkobf/bd;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public a(Ltmsdkobf/ck;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 1
    .parameter "clientInfo"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/ck;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/cn;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/cm;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/cn;>;"
    .local p3, virusInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/cm;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdkobf/ll;->a(Ltmsdkobf/ck;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public a(Ltmsdkobf/g;Ltmsdkobf/i;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter "browserClient"
    .parameter "browserUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/g;",
            "Ltmsdkobf/i;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/h;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 448
    .local p3, resultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/h;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdkobf/ll;->a(Ltmsdkobf/g;Ltmsdkobf/i;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public a(Ltmsdkobf/u;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter "deviceInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/u;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/ag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, guidInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/ag;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/ll;->b(Ltmsdkobf/u;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public b(Ltmsdkobf/cp;)I
    .locals 1
    .parameter "stCtrlRst"

    .prologue
    .line 491
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1}, Ltmsdkobf/ll;->b(Ltmsdkobf/cp;)I

    move-result v0

    return v0
.end method

.method public getTagPhonenum(Ltmsdkobf/aw;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter "queryReq"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/aw;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bg;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, result:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bg;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/ll;->getTagPhonenum(Ltmsdkobf/aw;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public gf()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0}, Ltmsdkobf/ll;->gf()Z

    move-result v0

    return v0
.end method

.method public gn()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0}, Ltmsdkobf/ll;->gn()I

    move-result v0

    return v0
.end method

.method public go()Ltmsdkobf/lf;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0}, Ltmsdkobf/ll;->go()Ltmsdkobf/lf;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0}, Ltmsdkobf/ll;->gp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    new-instance v0, Ltmsdkobf/ll;

    invoke-direct {v0}, Ltmsdkobf/ll;-><init>()V

    iput-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    .line 64
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1}, Ltmsdkobf/ll;->onCreate(Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {p0, v0}, Ltmsdkobf/lk;->a(Ltmsdk/common/BaseManager;)V

    .line 66
    return-void
.end method

.method public p(Ljava/util/List;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, smsReports:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bo;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1}, Ltmsdkobf/ll;->p(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public q(Ljava/util/List;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bz;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, telReports:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bz;>;"
    iget-object v0, p0, Ltmsdkobf/lk;->CA:Ltmsdkobf/ll;

    invoke-virtual {v0, p1}, Ltmsdkobf/ll;->q(Ljava/util/List;)I

    move-result v0

    return v0
.end method
