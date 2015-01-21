.class Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PasswordRelatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/PasswordRelatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingViewsBackEventsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/PasswordRelatedActivity;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/activity/PasswordRelatedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;->this$0:Lcom/zte/retrieve/activity/PasswordRelatedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/activity/PasswordRelatedActivity;Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;-><init>(Lcom/zte/retrieve/activity/PasswordRelatedActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 69
    const-string v1, "com.zte.retrieve.back_pressed_on_pwd_activity"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;->this$0:Lcom/zte/retrieve/activity/PasswordRelatedActivity;

    invoke-virtual {v1}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->finishView()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;->this$0:Lcom/zte/retrieve/activity/PasswordRelatedActivity;

    #getter for: Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v1}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->access$0(Lcom/zte/retrieve/activity/PasswordRelatedActivity;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/controller/Controller;->setScreenOff2On(Z)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/retrieve/activity/NullActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, mIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
