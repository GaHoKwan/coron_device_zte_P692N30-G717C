.class Lcom/android/mms/ui/MultiSimPreferenceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiSimPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiSimPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiSimPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MultiSimPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-static {p1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/mms/ui/MultiSimPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MultiSimPreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 313
    :cond_0
    return-void
.end method
