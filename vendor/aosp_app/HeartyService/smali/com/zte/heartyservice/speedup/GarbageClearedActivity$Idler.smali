.class final Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;
.super Ljava/lang/Object;
.source "GarbageClearedActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/GarbageClearedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Lcom/zte/heartyservice/speedup/GarbageClearedActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$100(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, intentSpeedUpService:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$100(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 108
    .end local v0           #intentSpeedUpService:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
