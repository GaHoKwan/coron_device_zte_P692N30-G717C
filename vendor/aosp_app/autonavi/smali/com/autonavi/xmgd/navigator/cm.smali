.class Lcom/autonavi/xmgd/navigator/cm;
.super Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$SimpleOnMapGestureListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$SimpleOnMapGestureListener;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/GRect;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_H_GUIDEPOST_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    aget-object v2, v1, v5

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GRect;->left:I

    aget-object v3, v1, v5

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GRect;->top:I

    aget-object v4, v1, v5

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GRect;->right:I

    aget-object v1, v1, v5

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GRect;->bottom:I

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/cm;->a()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_H_GUIDEPOST_VIEW_RECT:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->GDBL_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method private a(F)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x3f80

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/b;->e()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/ck;->i(Lcom/autonavi/xmgd/navigator/ck;)V

    sub-float v2, p1, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    cmpg-float v2, p1, v4

    if-gez v2, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->j()Lcom/autonavi/xm/navigation/server/GStatus;

    move v0, v1

    goto :goto_0

    :cond_2
    cmpl-float v2, p1, v4

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->i()Lcom/autonavi/xm/navigation/server/GStatus;

    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->N(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getStatusBarHeight()F

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ck;->i(Lcom/autonavi/xmgd/navigator/ck;)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->N(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    float-to-int v1, p3

    float-to-int v2, p4

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_DRAG:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    invoke-interface {v0, v1, v2, v3}, Lcom/autonavi/xmgd/logic/b;->a(IILcom/autonavi/xm/navigation/server/map/GMoveMapOp;)V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->N(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getStatusBarHeight()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    new-array v2, v4, [Lcom/autonavi/xm/navigation/server/GCoord;

    new-instance v3, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v3, v0, v1}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    aput-object v3, v2, v6

    new-array v3, v4, [Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v4

    sget-object v5, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_SCR_TO_GEO:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    invoke-virtual {v4, v5, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_CoordConvert(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v3, v6

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/autonavi/xmgd/logic/b;->a(Lcom/autonavi/xm/navigation/server/GCoord;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/autonavi/xmgd/logic/b;->c(Lcom/autonavi/xm/navigation/server/GCoord;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    const v4, 0x44aa200

    if-le v3, v4, :cond_2

    iget v3, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    const v4, 0x8954400

    if-ge v3, v4, :cond_2

    iget v3, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    const v4, 0x3567e00

    if-ge v3, v4, :cond_2

    iget v3, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    const v4, 0x7a1200

    if-gt v3, v4, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/Map;->a:Lcom/autonavi/xmgd/view/FloatPanel;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/FloatPanel;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->a()V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/xmgd/logic/b;->S()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/logic/b;->d(Lcom/autonavi/xm/navigation/server/GCoord;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2, v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;II)V

    goto/16 :goto_0
.end method

.method private b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private b(F)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/b;->e()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    float-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->b(I)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->N(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/h;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    float-to-int v2, p3

    float-to-int v3, p4

    const/4 v4, 0x2

    new-array v4, v4, [I

    mul-int/lit8 v2, v2, 0x2

    aput v2, v4, v0

    mul-int/lit8 v0, v3, 0x2

    aput v0, v4, v1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xmgd/navigator/ck;[I)V

    move v0, v1

    goto :goto_0
.end method

.method private c(F)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    float-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->c(I)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/logic/ac;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->N(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getPluginExist_HighWay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getStatusBarHeight()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/cm;->a(II)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/b;->S()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getStatusBarHeight()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v4}, Lcom/autonavi/xmgd/navigator/Map;->p(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v4}, Lcom/autonavi/xmgd/navigator/Map;->s(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v4}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/autonavi/xmgd/logic/b;->A()V

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v4}, Lcom/autonavi/xmgd/navigator/Map;->g(Lcom/autonavi/xmgd/navigator/Map;)V

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getPluginExist_HighWay()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v4}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/autonavi/xmgd/naviservice/e;->p()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v2, v3}, Lcom/autonavi/xmgd/navigator/cm;->a(II)V

    :cond_3
    new-array v4, v1, [Lcom/autonavi/xm/navigation/server/GCoord;

    new-instance v5, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v5, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    aput-object v5, v4, v0

    new-array v5, v1, [Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v6

    sget-object v7, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_SCR_TO_GEO:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    invoke-virtual {v6, v7, v4, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_CoordConvert(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v4, v5, v0

    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v5}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/autonavi/xmgd/logic/b;->a(Lcom/autonavi/xm/navigation/server/GCoord;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v5}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/autonavi/xmgd/logic/b;->c(Lcom/autonavi/xm/navigation/server/GCoord;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/Map;->a:Lcom/autonavi/xmgd/view/FloatPanel;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/FloatPanel;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->a()V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v2, 0x7f07014e

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/xmgd/logic/ac;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v4}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-interface {v4, v5, v6}, Lcom/autonavi/xmgd/logic/b;->a(II)[I

    move-result-object v4

    aget v5, v4, v0

    if-eqz v5, :cond_6

    aget v5, v4, v1

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    aget v0, v4, v0

    aget v4, v4, v1

    invoke-static {v5, v0, v4}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;II)V

    move v0, v1

    :cond_6
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/xmgd/view/MapView;->getTouchPoi(II)Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/poi/GPoi;->toUIPoi()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/autonavi/xmgd/logic/b;->d(Lcom/autonavi/xmgd/e/k;)V

    goto/16 :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->N(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/logic/af;->j()Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getStatusBarHeight()F

    goto :goto_0
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->N(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/af;->j()Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_NORTH:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->e()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    move-result-object v0

    :cond_2
    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->n()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->A(Lcom/autonavi/xmgd/navigator/Map;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getStatusBarHeight()F

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->i()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xmgd.plugin.action.highwaymode.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cm;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u65e0\u9ad8\u901f\u4fe1\u606f, \u65e0\u6cd5\u8fdb\u5165\u9ad8\u901f\u6a21\u5f0f!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cm;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cm;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onElevation(F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cm;->b(F)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/xmgd/navigator/cm;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cm;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onRotate(F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cm;->c(F)Z

    move-result v0

    return v0
.end method

.method public onScale(F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cm;->a(F)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin()Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/cm;->b()Z

    move-result v0

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/xmgd/navigator/cm;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cm;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cm;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
