.class public Lcom/autonavi/xmgd/view/NaviSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private isSurfaceViewCreated:Z

.field private mEglProvider:Lcom/autonavi/xmgd/controls/d;

.field private mListener:Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/NaviSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/NaviSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->isSurfaceViewCreated:Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/NaviSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private init(Landroid/view/SurfaceHolder;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lcom/autonavi/xmgd/controls/d;

    invoke-direct {v0}, Lcom/autonavi/xmgd/controls/d;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mEglProvider:Lcom/autonavi/xmgd/controls/d;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mEglProvider:Lcom/autonavi/xmgd/controls/d;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/controls/d;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OnDrawMapViewEnd()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mEglProvider:Lcom/autonavi/xmgd/controls/d;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/d;->b()V

    return-void
.end method

.method public OnDrawMapViewStart()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mEglProvider:Lcom/autonavi/xmgd/controls/d;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/d;->a()V

    return-void
.end method

.method public getLastScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->isSurfaceViewCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mEglProvider:Lcom/autonavi/xmgd/controls/d;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/d;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public saveScreenShot(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mEglProvider:Lcom/autonavi/xmgd/controls/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autonavi/xmgd/controls/d;->a(IIII)V

    return-void
.end method

.method public setSurfaceViewListener(Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mListener:Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->isSurfaceViewCreated:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mListener:Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mListener:Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;->onSurfaceChanged()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NaviSurfaceView] surfaceCreated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->isSurfaceViewCreated:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    const-string v1, "[NaviSurfaceView] surfaceCreated  has created, don\'t created again!"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/NaviSurfaceView;->init(Landroid/view/SurfaceHolder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->isSurfaceViewCreated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mListener:Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mListener:Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;->onSurfaceCreated()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NaviSurfaceView] surfaceDestroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->isSurfaceViewCreated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mEglProvider:Lcom/autonavi/xmgd/controls/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mEglProvider:Lcom/autonavi/xmgd/controls/d;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/d;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mEglProvider:Lcom/autonavi/xmgd/controls/d;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mListener:Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->mListener:Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/NaviSurfaceView$ISurfaceViewListener;->onSurfaceDestroyed()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/view/NaviSurfaceView;->isSurfaceViewCreated:Z

    return-void
.end method
