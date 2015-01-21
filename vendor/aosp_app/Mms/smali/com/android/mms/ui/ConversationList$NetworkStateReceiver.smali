.class Lcom/android/mms/ui/ConversationList$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 3135
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$NetworkStateReceiver;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/ConversationList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3135
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList$NetworkStateReceiver;-><init>(Lcom/android/mms/ui/ConversationList;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3138
    const/4 v2, 0x0

    .line 3139
    .local v2, success:Z
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$NetworkStateReceiver;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$NetworkStateReceiver;->this$0:Lcom/android/mms/ui/ConversationList;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3141
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 3142
    .local v1, state:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v1, :cond_0

    .line 3143
    const/4 v2, 0x1

    .line 3145
    :cond_0
    if-nez v2, :cond_1

    .line 3146
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 3147
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v1, :cond_1

    .line 3148
    const/4 v2, 0x1

    .line 3151
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$NetworkStateReceiver;->this$0:Lcom/android/mms/ui/ConversationList;

    if-nez v2, :cond_2

    :goto_0
    #calls: Lcom/android/mms/ui/ConversationList;->showInternetStatusBar(Z)V
    invoke-static {v5, v3}, Lcom/android/mms/ui/ConversationList;->access$5700(Lcom/android/mms/ui/ConversationList;Z)V

    .line 3152
    return-void

    :cond_2
    move v3, v4

    .line 3151
    goto :goto_0
.end method
