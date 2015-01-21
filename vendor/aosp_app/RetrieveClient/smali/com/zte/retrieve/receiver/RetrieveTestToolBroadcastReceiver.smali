.class public Lcom/zte/retrieve/receiver/RetrieveTestToolBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetrieveTestToolBroadcastReceiver.java"


# static fields
.field private static final ACTION_TEST_TOOL_REFRESH_PARAM:Ljava/lang/String; = "android.intent.action.retrieve.testtool.refresh"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    const-string v1, "RetrieveTestToolBroadcastReceiver onReceive..."

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 29
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 30
    :cond_0
    const-string v1, "test tool intent or action is null"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string v1, "Source"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, resource:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "RetrieveTestTool_Operate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source is not from test tool, drop it . resource = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.retrieve.testtool.refresh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    .line 48
    const-string v1, "Refresh SyncTest parametrs."

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    const-string v1, "receive not TEST_TOOL_START_SYNC, drop it"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
