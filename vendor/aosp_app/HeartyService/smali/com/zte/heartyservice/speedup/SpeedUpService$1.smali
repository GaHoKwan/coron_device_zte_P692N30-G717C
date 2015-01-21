.class Lcom/zte/heartyservice/speedup/SpeedUpService$1;
.super Landroid/os/Handler;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$1;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mRemoveProtection:Z

    .line 131
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/SysInfo;->setAvailableMemory(J)V

    .line 133
    :cond_0
    return-void
.end method
