.class public Lcom/android/camera/ui/ShutterButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutterButton"


# instance fields
.field private mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    .line 68
    .local v0, pressed:Z
    const-string v1, "ShutterButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawableStateChanged() pressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-boolean v1, p0, Lcom/android/camera/ui/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 70
    if-nez v0, :cond_1

    .line 92
    new-instance v1, Lcom/android/camera/ui/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/ShutterButton$1;-><init>(Lcom/android/camera/ui/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 101
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/ShutterButton;->mOldPressed:Z

    .line 103
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 114
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 117
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 57
    return-void
.end method
