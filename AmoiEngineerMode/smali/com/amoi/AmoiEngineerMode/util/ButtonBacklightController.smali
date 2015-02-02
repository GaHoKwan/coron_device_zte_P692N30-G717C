.class public Lcom/amoi/AmoiEngineerMode/util/ButtonBacklightController;
.super Ljava/lang/Object;
.source "ButtonBacklightController.java"


# static fields
.field public static final STATE_OFF:F = 0.0f

.field public static final STATE_ON:F = 1.0f


# instance fields
.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0
    .parameter "window"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/ButtonBacklightController;->mWindow:Landroid/view/Window;

    .line 23
    return-void
.end method


# virtual methods
.method public getLightState()F
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/ButtonBacklightController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 32
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    return v1
.end method

.method public setLightState(F)V
    .locals 2
    .parameter "state"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/ButtonBacklightController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 37
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 38
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/ButtonBacklightController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 39
    return-void
.end method

.method public turnOff()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/util/ButtonBacklightController;->setLightState(F)V

    .line 47
    return-void
.end method

.method public turnOn()V
    .locals 1

    .prologue
    .line 42
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/util/ButtonBacklightController;->setLightState(F)V

    .line 43
    return-void
.end method
