.class Lcom/dolby/ds1appUI/FragSwitches$1;
.super Landroid/content/BroadcastReceiver;
.source "FragSwitches.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/ds1appUI/FragSwitches;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/FragSwitches;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/FragSwitches;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, bun:Landroid/os/Bundle;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    const-string v6, "state"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/dolby/ds1appUI/FragSwitches;->mHeadset_plug:I

    .line 72
    const/4 v4, 0x0

    .line 74
    .local v4, selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :try_start_0
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #getter for: Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v6}, Lcom/dolby/ds1appUI/FragSwitches;->access$000(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/dolby/DsClient;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v3

    .line 75
    .local v3, selectedProfile:I
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #getter for: Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v6}, Lcom/dolby/ds1appUI/FragSwitches;->access$000(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/dolby/DsClient;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 79
    .end local v3           #selectedProfile:I
    :goto_0
    if-eqz v4, :cond_0

    .line 80
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #getter for: Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;
    invoke-static {v5}, Lcom/dolby/ds1appUI/FragSwitches;->access$200(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v5

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #calls: Lcom/dolby/ds1appUI/FragSwitches;->getVirtualizer(Landroid/dolby/DsClientSettings;)Z
    invoke-static {v6, v4}, Lcom/dolby/ds1appUI/FragSwitches;->access$100(Lcom/dolby/ds1appUI/FragSwitches;Landroid/dolby/DsClientSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 81
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #getter for: Lcom/dolby/ds1appUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;
    invoke-static {v6}, Lcom/dolby/ds1appUI/FragSwitches;->access$300(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/FragSwitches;->setEnabled(Z)V

    .line 98
    .end local v4           #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :cond_0
    :goto_1
    return-void

    .line 76
    .restart local v4       #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v2

    .line 77
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :cond_1
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    const-string v6, "android.bluetooth.profile.extra.STATE"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/dolby/ds1appUI/FragSwitches;->mA2dpConnectionState:I
    invoke-static {v5, v6}, Lcom/dolby/ds1appUI/FragSwitches;->access$402(Lcom/dolby/ds1appUI/FragSwitches;I)I

    .line 86
    const/4 v4, 0x0

    .line 88
    .restart local v4       #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :try_start_1
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #getter for: Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v6}, Lcom/dolby/ds1appUI/FragSwitches;->access$000(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/dolby/DsClient;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v3

    .line 89
    .restart local v3       #selectedProfile:I
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #getter for: Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v6}, Lcom/dolby/ds1appUI/FragSwitches;->access$000(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/dolby/DsClient;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 93
    .end local v3           #selectedProfile:I
    :goto_2
    if-eqz v4, :cond_0

    .line 94
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #getter for: Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;
    invoke-static {v5}, Lcom/dolby/ds1appUI/FragSwitches;->access$200(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v5

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #calls: Lcom/dolby/ds1appUI/FragSwitches;->getVirtualizer(Landroid/dolby/DsClientSettings;)Z
    invoke-static {v6, v4}, Lcom/dolby/ds1appUI/FragSwitches;->access$100(Lcom/dolby/ds1appUI/FragSwitches;Landroid/dolby/DsClientSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 95
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches$1;->this$0:Lcom/dolby/ds1appUI/FragSwitches;

    #getter for: Lcom/dolby/ds1appUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;
    invoke-static {v6}, Lcom/dolby/ds1appUI/FragSwitches;->access$300(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/FragSwitches;->setEnabled(Z)V

    goto :goto_1

    .line 90
    :catch_1
    move-exception v2

    .line 91
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
