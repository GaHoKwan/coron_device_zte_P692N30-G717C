.class Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;
.super Ljava/lang/Object;
.source "PhoneRetrieveService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->instrProcessing(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final PASSWORD_LEN:I

.field private final PENDING_EXECUTING_TIME:I

.field final synthetic this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

.field private final synthetic val$instrInfo:Lcom/zte/retrieve/service/instruct/InstructionPreprocess;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    iput-object p2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->val$instrInfo:Lcom/zte/retrieve/service/instruct/InstructionPreprocess;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const/16 v0, 0x8

    iput v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->PASSWORD_LEN:I

    .line 497
    const/16 v0, 0x1388

    iput v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->PENDING_EXECUTING_TIME:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 501
    const-string v3, "thread start "

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->val$instrInfo:Lcom/zte/retrieve/service/instruct/InstructionPreprocess;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->saveInstrStatus(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V
    invoke-static {v3, v4}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V

    .line 504
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    iget-object v3, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->val$instrInfo:Lcom/zte/retrieve/service/instruct/InstructionPreprocess;

    invoke-virtual {v3}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v3

    sget-object v4, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->RESET_PASSWORD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    if-ne v3, v4, :cond_0

    .line 509
    iget-object v3, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    const/16 v4, 0x8

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->getRandomString(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;I)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, password:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reset password is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 511
    iget-object v3, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;
    invoke-static {v3}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->access$6(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;)Lcom/zte/retrieve/service/PhoneRetrieveService;

    move-result-object v3

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v3}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->resetPassword(Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;
    invoke-static {v3}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->access$6(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;)Lcom/zte/retrieve/service/PhoneRetrieveService;

    move-result-object v3

    const v4, 0x7f06008a

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, resText:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;
    invoke-static {v3}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->access$6(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;)Lcom/zte/retrieve/service/PhoneRetrieveService;

    move-result-object v3

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v3}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v6, v6}, Lcom/zte/retrieve/utils/SMSSender;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 520
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #resText:Ljava/lang/String;
    :goto_1
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 517
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 518
    iget-object v3, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->val$instrInfo:Lcom/zte/retrieve/service/instruct/InstructionPreprocess;

    iget-object v5, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    iget-object v6, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;->val$instrInfo:Lcom/zte/retrieve/service/instruct/InstructionPreprocess;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->executeInstr(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)I
    invoke-static {v5, v6}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->access$2(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)I

    move-result v5

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->report(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;I)V
    invoke-static {v3, v4, v5}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->access$3(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;I)V

    .line 519
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_1
.end method
