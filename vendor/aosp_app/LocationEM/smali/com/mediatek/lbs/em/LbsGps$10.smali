.class Lcom/mediatek/lbs/em/LbsGps$10;
.super Ljava/lang/Object;
.source "LbsGps.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsGps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$10;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 8
    .parameter "event"

    .prologue
    .line 313
    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    .line 331
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$10;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const/4 v6, 0x0

    #setter for: Lcom/mediatek/lbs/em/LbsGps;->mSatNum:I
    invoke-static {v5, v6}, Lcom/mediatek/lbs/em/LbsGps;->access$1902(Lcom/mediatek/lbs/em/LbsGps;I)I

    .line 318
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 319
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$10;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsGps;->access$2000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/location/LocationManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v3

    .line 320
    .local v3, status:Landroid/location/GpsStatus;
    invoke-virtual {v3}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    .line 322
    .local v0, gpsSat:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    .line 323
    .local v2, sat:Landroid/location/GpsSatellite;
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$10;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsGps;->access$1908(Lcom/mediatek/lbs/em/LbsGps;)I

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PRN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SNR="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AZI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ELE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 328
    .end local v2           #sat:Landroid/location/GpsSatellite;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$10;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsGps;->access$2108(Lcom/mediatek/lbs/em/LbsGps;)I

    .line 329
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$10;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mTextViewSatellite:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsGps;->access$2200(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Satellite Count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsGps$10;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mSatCount:I
    invoke-static {v7}, Lcom/mediatek/lbs/em/LbsGps;->access$2100(Lcom/mediatek/lbs/em/LbsGps;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Satellite Num="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsGps$10;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mSatNum:I
    invoke-static {v7}, Lcom/mediatek/lbs/em/LbsGps;->access$1900(Lcom/mediatek/lbs/em/LbsGps;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
