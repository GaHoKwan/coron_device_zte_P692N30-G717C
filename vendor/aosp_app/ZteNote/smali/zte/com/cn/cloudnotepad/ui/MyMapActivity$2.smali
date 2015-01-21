.class Lzte/com/cn/cloudnotepad/ui/MyMapActivity$2;
.super Ljava/lang/Object;
.source "MyMapActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/MyMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .parameter "location"

    .prologue
    const-wide v6, 0x412e848000000000L

    .line 230
    const-string v3, "MyMapActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onLocationChanged arg0="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v0, v3

    .line 233
    .local v0, lat:I
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v1, v3

    .line 234
    .local v1, lng:I
    new-instance v2, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v2, v0, v1}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 235
    .local v2, point:Lcom/baidu/mapapi/GeoPoint;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)Lcom/baidu/mapapi/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    .line 236
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMKSearch:Lcom/baidu/mapapi/MKSearch;

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/MKSearch;->reverseGeocode(Lcom/baidu/mapapi/GeoPoint;)I

    .line 238
    .end local v0           #lat:I
    .end local v1           #lng:I
    .end local v2           #point:Lcom/baidu/mapapi/GeoPoint;
    :cond_0
    return-void
.end method
