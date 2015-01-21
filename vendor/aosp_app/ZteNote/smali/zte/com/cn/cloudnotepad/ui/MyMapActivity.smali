.class public Lzte/com/cn/cloudnotepad/ui/MyMapActivity;
.super Lcom/baidu/mapapi/MapActivity;
.source "MyMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;
    }
.end annotation


# static fields
.field private static final STATE_EDIT:I = 0x0

.field private static final STATE_NEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MyMapActivity"


# instance fields
.field private addressString:Ljava/lang/String;

.field private latitude:I

.field private longitude:I

.field private mActionBarListener:Landroid/view/View$OnClickListener;

.field private mBMapMan:Lcom/baidu/mapapi/BMapManager;

.field private mLocationAddress:Landroid/widget/TextView;

.field private mLocationListener:Lcom/baidu/mapapi/LocationListener;

.field private mLocationManager:Lcom/baidu/mapapi/MKLocationManager;

.field public mMKSearch:Lcom/baidu/mapapi/MKSearch;

.field private mMapController:Lcom/baidu/mapapi/MapController;

.field private mMapItemizedOverlay:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;

.field private mMapView:Lcom/baidu/mapapi/MapView;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/baidu/mapapi/MapActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    .line 162
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$1;-><init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$2;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$2;-><init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationListener:Lcom/baidu/mapapi/LocationListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->onActionBarItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)Lcom/baidu/mapapi/MapController;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    return-object v0
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->addressString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->addressString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationAddress:Landroid/widget/TextView;

    return-object v0
.end method

.method private getCurrentPoint()Lcom/baidu/mapapi/GeoPoint;
    .locals 4

    .prologue
    .line 185
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationManager:Lcom/baidu/mapapi/MKLocationManager;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationListener:Lcom/baidu/mapapi/LocationListener;

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/MKLocationManager;->requestLocationUpdates(Lcom/baidu/mapapi/LocationListener;)V

    .line 186
    new-instance v1, Lcom/baidu/mapapi/MyLocationOverlay;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapapi/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V

    .line 187
    .local v1, mylocTest:Lcom/baidu/mapapi/MyLocationOverlay;
    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    .line 189
    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->getMyLocation()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    .line 190
    .local v0, geoPoint:Lcom/baidu/mapapi/GeoPoint;
    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    .end local v0           #geoPoint:Lcom/baidu/mapapi/GeoPoint;
    const v2, 0x2610df8

    const v3, 0x6f02f20

    invoke-direct {v0, v2, v3}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 193
    .restart local v0       #geoPoint:Lcom/baidu/mapapi/GeoPoint;
    :cond_0
    return-object v0
.end method

.method private initActionBar()V
    .locals 7

    .prologue
    .line 148
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    .line 149
    const/16 v5, 0x1e

    .line 148
    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 152
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030006

    .line 153
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 152
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, actionBarButtons:Landroid/view/View;
    const v3, 0x7f060025

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, cancelActionView:Landroid/view/View;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v3, 0x7f060026

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, saveActionView:Landroid/view/View;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method private initMapView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 82
    new-instance v0, Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    .line 83
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    const-string v1, "F194ADA412151A624EB2BE5483A54F12B92D5E89"

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$3;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$3;-><init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    .line 99
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-super {p0, v0}, Lcom/baidu/mapapi/MapActivity;->initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z

    .line 100
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MapView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    .line 101
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/MapView;->setBuiltInZoomControls(Z)V

    .line 102
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    .line 106
    const v0, 0x7f06006f

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationAddress:Landroid/widget/TextView;

    .line 107
    new-instance v0, Lcom/baidu/mapapi/MKSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/MKSearch;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMKSearch:Lcom/baidu/mapapi/MKSearch;

    .line 108
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMKSearch:Lcom/baidu/mapapi/MKSearch;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;-><init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/MKSearch;->init(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/MKSearchListener;)Z

    .line 110
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationManager:Lcom/baidu/mapapi/MKLocationManager;

    .line 111
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationManager:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/MKLocationManager;->enableProvider(I)Z

    .line 113
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->setOverlay()V

    .line 114
    return-void
.end method

