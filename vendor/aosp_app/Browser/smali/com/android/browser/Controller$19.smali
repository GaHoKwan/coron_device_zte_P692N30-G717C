.class Lcom/android/browser/Controller$19;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->showCloseSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 2498
    iput-object p1, p0, Lcom/android/browser/Controller$19;->this$0:Lcom/android/browser/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 2500
    if-nez p2, :cond_1

    .line 2501
    iget-object v3, p0, Lcom/android/browser/Controller$19;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 2517
    :cond_0
    :goto_0
    return-void

    .line 2502
    :cond_1
    if-ne p2, v4, :cond_0

    .line 2503
    iget-object v3, p0, Lcom/android/browser/Controller$19;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;
    invoke-static {v3}, Lcom/android/browser/Controller;->access$1200(Lcom/android/browser/Controller;)Lcom/android/browser/UI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/browser/UI;->hideIME()V

    .line 2504
    iget-object v3, p0, Lcom/android/browser/Controller$19;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v3}, Lcom/android/browser/Controller;->onDestroy()V

    .line 2505
    iget-object v3, p0, Lcom/android/browser/Controller$19;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 2507
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/browser/Controller$19;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v3}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "browser_state.parcel"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2508
    .local v2, state:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2509
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2511
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.BROWSER_TERMINATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2512
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/browser/Controller$19;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2514
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 2515
    .local v1, pid:I
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
