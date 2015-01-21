.class Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;
.super Landroid/app/AlertDialog;
.source "WPMessageDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/WPMessageDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WPMessageDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/WPMessageDialogActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    .line 244
    invoke-direct {p0, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 245
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/WPMessageDialogActivity;->access$202(Lcom/android/mms/ui/WPMessageDialogActivity;Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;)Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    #calls: Lcom/android/mms/ui/WPMessageDialogActivity;->markAsRead()V
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageDialogActivity;->access$300(Lcom/android/mms/ui/WPMessageDialogActivity;)V

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;->this$0:Lcom/android/mms/ui/WPMessageDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 253
    return-void
.end method

.method public dismiss(I)V
    .locals 0
    .parameter "dummy"

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 257
    return-void
.end method
