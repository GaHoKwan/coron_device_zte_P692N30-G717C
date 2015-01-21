.class Lcom/android/mms/ui/ManageSimMessages$8;
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
    .line 1245
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1250
    const-string v2, "slotId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1251
    .local v1, slotId:I
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$1100(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1252
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1263
    .end local v1           #slotId:I
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    const-string v2, "android.provider.Telephony.SIM_FULL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1255
    const/4 v1, 0x0

    .line 1257
    .restart local v1       #slotId:I
    const-string v2, "simId"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1259
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$1100(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1260
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$8;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mIsCurrentSimFull:Z
    invoke-static {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->access$302(Lcom/android/mms/ui/ManageSimMessages;Z)Z

    goto :goto_0
.end method
