.class Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->onLocationUpdate(Ltmsdkobf/gr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;


# direct methods
.method constructor <init>(Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    const-string v0, "AntitheftLocator"

    const-string v1, "accurateLocateTimeout()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v0, v0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->g(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdkobf/gr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v0, v0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->g(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdkobf/gr;

    move-result-object v0

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v1, v1, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v1}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->h(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdkobf/gr;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v0, v0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->c(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;

    move-result-object v0

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v1, v1, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v1}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->g(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdkobf/gr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;->onLocationUpdate(Ltmsdkobf/gr;Z)V

    .line 147
    const-string v0, "AntitheftLocator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout report MostAccuracyResult Longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v2, v2, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->g(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdkobf/gr;

    move-result-object v2

    iget-wide v2, v2, Ltmsdkobf/gr;->nU:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v2, v2, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->g(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdkobf/gr;

    move-result-object v2

    iget-wide v2, v2, Ltmsdkobf/gr;->nT:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v2, v2, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->g(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdkobf/gr;

    move-result-object v2

    iget-wide v2, v2, Ltmsdkobf/gr;->nW:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v0, v0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->b(Ltmsdk/bg/module/antitheft/AntitheftLocator;)V

    .line 150
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener$1;->uc:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    iget-object v0, v0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;->ub:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->c(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;

    move-result-object v0

    invoke-interface {v0}, Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;->accurateLocateTimeout()V

    .line 152
    return-void
.end method
