.class Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputMethodState"
.end annotation


# instance fields
.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field needsToOffsetInputMethodTarget:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter
    .parameter "methodWindow"
    .parameter "methodTarget"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 336
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 333
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 334
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->needsToOffsetInputMethodTarget:Z

    .line 337
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 338
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 339
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->needsToOffsetInputMethodTarget:Z

    .line 340
    return-void
.end method


# virtual methods
.method reset(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .parameter "methodWindow"
    .parameter "methodTarget"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 344
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$InputMethodState;->needsToOffsetInputMethodTarget:Z

    .line 346
    return-void
.end method
