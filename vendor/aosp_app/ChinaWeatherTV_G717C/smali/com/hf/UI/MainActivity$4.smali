.class Lcom/hf/UI/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->showTranslationDialog(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;

.field private final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$4;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$4;->val$preferences:Landroid/content/SharedPreferences;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 400
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "onCancel"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/UI/MainActivity$4$1;

    iget-object v2, p0, Lcom/hf/UI/MainActivity$4;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/hf/UI/MainActivity$4$1;-><init>(Lcom/hf/UI/MainActivity$4;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 410
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 412
    iget-object v0, p0, Lcom/hf/UI/MainActivity$4;->this$0:Lcom/hf/UI/MainActivity;

    #calls: Lcom/hf/UI/MainActivity;->showGuideLayout()V
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$8(Lcom/hf/UI/MainActivity;)V

    .line 413
    return-void
.end method
