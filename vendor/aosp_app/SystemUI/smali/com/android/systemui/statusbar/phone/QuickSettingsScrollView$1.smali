.class Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 92
    :cond_0
    return-void
.end method
