.class Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$1;
.super Ljava/lang/Object;
.source "Welcome.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$1;->this$0:Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 599
    invoke-static {}, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->access$700()Lcom/android/email/activity/Welcome;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/Welcome;->mNeedResolveAccount:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/Welcome;->access$802(Lcom/android/email/activity/Welcome;Z)Z

    .line 600
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$1;->this$0:Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 601
    return-void
.end method
