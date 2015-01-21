.class final Ltmsdk/common/module/optimize/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/optimize/ICpuHelper;


# instance fields
.field private zY:Ltmsdk/common/module/optimize/ICpuHelper;


# direct methods
.method constructor <init>(Ltmsdk/common/module/optimize/ICpuHelper;)V
    .locals 0
    .parameter "origHelper"

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    .line 245
    return-void
.end method


# virtual methods
.method public getAvailableCpus()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public getCpuInfoMaxFreq()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getCpuInfoMaxFreq()I

    move-result v0

    return v0
.end method

.method public getCpuInfoMinFreq()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getCpuInfoMinFreq()I

    move-result v0

    return v0
.end method

.method public getKernelMax()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getKernelMax()I

    move-result v0

    return v0
.end method

.method public getOnlineCpus()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getOnlineCpus()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScalingAvaliableFrequencies()[I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getScalingAvaliableFrequencies()[I

    move-result-object v0

    return-object v0
.end method

.method public getScalingAvaliableGovernors()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getScalingAvaliableGovernors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScalingCurFreq()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getScalingCurFreq()I

    move-result v0

    return v0
.end method

.method public getScalingGovernor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getScalingGovernor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScalingMaxFreq()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getScalingMaxFreq()I

    move-result v0

    return v0
.end method

.method public getScalingMinFreq()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Ltmsdk/common/module/optimize/d;->zY:Ltmsdk/common/module/optimize/ICpuHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/ICpuHelper;->getScalingMinFreq()I

    move-result v0

    return v0
.end method

.method public setScalingFreq(I)V
    .locals 0
    .parameter "freq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 270
    return-void
.end method

.method public setScalingGovernor(Ljava/lang/String;)V
    .locals 0
    .parameter "governor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 281
    return-void
.end method

.method public setScalingMaxFreq(I)V
    .locals 0
    .parameter "maxFreq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 296
    return-void
.end method

.method public setScalingMinFreq(I)V
    .locals 0
    .parameter "minFreq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 306
    return-void
.end method
