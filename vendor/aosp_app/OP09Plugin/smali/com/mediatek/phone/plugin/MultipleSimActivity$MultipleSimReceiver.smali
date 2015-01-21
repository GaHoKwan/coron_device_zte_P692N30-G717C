.class Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultipleSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/plugin/MultipleSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipleSimReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/phone/plugin/MultipleSimActivity;Lcom/mediatek/phone/plugin/MultipleSimActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;-><init>(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    :cond_0
    const-string v2, "OP09MultipleSimActivity"

    const-string v3, "MultipleSimReceiver Intent.ACTION_AIRPLANE_MODE_CHANGED.equals(action) start"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;

    #calls: Lcom/mediatek/phone/plugin/MultipleSimActivity;->updatePreferenceEnableState()V
    invoke-static {v2}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->access$100(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V

    .line 79
    const-string v2, "OP09MultipleSimActivity"

    const-string v3, "MultipleSimReceiver Intent.ACTION_AIRPLANE_MODE_CHANGED.equals(action) end"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;

    #calls: Lcom/mediatek/phone/plugin/MultipleSimActivity;->updatePreferenceList()V
    invoke-static {v2}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->access$200(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V

    goto :goto_0

    .line 82
    :cond_3
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const-string v2, "OP09MultipleSimActivity"

    const-string v3, "ACTION_SIM_INFO_UPDATE received"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, temp:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_4

    .line 89
    const-string v2, "OP09MultipleSimActivity"

    const-string v3, "Activity finished"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 92
    :cond_4
    const-string v2, "OP09MultipleSimActivity"

    const-string v3, "MultipleSimReceiver else start"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/phone/plugin/MultipleSimActivity;

    #calls: Lcom/mediatek/phone/plugin/MultipleSimActivity;->updatePreferenceEnableState()V
    invoke-static {v2}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->access$100(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V

    .line 94
    const-string v2, "OP09MultipleSimActivity"

    const-string v3, "MultipleSimReceiver else end"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
