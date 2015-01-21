.class Lcom/mediatek/deviceregister/RegisterService$3;
.super Ljava/lang/Thread;
.source "RegisterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/deviceregister/RegisterService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/deviceregister/RegisterService;


# direct methods
.method constructor <init>(Lcom/mediatek/deviceregister/RegisterService;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/mediatek/deviceregister/RegisterService$3;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 248
    const-string v0, "DeviceRegister/RegisterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeEsnToUim,current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/mediatek/deviceregister/RegisterService$3;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    #calls: Lcom/mediatek/deviceregister/RegisterService;->writeEsnToUim()V
    invoke-static {v0}, Lcom/mediatek/deviceregister/RegisterService;->access$300(Lcom/mediatek/deviceregister/RegisterService;)V

    .line 250
    return-void
.end method
