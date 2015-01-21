.class Lcom/android/contacts/activities/DialtactsActivity$DialtactsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialtactsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$DialtactsBroadcastReceiver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1797
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$DialtactsBroadcastReceiver;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1800
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$DialtactsBroadcastReceiver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialtactsBroadcastReceiver, onReceive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 1804
    const-string v1, "com.android.contacts.ACTION_PHB_LOAD_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1805
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$DialtactsBroadcastReceiver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$300(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1806
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$DialtactsBroadcastReceiver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$300(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialerSearch()V

    .line 1809
    :cond_0
    return-void
.end method
