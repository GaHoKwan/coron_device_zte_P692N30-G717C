.class Lcom/mediatek/lbs/em/LbsView$2;
.super Ljava/lang/Object;
.source "LbsView.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsView;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsView;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsView$2;->this$0:Lcom/mediatek/lbs/em/LbsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 3
    .parameter "event"

    .prologue
    .line 50
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsView$2;->this$0:Lcom/mediatek/lbs/em/LbsView;

    #getter for: Lcom/mediatek/lbs/em/LbsView;->mViewGps:Lcom/mediatek/lbs/em/ViewGps;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsView;->access$000(Lcom/mediatek/lbs/em/LbsView;)Lcom/mediatek/lbs/em/ViewGps;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsView$2;->this$0:Lcom/mediatek/lbs/em/LbsView;

    #getter for: Lcom/mediatek/lbs/em/LbsView;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsView;->access$100(Lcom/mediatek/lbs/em/LbsView;)Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/lbs/em/ViewGps;->setGpsStatus(Landroid/location/GpsStatus;)V

    goto :goto_0
.end method
