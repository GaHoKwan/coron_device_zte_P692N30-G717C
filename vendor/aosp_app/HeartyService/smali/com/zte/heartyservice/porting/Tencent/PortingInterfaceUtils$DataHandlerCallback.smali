.class final Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;
.super Ljava/lang/Object;
.source "PortingInterfaceUtils.java"

# interfaces
.implements Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1201
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;-><init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V

    return-void
.end method


# virtual methods
.method public varargs onCallback(Ltmsdk/common/module/aresengine/TelephonyEntity;II[Ljava/lang/Object;)V
    .locals 5
    .parameter "data"
    .parameter "filter"
    .parameter "state"
    .parameter "datas"

    .prologue
    .line 1204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1205
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    const-string v2, "from"

    const-string v3, "intercept"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    iget-object v2, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    #getter for: Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->access$300(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1209
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$DataHandlerCallback;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    #getter for: Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->access$300(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1210
    return-void
.end method
