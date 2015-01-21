.class Lcom/android/camera/ui/ModePickerScrollView$1;
.super Ljava/lang/Object;
.source "ModePickerScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModePickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModePickerScrollView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModePickerScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/ui/ModePickerScrollView$1;->this$0:Lcom/android/camera/ui/ModePickerScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "ModePickerScrollView"

    const-string v1, "mHideRunnable.run()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerScrollView$1;->this$0:Lcom/android/camera/ui/ModePickerScrollView;

    #getter for: Lcom/android/camera/ui/ModePickerScrollView;->mBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/ModePickerScrollView;->access$000(Lcom/android/camera/ui/ModePickerScrollView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerScrollView$1;->this$0:Lcom/android/camera/ui/ModePickerScrollView;

    #getter for: Lcom/android/camera/ui/ModePickerScrollView;->mBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/ModePickerScrollView;->access$000(Lcom/android/camera/ui/ModePickerScrollView;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 30
    :cond_0
    return-void
.end method
