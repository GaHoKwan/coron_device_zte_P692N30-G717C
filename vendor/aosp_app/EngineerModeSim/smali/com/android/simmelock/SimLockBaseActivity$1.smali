.class Lcom/android/simmelock/SimLockBaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SimLockBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/simmelock/SimLockBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/SimLockBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/simmelock/SimLockBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/simmelock/SimLockBaseActivity$1;->this$0:Lcom/android/simmelock/SimLockBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/simmelock/SimLockBaseActivity$1;->this$0:Lcom/android/simmelock/SimLockBaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 172
    :cond_0
    return-void
.end method
