.class final Lcom/mediatek/security/service/AsyncService$ServiceHandler;
.super Landroid/os/Handler;
.source "AsyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/service/AsyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/service/AsyncService;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/service/AsyncService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mediatek/security/service/AsyncService$ServiceHandler;->this$0:Lcom/mediatek/security/service/AsyncService;

    .line 27
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/mediatek/security/service/AsyncService$ServiceHandler;->this$0:Lcom/mediatek/security/service/AsyncService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/security/service/AsyncService;->onHandleIntent(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
