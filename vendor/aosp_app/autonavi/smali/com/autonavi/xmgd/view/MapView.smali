.class public Lcom/autonavi/xmgd/view/MapView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;


# static fields
.field public static final SELECT_POI_LAYOUT_ID:I = 0x5964d6

.field public static final SHOW_CROSS_LAYOUT_ID:I = 0x37df33e

.field public static final SHOW_POI_LAYOUT_ID:I = 0x596526


# instance fields
.field private mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

.field private mPoiLayerObject:Lcom/autonavi/xmgd/view/PoiLayerObject;

.field private mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

.field private mTipContentView:Landroid/view/View;

.field private mTipLeftButton:Landroid/widget/ImageButton;

.field private mTipMidButton:Landroid/widget/ImageButton;

.field private mTipRightButton:Landroid/widget/ImageButton;

.field private mUserLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/view/MapView$UserLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/MapView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private createContainer(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout;

    invoke-direct {v1, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/view/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getIndexFromUserLayoutList(I)I
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;

    iget v0, v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->objId:I

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private inflaterAndAddUserLayout(Landroid/content/Context;II)Landroid/view/View;
    .locals 4

    const/16 v3, 0x171e

    const/4 v2, -0x2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iget-object v2, p0, Lcom/autonavi/xmgd/view/MapView;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/autonavi/xmgd/view/MapView;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/xmgd/view/NaviSurfaceView;

    invoke-direct {v0, p1}, Lcom/autonavi/xmgd/view/NaviSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/view/NaviSurfaceView;->setSurfaceViewListener(Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/autonavi/xmgd/view/MapView;->addView(Landroid/view/View;II)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/MapView;->createContainer(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/MapView;->restoreUserLayout(Landroid/content/Context;)V

    new-instance v0, Lcom/autonavi/xmgd/view/PoiLayerObject;

    invoke-direct {v0}, Lcom/autonavi/xmgd/view/PoiLayerObject;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mPoiLayerObject:Lcom/autonavi/xmgd/view/PoiLayerObject;

    return-void
.end method

.method private restoreUserLayout(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;

    iget v3, v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->resId:I

    iget v0, v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->objId:I

    invoke-direct {p0, p1, v3, v0}, Lcom/autonavi/xmgd/view/MapView;->inflaterAndAddUserLayout(Landroid/content/Context;II)Landroid/view/View;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final restoreUserLayoutList(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "MapView.UserLayoutListSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Lcom/autonavi/xmgd/view/MapView$UserLayout;

    invoke-direct {v2}, Lcom/autonavi/xmgd/view/MapView$UserLayout;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MapView.UserLayoutList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/MapView$UserLayout;->setIntArray([I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/view/MapView;->restoreUserLayout(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private final saveUserLayoutList(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v0, "MapView.UserLayoutListSize"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapView.UserLayoutList"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/MapView$UserLayout;->getIntArray()[I

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAllUserLayoutCoordinate()V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;

    iget v3, v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->objId:I

    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/view/MapView;->getUserLayout(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lon:I

    iget v0, v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lat:I

    invoke-direct {p0, v3, v4, v0}, Lcom/autonavi/xmgd/view/MapView;->updateOneUserLayoutCoordinate(Landroid/view/View;II)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateOneUserLayoutCoordinate(Landroid/view/View;II)V
    .locals 8

    const/16 v4, 0x171e

    const/4 v1, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    new-array v0, v1, [Lcom/autonavi/xm/navigation/server/GCoord;

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/GCoord;

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v2, p2, p3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    aput-object v2, v1, v6

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_GEO_TO_SCR:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    invoke-virtual {v2, v3, v0, v1}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v1, v0, v6

    if-eqz v1, :cond_0

    aget-object v1, v0, v6

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-ltz v1, :cond_0

    aget-object v1, v0, v6

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-gez v1, :cond_1

    :cond_0
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v7, v7, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_1
    aget-object v1, v0, v6

    iget v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    int-to-float v2, v2

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getStatusBarHeight()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    aget-object v3, v0, v6

    iget v4, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    shr-int/lit8 v5, v1, 0x1

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aget-object v3, v0, v6

    iget v4, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    sub-int v2, v4, v2

    iput v2, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    aget-object v3, v0, v6

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aget-object v0, v0, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-direct {v2, v1, v7, v3, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public OnDrawMapViewEnd()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/NaviSurfaceView;->OnDrawMapViewEnd()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MapView;->invalidate()V

    return-void
.end method

.method public OnDrawMapViewStart()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/NaviSurfaceView;->OnDrawMapViewStart()V

    return-void
.end method

.method public addPoiLayer(Ljava/util/ArrayList;[ILandroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;[I",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mPoiLayerObject:Lcom/autonavi/xmgd/view/PoiLayerObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/xmgd/view/PoiLayerObject;->addPoiLayer(Ljava/util/ArrayList;[ILandroid/graphics/Rect;)V

    return-void
.end method

.method public addPoiLayer(Ljava/util/ArrayList;[Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;[",
            "Ljava/lang/Object;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mPoiLayerObject:Lcom/autonavi/xmgd/view/PoiLayerObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/xmgd/view/PoiLayerObject;->addPoiLayer(Ljava/util/ArrayList;[Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public addUserLayout(Landroid/content/Context;IIIII)Landroid/view/View;
    .locals 11

    if-lez p2, :cond_3

    if-lez p5, :cond_3

    const/4 v2, 0x0

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/view/MapView;->getIndexFromUserLayoutList(I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    new-instance v2, Lcom/autonavi/xmgd/view/MapView$UserLayout;

    move/from16 v0, p5

    invoke-direct {v2, p2, p3, p4, v0}, Lcom/autonavi/xmgd/view/MapView$UserLayout;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p5

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/MapView;->inflaterAndAddUserLayout(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v10

    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_5

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f80

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x396

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v1, v10

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/view/MapView$UserLayout;

    iget v3, v1, Lcom/autonavi/xmgd/view/MapView$UserLayout;->resId:I

    if-eq v3, p2, :cond_2

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    const-string v3, "\u8be5id\u5df2\u88ab\u53e6\u5916\u7684\u7528\u6237\u89c6\u56fe\u5360\u7528"

    invoke-virtual {v1, v3}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget v1, v1, Lcom/autonavi/xmgd/view/MapView$UserLayout;->objId:I

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/view/MapView;->getUserLayout(I)Landroid/view/View;

    move-result-object v1

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    const-string v3, "\u5df2\u7ecf\u5b58\u5728\u6b64\u7528\u6237\u89c6\u56fe"

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_0

    :cond_5
    move-object v1, v10

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/MapView;->updateAllUserLayoutCoordinate()V

    return-void
.end method

.method public getElementsToShow()[Lcom/autonavi/xm/navigation/server/map/GCustomElement;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mPoiLayerObject:Lcom/autonavi/xmgd/view/PoiLayerObject;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/PoiLayerObject;->getElementsToShow()[Lcom/autonavi/xm/navigation/server/map/GCustomElement;

    move-result-object v0

    return-object v0
.end method

.method public getLastScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/NaviSurfaceView;->getLastScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTouchPoi(II)Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mPoiLayerObject:Lcom/autonavi/xmgd/view/PoiLayerObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mPoiLayerObject:Lcom/autonavi/xmgd/view/PoiLayerObject;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/view/PoiLayerObject;->getTouchPoi(II)Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserLayout(I)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MapView;->getChildCount()I

    move-result v3

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/autonavi/xmgd/view/MapView;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    if-ne v1, v4, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MapView;->removeAllPoiLayer()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MapView;->removeAllViews()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MapView;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/MapView;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/MapView$IMapViewListener;->onSurfaceChanged()V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/MapView$IMapViewListener;->onSurfaceCreated()V

    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/MapView$IMapViewListener;->onSurfaceDestroyed()V

    :cond_0
    return-void
.end method

.method public removeAllPoiLayer()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mPoiLayerObject:Lcom/autonavi/xmgd/view/PoiLayerObject;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/PoiLayerObject;->removeAllPoiLayer()V

    return-void
.end method

.method public removePoiLayer(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mPoiLayerObject:Lcom/autonavi/xmgd/view/PoiLayerObject;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/view/PoiLayerObject;->removePoiLayer(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public removeTipPoi(Z)V
    .locals 1

    const v0, 0x596526

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/MapView;->removeUserLayout(I)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/MapView$IMapViewListener;->onRemoveTipPoi()V

    :cond_0
    return-void
.end method

.method public removeUserLayout(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/view/MapView;->getUserLayout(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v0}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/MapView;->getIndexFromUserLayoutList(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveScreenShot(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mSurfaceView:Lcom/autonavi/xmgd/view/NaviSurfaceView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autonavi/xmgd/view/NaviSurfaceView;->saveScreenShot(IIII)V

    return-void
.end method

.method public setMapViewListener(Lcom/autonavi/xmgd/view/MapView$IMapViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/MapView;->mListener:Lcom/autonavi/xmgd/view/MapView$IMapViewListener;

    return-void
.end method

.method public setUserLayoutVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, p1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    return-void
.end method

.method public showTipPoi(Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;Lcom/autonavi/xmgd/f/n;Lcom/autonavi/xmgd/f/n;Lcom/autonavi/xmgd/f/n;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "Tip\u4e2d\u8981\u663e\u793a\u7684poi\u4e3a\u7a7a!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v6}, Lcom/autonavi/xmgd/view/MapView;->removeTipPoi(Z)V

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mContext:Landroid/content/Context;

    const v2, 0x7f030065

    iget-object v0, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v0, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    const v5, 0x596526

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/xmgd/view/MapView;->addUserLayout(Landroid/content/Context;IIIII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xmgd/view/MapView$1;

    invoke-direct {v1, p0, p5, p1}, Lcom/autonavi/xmgd/view/MapView$1;-><init>(Lcom/autonavi/xmgd/view/MapView;Lcom/autonavi/xmgd/f/n;Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p1, Lcom/autonavi/xmgd/e/k;->lDistance:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/autonavi/xmgd/utility/Tool;->getUnitStr(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p2, p1}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/e/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v1, Lcom/autonavi/xmgd/view/MapView$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/MapView$2;-><init>(Lcom/autonavi/xmgd/view/MapView;Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p3, p1}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/e/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v1, Lcom/autonavi/xmgd/view/MapView$3;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/autonavi/xmgd/view/MapView$3;-><init>(Lcom/autonavi/xmgd/view/MapView;Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p4, p1}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/e/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v1, Lcom/autonavi/xmgd/view/MapView$4;

    invoke-direct {v1, p0, p1, p4, v0}, Lcom/autonavi/xmgd/view/MapView$4;-><init>(Lcom/autonavi/xmgd/view/MapView;Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public updateTipPoi(Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;Lcom/autonavi/xmgd/f/n;Lcom/autonavi/xmgd/f/n;Lcom/autonavi/xmgd/f/n;)V
    .locals 3

    const v2, 0x596526

    if-nez p1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "Tip\u4e2d\u8981\u663e\u793a\u7684poi\u4e3a\u7a7a!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/view/MapView;->getUserLayout(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    iget-object v0, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/autonavi/xmgd/view/MapView;->updateUserLayout(III)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xmgd/view/MapView$5;

    invoke-direct {v1, p0, p5, p1}, Lcom/autonavi/xmgd/view/MapView$5;-><init>(Lcom/autonavi/xmgd/view/MapView;Lcom/autonavi/xmgd/f/n;Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p1, Lcom/autonavi/xmgd/e/k;->lDistance:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/autonavi/xmgd/utility/Tool;->getUnitStr(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p2, p1}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/e/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v1, Lcom/autonavi/xmgd/view/MapView$6;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/MapView$6;-><init>(Lcom/autonavi/xmgd/view/MapView;Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p3, p1}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/e/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v1, Lcom/autonavi/xmgd/view/MapView$7;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/autonavi/xmgd/view/MapView$7;-><init>(Lcom/autonavi/xmgd/view/MapView;Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MapView;->mTipContentView:Landroid/view/View;

    const v1, 0x7f0c019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p4, p1}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/e/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v1, Lcom/autonavi/xmgd/view/MapView$8;

    invoke-direct {v1, p0, p1, p4, v0}, Lcom/autonavi/xmgd/view/MapView$8;-><init>(Lcom/autonavi/xmgd/view/MapView;Lcom/autonavi/xmgd/e/k;Lcom/autonavi/xmgd/f/n;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public updateUserLayout(III)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/MapView;->getIndexFromUserLayoutList(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MapView;->mUserLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;

    iput p2, v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lon:I

    iput p3, v0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lat:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
