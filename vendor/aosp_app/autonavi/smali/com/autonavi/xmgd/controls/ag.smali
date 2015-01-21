.class public final Lcom/autonavi/xmgd/controls/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/Window$Callback;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Lcom/autonavi/xmgd/controls/aj;

.field private h:Lcom/autonavi/xmgd/utility/Timer;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->f:Landroid/os/Handler;

    new-instance v0, Lcom/autonavi/xmgd/utility/Timer;

    const-wide/16 v1, 0x22b8

    new-instance v3, Lcom/autonavi/xmgd/controls/ah;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/controls/ah;-><init>(Lcom/autonavi/xmgd/controls/ag;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xmgd/utility/Timer;-><init>(JLcom/autonavi/xmgd/utility/Timer$ITimerListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->h:Lcom/autonavi/xmgd/utility/Timer;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/controls/ag;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/controls/ag;->c:I

    return v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/controls/ag;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/controls/ag;->d:I

    return p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/controls/ag;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/controls/ag;->d:I

    return v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/controls/ag;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/controls/ag;->c:I

    return p1
.end method

.method private b()V
    .locals 4

    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/ag;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/ag;->e:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->f:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xmgd/controls/ai;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/controls/ai;-><init>(Lcom/autonavi/xmgd/controls/ag;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->h:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->stop()V

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->h:Lcom/autonavi/xmgd/utility/Timer;

    const-wide/16 v1, 0x22b8

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/utility/Timer;->start(J)V

    iget v0, p0, Lcom/autonavi/xmgd/controls/ag;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/controls/ag;->d:I

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/ag;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/ag;->e:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->g:Lcom/autonavi/xmgd/controls/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->g:Lcom/autonavi/xmgd/controls/aj;

    invoke-interface {v0}, Lcom/autonavi/xmgd/controls/aj;->b()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/controls/ag;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/ag;->c()V

    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/controls/ag;)Lcom/autonavi/xmgd/controls/aj;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->g:Lcom/autonavi/xmgd/controls/aj;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/autonavi/xmgd/controls/ag;
    .locals 3

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ag;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->h:Lcom/autonavi/xmgd/utility/Timer;

    const-wide/16 v1, 0x22b8

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/utility/Timer;->start(J)V

    iget v0, p0, Lcom/autonavi/xmgd/controls/ag;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/controls/ag;->d:I

    return-object p0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->h:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->stop()V

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/controls/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ag;->g:Lcom/autonavi/xmgd/controls/aj;

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/ag;->b()V

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/autonavi/xmgd/controls/ag;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/controls/ag;->c:I

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/ag;->b()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ag;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
