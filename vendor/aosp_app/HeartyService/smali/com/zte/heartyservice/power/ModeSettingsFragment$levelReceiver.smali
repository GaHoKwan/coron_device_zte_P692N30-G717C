.class Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/ModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "levelReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Lcom/zte/heartyservice/power/ModeSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, action:Ljava/lang/String;
    const-string v2, "ModeSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1119
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1121
    .local v1, level:I
    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->tempLevel:I
    invoke-static {v2}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$1400(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1122
    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #setter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->tempLevel:I
    invoke-static {v2, v1}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$1402(Lcom/zte/heartyservice/power/ModeSettingsFragment;I)I

    .line 1123
    iget-object v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #calls: Lcom/zte/heartyservice/power/ModeSettingsFragment;->UpdateRemainingTime(I)V
    invoke-static {v2, v1}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$1500(Lcom/zte/heartyservice/power/ModeSettingsFragment;I)V

    .line 1126
    .end local v1           #level:I
    :cond_0
    return-void
.end method
