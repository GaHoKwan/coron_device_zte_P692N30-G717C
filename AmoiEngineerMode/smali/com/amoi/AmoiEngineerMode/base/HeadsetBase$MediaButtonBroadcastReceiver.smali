.class public Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;


# direct methods
.method protected constructor <init>(Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;->this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 139
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 140
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x4f

    if-ne v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;->this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;

    const v2, 0x7f060084

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 143
    :cond_0
    return-void
.end method
