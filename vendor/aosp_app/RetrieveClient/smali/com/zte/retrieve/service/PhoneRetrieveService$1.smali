.class Lcom/zte/retrieve/service/PhoneRetrieveService$1;
.super Landroid/os/Handler;
.source "PhoneRetrieveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/PhoneRetrieveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$1;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 82
    const-string v0, "start changed sim card lock"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$1;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    .line 84
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$1;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setLock()Z

    .line 85
    return-void
.end method
