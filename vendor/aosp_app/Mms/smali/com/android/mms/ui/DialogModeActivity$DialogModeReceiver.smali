.class public Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialogModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DialogModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogModeReceiver"
.end annotation


# static fields
.field private static final MSG_VIEWED_ACTION:Ljava/lang/String; = "com.android.mms.dialogmode.VIEWED"


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2620
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2625
    const-string v1, "Mms/DialogMode"

    const-string v2, "DialogModeActivity.DialogModeReceiver.onReceive"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    if-eqz p2, :cond_0

    .line 2629
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2630
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2636
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2633
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "Mms/DialogMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$DialogModeReceiver;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
