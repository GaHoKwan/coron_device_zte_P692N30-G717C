.class Lcom/mediatek/deviceregister/RegisterService$1;
.super Ljava/util/TimerTask;
.source "RegisterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/deviceregister/RegisterService;
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
    .line 40
    iput-object p1, p0, Lcom/mediatek/deviceregister/RegisterService$1;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/deviceregister/RegisterService$1;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    #calls: Lcom/mediatek/deviceregister/RegisterService;->sendRegisterMessage()V
    invoke-static {v0}, Lcom/mediatek/deviceregister/RegisterService;->access$000(Lcom/mediatek/deviceregister/RegisterService;)V

    .line 44
    return-void
.end method
