.class Lcom/android/mms/ui/MultiForwardMessageActivity$10;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;->showSimSelectedDialog(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

.field final synthetic val$b:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiForwardMessageActivity;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$10;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$10;->val$b:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$10;->val$b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1059
    .local v0, mSIMSelectDialog:Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1060
    new-instance v1, Lcom/android/mms/ui/MultiForwardMessageActivity$10$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MultiForwardMessageActivity$10$1;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity$10;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1075
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1076
    return-void
.end method
