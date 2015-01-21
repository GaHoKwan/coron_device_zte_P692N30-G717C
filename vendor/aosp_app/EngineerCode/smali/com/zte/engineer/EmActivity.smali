.class public Lcom/zte/engineer/EmActivity;
.super Landroid/app/Activity;
.source "EmActivity.java"


# static fields
.field static final AutoDetect:I = 0x1

.field static final ManulDetect:I = 0x2


# instance fields
.field Ishield:Z

.field final TAG:Ljava/lang/String;

.field mEmFlag:I

.field mEmTimerQuit:Ljava/util/Timer;

.field mEmTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const-string v0, "Emode.EmActivity"

    iput-object v0, p0, Lcom/zte/engineer/EmActivity;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    .line 21
    new-instance v0, Lcom/zte/engineer/EmActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/EmActivity$1;-><init>(Lcom/zte/engineer/EmActivity;)V

    iput-object v0, p0, Lcom/zte/engineer/EmActivity;->mEmTimerTask:Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 53
    .local v0, code:I
    const-string v2, "Emode.EmActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keycode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v2, 0x4

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    if-ne v2, v5, :cond_0

    .line 55
    const-string v2, "Emode.EmActivity"

    const-string v3, "Emode-List back keycode should be shield"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return v1

    .line 57
    :cond_0
    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    iget-boolean v2, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    if-ne v2, v5, :cond_1

    .line 58
    const-string v2, "Emode.EmActivity"

    const-string v3, "Emode-List home keycode should be shield"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_1
    const-string v1, "Emode.EmActivity"

    const-string v2, "Emode-List keycode should not be shield"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auto"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/engineer/EmActivity;->mEmFlag:I

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/EmActivity;->mEmTimerQuit:Ljava/util/Timer;

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 44
    iget-object v0, p0, Lcom/zte/engineer/EmActivity;->mEmTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/engineer/EmActivity;->setKeepKightOn(Z)V

    .line 39
    return-void
.end method

.method protected setKeepKightOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 49
    return-void
.end method
