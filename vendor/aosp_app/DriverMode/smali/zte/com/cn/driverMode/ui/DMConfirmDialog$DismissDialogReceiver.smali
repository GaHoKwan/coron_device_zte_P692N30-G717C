.class public Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/ui/DMConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->finish()V

    return-void
.end method