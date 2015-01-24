.class Lcom/android/mipop/paintpad/activities/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic aD:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/j;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/j;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->j()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/j;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
