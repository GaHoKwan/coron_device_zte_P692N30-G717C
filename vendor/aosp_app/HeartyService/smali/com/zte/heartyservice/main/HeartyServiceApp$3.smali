.class Lcom/zte/heartyservice/main/HeartyServiceApp$3;
.super Landroid/content/BroadcastReceiver;
.source "HeartyServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$3;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1823
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1824
    .local v0, action:Ljava/lang/String;
    const-string v1, "HeartyServiceApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$3;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v1, v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setFloaterOpen(Z)V

    .line 1828
    return-void
.end method
