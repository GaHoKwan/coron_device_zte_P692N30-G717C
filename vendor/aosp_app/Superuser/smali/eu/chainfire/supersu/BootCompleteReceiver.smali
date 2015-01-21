.class public Leu/chainfire/supersu/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 0
    const-string v0, "boot_complete"

    invoke-static {p1, v0}, Leu/chainfire/supersu/SuperUserIntentService;->鷭(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    return-void
.end method
