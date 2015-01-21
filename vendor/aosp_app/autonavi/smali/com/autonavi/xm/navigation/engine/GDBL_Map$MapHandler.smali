.class Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;
.super Landroid/os/Handler;


# instance fields
.field private mGMoveMap:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

.field private mScaleInLevel:I

.field private mScaleOutLevel:I

.field private mScaleToLevel:I

.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Map;Landroid/os/Looper;)V
    .locals 3

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleInLevel:I

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleOutLevel:I

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleToLevel:I

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_DRAG:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMoveMap;-><init>(Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;Lcom/autonavi/xm/navigation/server/GCoord;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mGMoveMap:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleOutLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleOutLevel:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapViewZoomOutEx(II)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleInLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapObjectInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->eScaleLevel:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_25_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleInLevel:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleInLevel:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)I

    move-result v0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleInLevel:I

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapViewZoomInEx(II)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleInLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleInLevel:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapViewZoomInEx(II)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_3
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleOutLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapObjectInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->eScaleLevel:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleOutLevel:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleOutLevel:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)I

    move-result v0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleOutLevel:I

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapViewZoomOutEx(II)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleToLevel:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleToLevel:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    iget v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleToLevel:I

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_ZoomTo_Inner(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;
    invoke-static {v1, v0, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Map;Lcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)I

    move-result v1

    const/4 v2, 0x1

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_NORTH:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_SetMapViewMode(IILcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;->GDBL_OnViewSwitchEnd()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v5, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v6, 0x2

    if-gt v2, v6, :cond_a

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->removeMessages(I)V

    if-eqz v5, :cond_5

    if-lez v5, :cond_8

    const/4 v0, 0x1

    :goto_1
    move v3, v0

    :cond_5
    if-eqz v4, :cond_e

    if-lez v4, :cond_9

    const/4 v0, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const-wide/high16 v1, 0x4054

    mul-int v6, v5, v5

    mul-int v7, v4, v4

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double v6, v1, v6

    int-to-double v1, v5

    mul-double/2addr v1, v6

    double-to-int v2, v1

    int-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v1, v6

    move v6, v4

    move v4, v0

    move v0, v5

    move v5, v3

    move v3, v2

    move v2, v1

    :goto_3
    if-nez v0, :cond_6

    if-eqz v6, :cond_0

    :cond_6
    mul-int v1, v5, v0

    div-int/lit8 v1, v1, 0x64

    mul-int v7, v4, v6

    div-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mGMoveMap:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    sget-object v9, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_DRAG:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iput-object v9, v8, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iget-object v8, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mGMoveMap:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    iget-object v8, v8, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    neg-int v1, v1

    iput v1, v8, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mGMoveMap:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    neg-int v7, v7

    iput v7, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    iget-object v7, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mGMoveMap:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    invoke-virtual {v1, v7}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_MoveMap(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    sub-int/2addr v0, v3

    if-lez v0, :cond_b

    move v1, v0

    :goto_4
    sub-int v0, v6, v2

    if-lez v0, :cond_c

    :goto_5
    if-gtz v1, :cond_7

    if-lez v0, :cond_0

    :cond_7
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v1, v9, v10

    const/4 v1, 0x1

    aput v0, v9, v1

    const/4 v0, 0x2

    aput v5, v9, v0

    const/4 v0, 0x3

    aput v4, v9, v0

    const/4 v0, 0x4

    aput v3, v9, v0

    const/4 v0, 0x5

    aput v2, v9, v0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_8
    const/4 v0, -0x1

    goto :goto_1

    :cond_9
    const/4 v0, -0x1

    goto :goto_2

    :cond_a
    const/4 v1, 0x2

    aget v3, v0, v1

    const/4 v1, 0x3

    aget v2, v0, v1

    const/4 v1, 0x4

    aget v1, v0, v1

    const/4 v6, 0x5

    aget v0, v0, v6

    move v6, v4

    move v4, v2

    move v2, v0

    move v0, v5

    move v5, v3

    move v3, v1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :pswitch_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleToLevel:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleOutLevel:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->mScaleInLevel:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;->GDBL_OnZoomEnd()V

    :cond_d
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    const/4 v1, 0x0

    #setter for: Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->access$302(Lcom/autonavi/xm/navigation/engine/GDBL_Map;Z)Z

    :pswitch_6
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView_Inner()Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
