.class final Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;
.super Ljava/lang/Object;
.source "RunningAppActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/RunningAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/RunningAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/RunningAppActivity;Lcom/zte/heartyservice/speedup/RunningAppActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;-><init>(Lcom/zte/heartyservice/speedup/RunningAppActivity;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 4

    .prologue
    .line 73
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->access$100(Lcom/zte/heartyservice/speedup/RunningAppActivity;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, intentSpeedUpService:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/RunningAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->access$100(Lcom/zte/heartyservice/speedup/RunningAppActivity;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 77
    .end local v0           #intentSpeedUpService:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
