.class public Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;
.super Lcom/baidu/mapapi/ItemizedOverlay;
.source "MapItemizedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay$OnTapListenerIndex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/mapapi/ItemizedOverlay",
        "<",
        "Lcom/baidu/mapapi/OverlayItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyMapActivity"


# instance fields
.field private isActionMoved:Z

.field private mContext:Landroid/content/Context;

.field public mGeoPoint:Lcom/baidu/mapapi/GeoPoint;

.field public mOnTapListenerIndex:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay$OnTapListenerIndex;

.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreY:F

.field private mTouchSlop:I

.field private mX:I

.field private mY:I

.field private mYDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "context"
    .parameter "drawable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-static {p2}, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 28
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mGeoPoint:Lcom/baidu/mapapi/GeoPoint;

    .line 29
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mX:I

    .line 30
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mY:I

    .line 31
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->isActionMoved:Z

    .line 38
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mContext:Landroid/content/Context;

    .line 39
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOnTapListenerIndex:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay$OnTapListenerIndex;

    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mTouchSlop:I

    .line 41
    return-void
.end method


# virtual methods
.method public addOverlay(Lcom/baidu/mapapi/OverlayItem;)V
    .locals 4
    .parameter "overlayItem"

    .prologue
    .line 47
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    .local v0, bool:Z
    const-string v1, "MyMapActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addOverlay"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->populate()V

    .line 50
    return-void
.end method

.method protected createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 3
    .parameter "paramInt"

    .prologue
    .line 55
    const-string v0, "MyMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createItem"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V
    .locals 12
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 93
    iget-object v10, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mGeoPoint:Lcom/baidu/mapapi/GeoPoint;

    if-nez v10, :cond_0

    .line 111
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v10, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020055

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 98
    .local v6, localBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v9

    .line 99
    .local v9, localProjection:Lcom/baidu/mapapi/Projection;
    iget-object v10, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mGeoPoint:Lcom/baidu/mapapi/GeoPoint;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    .line 100
    .local v8, localPoint:Landroid/graphics/Point;
    iget v10, v8, Landroid/graphics/Point;->x:I

    iput v10, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mX:I

    .line 101
    iget v10, v8, Landroid/graphics/Point;->y:I

    iput v10, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mY:I

    .line 103
    iget v2, v8, Landroid/graphics/Point;->x:I

    .line 104
    .local v2, i:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v3, v10, 0x2

    .line 105
    .local v3, j:I
    sub-int v10, v2, v3

    int-to-float v0, v10

    .line 106
    .local v0, f1:F
    iget v4, v8, Landroid/graphics/Point;->y:I

    .line 107
    .local v4, k:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 108
    .local v5, l:I
    sub-int v10, v4, v5

    int-to-float v1, v10

    .line 109
    .local v1, f2:F
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 110
    .local v7, localPaint1:Landroid/graphics/Paint;
    invoke-virtual {p1, v6, v0, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getLocationXPixel()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mX:I

    return v0
.end method

.method public getLocationYPixel()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mY:I

    return v0
.end method

.method protected onTap(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 69
    const-string v1, "MyMapActivity"

    const-string v2, "onTap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOnTapListenerIndex:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay$OnTapListenerIndex;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    .line 73
    .local v0, localOverlayItem:Lcom/baidu/mapapi/OverlayItem;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOnTapListenerIndex:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay$OnTapListenerIndex;

    invoke-interface {v1, p1, v0}, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay$OnTapListenerIndex;->onTapEvent(ILcom/baidu/mapapi/OverlayItem;)V

    .line 75
    .end local v0           #localOverlayItem:Lcom/baidu/mapapi/OverlayItem;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/baidu/mapapi/MapView;)Z
    .locals 5
    .parameter "event"
    .parameter "mapView"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 118
    .local v0, actionType:I
    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/ItemizedOverlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/baidu/mapapi/MapView;)Z

    move-result v3

    return v3

    .line 120
    :pswitch_0
    iget-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->isActionMoved:Z

    if-nez v3, :cond_0

    .line 121
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v2

    .line 122
    .local v2, proj:Lcom/baidu/mapapi/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/baidu/mapapi/Projection;->fromPixels(II)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v3

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mGeoPoint:Lcom/baidu/mapapi/GeoPoint;

    .line 124
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mContext:Landroid/content/Context;

    check-cast v3, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mMKSearch:Lcom/baidu/mapapi/MKSearch;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mGeoPoint:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/MKSearch;->reverseGeocode(Lcom/baidu/mapapi/GeoPoint;)I

    goto :goto_0

    .line 129
    .end local v2           #proj:Lcom/baidu/mapapi/Projection;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 130
    .local v1, curY:F
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mYDistance:F

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mPreY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mYDistance:F

    .line 131
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mPreY:F

    .line 132
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mYDistance:F

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 133
    const/4 v3, 0x1

    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->isActionMoved:Z

    goto :goto_0

    .line 137
    .end local v1           #curY:F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mPreY:F

    .line 138
    const/4 v3, 0x0

    iput v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mYDistance:F

    .line 139
    const/4 v3, 0x0

    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->isActionMoved:Z

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerOnTapListenerIndex(Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay$OnTapListenerIndex;)V
    .locals 2
    .parameter "paramOnTapListenerIndex"

    .prologue
    .line 80
    const-string v0, "MyMapActivity"

    const-string v1, "registerOnTapListenerIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOnTapListenerIndex:Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay$OnTapListenerIndex;

    .line 82
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 62
    const-string v0, "MyMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MapItemizedOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
