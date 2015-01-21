.class Lcom/android/camera/manager/RotateDialog$1;
.super Ljava/lang/Object;
.source "RotateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/manager/RotateDialog;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/RotateDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/RotateDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/manager/RotateDialog$1;->this$0:Lcom/android/camera/manager/RotateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog$1;->this$0:Lcom/android/camera/manager/RotateDialog;

    #getter for: Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/camera/manager/RotateDialog;->access$000(Lcom/android/camera/manager/RotateDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog$1;->this$0:Lcom/android/camera/manager/RotateDialog;

    #getter for: Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/camera/manager/RotateDialog;->access$000(Lcom/android/camera/manager/RotateDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog$1;->this$0:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 113
    return-void
.end method
