.class Lcom/android/mms/ui/AsyncDialog$1;
.super Ljava/lang/Object;
.source "AsyncDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AsyncDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AsyncDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AsyncDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/ui/AsyncDialog$1;->this$0:Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog$1;->this$0:Lcom/android/mms/ui/AsyncDialog;

    #getter for: Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/AsyncDialog;->access$000(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog$1;->this$0:Lcom/android/mms/ui/AsyncDialog;

    #getter for: Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/AsyncDialog;->access$000(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 68
    :cond_0
    return-void
.end method
