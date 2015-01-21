.class Lcom/mediatek/ygps/YgpsActivity$6;
.super Ljava/lang/Object;
.source "YgpsActivity.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ygps/YgpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ygps/YgpsActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

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
    .line 1845
    .local p1, list:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    const/4 v0, 0x0

    .line 1846
    .local v0, fixed:Z
    monitor-enter p0

    .line 1847
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

    .line 1848
    .local v2, sate:Landroid/location/GpsSatellite;
    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1849
    const/4 v0, 0x1

    .line 1853
    .end local v2           #sate:Landroid/location/GpsSatellite;
    :cond_1
    monitor-exit p0

    .line 1854
    return v0

    .line 1853
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private onFirstFix(I)V
    .locals 10
    .parameter "ttff"

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f050071

    .line 1805
    const-string v3, "YGPS/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter onFirstFix function: ttff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mCurrentTimes:I
    invoke-static {v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2800(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v0

    .line 1807
    .local v0, currentTimes:I
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1808
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v3, p1}, Lcom/mediatek/ygps/YgpsActivity;->access$2502(Lcom/mediatek/ygps/YgpsActivity;I)I

    .line 1809
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2500(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v3

    if-eq p1, v3, :cond_0

    .line 1810
    const-string v3, "YGPS/Activity"

    const-string v4, "ttff != mTTFF"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v3, p1}, Lcom/mediatek/ygps/YgpsActivity;->access$2502(Lcom/mediatek/ygps/YgpsActivity;I)I

    .line 1813
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z
    invoke-static {v3, v9}, Lcom/mediatek/ygps/YgpsActivity;->access$1902(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    .line 1814
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v5, 0x7f050066

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1819
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v4, 0x7f07000f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1820
    .local v2, tvTtff:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v4}, Lcom/mediatek/ygps/YgpsActivity;->access$2500(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z
    invoke-static {v3}, Lcom/mediatek/ygps/YgpsActivity;->access$3000(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1822
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1823
    .local v1, tvLastTtff:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v4}, Lcom/mediatek/ygps/YgpsActivity;->access$2500(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1826
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->meanTTFF(I)F
    invoke-static {v4, v0}, Lcom/mediatek/ygps/YgpsActivity;->access$3100(Lcom/mediatek/ygps/YgpsActivity;I)F

    move-result v4

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mMeanTTFF:F
    invoke-static {v3, v4}, Lcom/mediatek/ygps/YgpsActivity;->access$502(Lcom/mediatek/ygps/YgpsActivity;F)F

    .line 1827
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mMeanTTFF:F
    invoke-static {v5}, Lcom/mediatek/ygps/YgpsActivity;->access$500(Lcom/mediatek/ygps/YgpsActivity;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1830
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ttff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v5}, Lcom/mediatek/ygps/YgpsActivity;->access$2500(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/ygps/YgpsActivity;->access$2300(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)V

    .line 1832
    .end local v1           #tvLastTtff:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private onPreFix(I)V
    .locals 5
    .parameter "ttff"

    .prologue
    .line 1835
    const-string v2, "YGPS/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter onPreFix function: ttff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mCurrentTimes:I
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$2800(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v0

    .line 1837
    .local v0, currentTimes:I
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$2900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1838
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v2, p1}, Lcom/mediatek/ygps/YgpsActivity;->access$2502(Lcom/mediatek/ygps/YgpsActivity;I)I

    .line 1839
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z
    invoke-static {v2, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$1902(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    .line 1840
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1841
    .local v1, tvTtff:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2500(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v4, 0x7f050071

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1842
    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 5
    .parameter "event"

    .prologue
    .line 1858
    const-string v2, "YGPS/Activity"

    const-string v3, "Enter onGpsStatusChanged function"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 1860
    .local v0, status:Landroid/location/GpsStatus;
    packed-switch p1, :pswitch_data_0

    .line 1892
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1893
    .local v1, tvStatus:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$2700(Lcom/mediatek/ygps/YgpsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1894
    const-string v2, "YGPS/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGpsStatusChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/ygps/YgpsActivity;->access$2700(Lcom/mediatek/ygps/YgpsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    return-void

    .line 1862
    .end local v1           #tvStatus:Landroid/widget/TextView;
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v4, 0x7f05006b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2702(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1865
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v4, 0x7f05006c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2702(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1868
    :pswitch_2
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/ygps/YgpsActivity$6;->onFirstFix(I)V

    .line 1869
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v4, 0x7f05006d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2702(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1872
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mSateReportTimeOut:I
    invoke-static {v2, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$3302(Lcom/mediatek/ygps/YgpsActivity;I)I

    .line 1873
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ygps/YgpsActivity;->setSatelliteStatus(Ljava/lang/Iterable;)V

    .line 1874
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ygps/YgpsActivity$6;->isLocationFixed(Ljava/lang/Iterable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1875
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->clearLayout()V
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3400(Lcom/mediatek/ygps/YgpsActivity;)V

    .line 1876
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v4, 0x7f05006e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2702(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1885
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mIsShowVersion:Z
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$1300(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1886
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->showVersion()V
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$1500(Lcom/mediatek/ygps/YgpsActivity;)V

    goto/16 :goto_0

    .line 1878
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v4, 0x7f05006f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2702(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1879
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$6;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$1900(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1882
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/ygps/YgpsActivity$6;->onPreFix(I)V

    goto :goto_1

    .line 1860
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
