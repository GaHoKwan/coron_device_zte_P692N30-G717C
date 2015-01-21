.class Lcom/android/mms/ui/ManageSimMessages$13;
.super Landroid/content/BroadcastReceiver;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 1373
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1374
    .local v0, airplaneOn:Z
    if-eqz v0, :cond_0

    .line 1375
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    sget v3, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->sim_close:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1377
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$13;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1379
    :cond_0
    return-void
.end method
