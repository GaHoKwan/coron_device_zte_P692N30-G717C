.class Lcom/zte/heartyservice/floater/ScreenLockMonitor$4;
.super Ljava/lang/Object;
.source "ScreenLockMonitor.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/ScreenLockMonitor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$4;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 144
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$4;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$4;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    const-class v3, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->stopService(Landroid/content/Intent;)Z

    .line 148
    iget-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$4;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    #getter for: Lcom/zte/heartyservice/floater/ScreenLockMonitor;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->access$000(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setScreenLockMonitor(Z)V

    .line 154
    :cond_0
    return-void
.end method
