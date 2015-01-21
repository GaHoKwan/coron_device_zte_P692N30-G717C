.class public Lcom/android/mms/ui/ManageSimMessages$QueryProcessDialog;
.super Landroid/app/ProgressDialog;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryProcessDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryProcessDialog;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    .line 1511
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1512
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1516
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1524
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1518
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryProcessDialog;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-boolean v0, v0, Lcom/android/mms/ui/ManageSimMessages;->isQuerying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1520
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryProcessDialog;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1521
    const/4 v0, 0x1

    goto :goto_0

    .line 1516
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
