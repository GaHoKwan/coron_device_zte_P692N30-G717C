.class Lcom/zte/heartyservice/floater/ScreenLockMonitorService$3;
.super Landroid/os/Handler;
.source "ScreenLockMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$3;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 300
    const/16 v0, 0x1234

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 303
    :cond_0
    return-void
.end method
