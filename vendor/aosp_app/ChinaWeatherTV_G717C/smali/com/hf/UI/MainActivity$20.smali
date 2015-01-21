.class Lcom/hf/UI/MainActivity$20;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->registBroadCast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    .line 1022
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1026
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, action:Ljava/lang/String;
    const-string v4, "WeatherMainActivity"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const-string v4, "com.hf.CHANGE_CURRENT_CITY"

    .line 1028
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1029
    if-eqz v4, :cond_1

    .line 1030
    const-string v4, "com.hf.TAB_INDIEX"

    .line 1031
    const/4 v5, -0x1

    .line 1030
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1032
    .local v2, index:I
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1033
    .local v3, message:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1034
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 1035
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1078
    .end local v2           #index:I
    .end local v3           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    const-string v4, "com.hf.CHANGE_BACKGROUND"

    .line 1036
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1037
    if-eqz v4, :cond_2

    .line 1038
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1039
    .restart local v3       #message:Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1040
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1042
    .end local v3           #message:Landroid/os/Message;
    :cond_2
    const-string v4, "com.hf.UPDATE_ALL_WEATHER"

    .line 1041
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1042
    if-eqz v4, :cond_3

    .line 1043
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1044
    .restart local v3       #message:Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1045
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1047
    .end local v3           #message:Landroid/os/Message;
    :cond_3
    const-string v4, "com.hf.UPDATE_ALL_WEATHER_FAILED"

    .line 1046
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1047
    if-eqz v4, :cond_4

    .line 1048
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1049
    .restart local v3       #message:Landroid/os/Message;
    const/16 v4, 0x8

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1050
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1052
    .end local v3           #message:Landroid/os/Message;
    :cond_4
    const-string v4, "com.hf.QUERY_WEATHER_FAILED"

    .line 1051
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1052
    if-eqz v4, :cond_5

    .line 1053
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1054
    .restart local v3       #message:Landroid/os/Message;
    const/4 v4, 0x5

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1055
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1057
    .end local v3           #message:Landroid/os/Message;
    :cond_5
    const-string v4, "com.hf.ADD_CITY"

    .line 1056
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1057
    if-nez v4, :cond_6

    .line 1059
    const-string v4, "com.hf.UPDATE_WEATHER"

    .line 1058
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1059
    if-nez v4, :cond_6

    .line 1061
    const-string v4, "com.hf.CHANGE_DEFAULT_CITY"

    .line 1060
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1061
    if-eqz v4, :cond_7

    .line 1062
    :cond_6
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1063
    .restart local v3       #message:Landroid/os/Message;
    const/4 v4, 0x7

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1064
    iget-object v4, p0, Lcom/hf/UI/MainActivity$20;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/hf/UI/MainActivity;->access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1066
    .end local v3           #message:Landroid/os/Message;
    :cond_7
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1065
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1066
    if-eqz v4, :cond_0

    .line 1068
    const-string v4, "noConnectivity"

    const/4 v5, 0x0

    .line 1067
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1069
    .local v1, connected:Z
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_8

    .line 1070
    const-string v4, "MainActivityonReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "connected = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1070
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_8
    if-eqz v1, :cond_0

    .line 1074
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hf/http/WeatherNet;->stopQuery()V

    goto/16 :goto_0
.end method
