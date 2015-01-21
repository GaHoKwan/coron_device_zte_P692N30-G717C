.class Lcom/zte/heartyservice/examination/MainExamActivity$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "MainExamActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/MainExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/MainExamActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/MainExamActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1502(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 1145
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 1146
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1502(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 1151
    return-void
.end method