.method private onActionBarItemSelected(I)Z
    .locals 1
    .parameter "itemId"

    .prologue
    .line 170
    packed-switch p1, :pswitch_data_0

    .line 179
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 172
    :pswitch_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->saveLocation()V

    .line 173
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->finish()V

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->finish()V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x7f060025
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveLocation()V
    .locals 9

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapItemizedOverlay:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->getLocationYPixel()I

    move-result v6

    invoke-static {p0, v6}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->takeMapShot(Landroid/app/Activity;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    const/4 v0, 0x0

    .line 211
    :cond_0
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->toByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 212
    .local v3, mapByte:[B
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapItemizedOverlay:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mGeoPoint:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v6}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v2

    .line 213
    .local v2, longitude:I
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapItemizedOverlay:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mGeoPoint:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v6}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v1

    .line 214
    .local v1, latitude:I
    const-string v6, "MyMapActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "addressString="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->addressString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",longitude="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",latitude="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v4, saveIntent:Landroid/content/Intent;
    const-string v6, "longitude"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v6, "latitude"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v6, "address"

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->addressString:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v6, "mapbyte"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 222
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v4}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 223
    .end local v1           #latitude:I
    .end local v2           #longitude:I
    .end local v3           #mapByte:[B
    .end local v4           #saveIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v5

    .line 206
    .local v5, tr:Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    .end local v5           #tr:Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 206
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    const/4 v0, 0x0

    .line 210
    :cond_2
    throw v6
.end method

.method private setOverlay()V
    .locals 9

    .prologue
    .line 117
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v5}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v4

    .line 118
    .local v4, maxZoom:I
    const-wide v5, 0x3feccccccccccccdL

    int-to-double v7, v4

    mul-double/2addr v5, v7

    double-to-int v1, v5

    .line 119
    .local v1, initalZoom:I
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    invoke-virtual {v5, v1}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 121
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mState:I

    if-nez v5, :cond_0

    .line 122
    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->latitude:I

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->longitude:I

    invoke-direct {v0, v5, v6}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 126
    .local v0, geoPoint:Lcom/baidu/mapapi/GeoPoint;
    :goto_0
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMKSearch:Lcom/baidu/mapapi/MKSearch;

    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/MKSearch;->reverseGeocode(Lcom/baidu/mapapi/GeoPoint;)I

    .line 127
    new-instance v5, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapItemizedOverlay:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;

    .line 128
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapItemizedOverlay:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;

    iput-object v0, v5, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mGeoPoint:Lcom/baidu/mapapi/GeoPoint;

    .line 129
    new-instance v3, Lcom/baidu/mapapi/OverlayItem;

    const-string v5, "Lat Lng"

    const-string v6, "Lat Lng"

    invoke-direct {v3, v0, v5, v6}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v3, localOverlayItem:Lcom/baidu/mapapi/OverlayItem;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapItemizedOverlay:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;

    invoke-virtual {v5, v3}, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->addOverlay(Lcom/baidu/mapapi/OverlayItem;)V

    .line 141
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v5}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, localList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapItemizedOverlay:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    .line 144
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    .line 145
    return-void

    .line 124
    .end local v0           #geoPoint:Lcom/baidu/mapapi/GeoPoint;
    .end local v2           #localList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    .end local v3           #localOverlayItem:Lcom/baidu/mapapi/OverlayItem;
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->getCurrentPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    .restart local v0       #geoPoint:Lcom/baidu/mapapi/GeoPoint;
    goto :goto_0
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/baidu/mapapi/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->initActionBar()V

    .line 67
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "zte.com.cn.cloudnotepad.action.EDIT_LOCATION"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mState:I

    .line 70
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->addressString:Ljava/lang/String;

    .line 71
    const-string v1, "longitude"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->longitude:I

    .line 72
    const-string v1, "latitude"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->latitude:I

    .line 78
    :goto_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->initMapView()V

    .line 79
    return-void

    .line 74
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mState:I

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->addressString:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationManager:Lcom/baidu/mapapi/MKLocationManager;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationManager:Lcom/baidu/mapapi/MKLocationManager;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationListener:Lcom/baidu/mapapi/LocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MKLocationManager;->removeUpdates(Lcom/baidu/mapapi/LocationListener;)V

    .line 337
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationManager:Lcom/baidu/mapapi/MKLocationManager;

    .line 340
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 342
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    .line 345
    :cond_1
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onDestroy()V

    .line 346
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    .line 329
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onPause()V

    .line 330
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    .line 319
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onResume()V

    .line 320
    return-void
.end method
