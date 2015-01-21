.class Lcom/android/mms/ui/DialogModeActivity$15$1;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DialogModeActivity$15;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/DialogModeActivity$15;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity$15;)V
    .locals 0
    .parameter

    .prologue
    .line 3574
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$15$1;->this$1:Lcom/android/mms/ui/DialogModeActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$15$1;->this$1:Lcom/android/mms/ui/DialogModeActivity$15;

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity$15;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->getSimInfoList()V
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$1600(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 3578
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$15$1;->this$1:Lcom/android/mms/ui/DialogModeActivity$15;

    iget-object v0, v0, Lcom/android/mms/ui/DialogModeActivity$15;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mMmsDialogModePlugin:Lcom/mediatek/mms/ext/IMmsDialogMode;
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$1700(Lcom/android/mms/ui/DialogModeActivity;)Lcom/mediatek/mms/ext/IMmsDialogMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsDialogMode;->setCTSendButtonType()Z

    .line 3579
    return-void
.end method
