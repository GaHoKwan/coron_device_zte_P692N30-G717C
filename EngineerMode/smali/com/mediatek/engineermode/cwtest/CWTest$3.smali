.class Lcom/mediatek/engineermode/cwtest/CWTest$3;
.super Ljava/lang/Object;
.source "CWTest.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cwtest/CWTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cwtest/CWTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$3;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isLocationFixed(Ljava/lang/Iterable;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, list:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    const/4 v0, 0x0

    .line 392
    .local v0, fixed:Z
    monitor-enter p0

    .line 393
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    .line 394
    .local v2, sate:Landroid/location/GpsSatellite;
    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 399
    .end local v2           #sate:Landroid/location/GpsSatellite;
    :cond_1
    monitor-exit p0

    .line 400
    return v0

    .line 399
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private onFirstFix(I)V
    .locals 3
    .parameter "ttff"

    .prologue
    .line 383
    const-string v0, "CWTest/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter onFirstFix function: ttff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method private onPreFix(I)V
    .locals 3
    .parameter "ttff"

    .prologue
    .line 387
    const-string v0, "CWTest/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter onPreFix function: ttff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 4
    .parameter "event"

    .prologue
    .line 404
    const-string v1, "CWTest/Activity"

    const-string v2, "Enter onGpsStatusChanged function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$3;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$000(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 406
    .local v0, status:Landroid/location/GpsStatus;
    packed-switch p1, :pswitch_data_0

    .line 429
    :goto_0
    const-string v1, "CWTest/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGpsStatusChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cwtest/CWTest$3;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mStatus:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$200(Lcom/mediatek/engineermode/cwtest/CWTest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 408
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$3;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$100(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 409
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$3;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    const-string v2, "gps status started"

    #setter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mStatus:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$202(Lcom/mediatek/engineermode/cwtest/CWTest;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 412
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$3;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    const-string v2, "gps status stopped"

    #setter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mStatus:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$202(Lcom/mediatek/engineermode/cwtest/CWTest;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 415
    :pswitch_2
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/cwtest/CWTest$3;->onFirstFix(I)V

    .line 416
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$3;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    const-string v2, "gps status first fix"

    #setter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mStatus:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$202(Lcom/mediatek/engineermode/cwtest/CWTest;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 419
    :pswitch_3
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/cwtest/CWTest$3;->isLocationFixed(Ljava/lang/Iterable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    const-string v1, "CWTest/Activity"

    const-string v2, "gps status unavailable"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    :cond_0
    const-string v1, "CWTest/Activity"

    const-string v2, "gps status available"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
