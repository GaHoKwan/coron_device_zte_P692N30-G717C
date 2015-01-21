.class Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRetrieveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/PhoneRetrieveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceReceiver"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$zte$retrieve$service$instruct$InstructionPreprocess$OperationType:[I


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;


# direct methods
.method static synthetic $SWITCH_TABLE$com$zte$retrieve$service$instruct$InstructionPreprocess$OperationType()[I
    .locals 3

    .prologue
    .line 412
    sget-object v0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->$SWITCH_TABLE$com$zte$retrieve$service$instruct$InstructionPreprocess$OperationType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->values()[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CANCEL_CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CANCEL_SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERASE:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERROR:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->LOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->MAP:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->RESET_PASSWORD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->UNALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->UNLOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->$SWITCH_TABLE$com$zte$retrieve$service$instruct$InstructionPreprocess$OperationType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method private constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->saveInstrStatus(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V

    return-void
.end method

.method static synthetic access$1(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->executeInstr(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->report(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;I)V

    return-void
.end method

.method static synthetic access$6(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;)Lcom/zte/retrieve/service/PhoneRetrieveService;
    .locals 1
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    return-object v0
.end method

.method private checkOpenStatus(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)Z
    .locals 4
    .parameter "instrInfo"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 462
    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getInstrType()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 463
    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v2

    sget-object v3, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->RESET_PASSWORD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->isVersionSecondUpdateThreeWithLocalOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 472
    :cond_1
    :goto_0
    return v0

    .line 469
    :cond_2
    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getInstrType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 470
    goto :goto_0
.end method

.method private declared-synchronized executeInstr(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)I
    .locals 4
    .parameter "instrInfo"

    .prologue
    .line 644
    monitor-enter p0

    const/4 v0, 0x0

    .line 645
    .local v0, resultcode:I
    :try_start_0
    const-string v1, "method start "

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 646
    invoke-static {}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->$SWITCH_TABLE$com$zte$retrieve$service$instruct$InstructionPreprocess$OperationType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 686
    :goto_0
    monitor-exit p0

    return v0

    .line 648
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    move-result v0

    .line 649
    goto :goto_0

    .line 651
    :pswitch_1
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    move-result v0

    .line 652
    goto :goto_0

    .line 654
    :pswitch_2
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    const/4 v2, 0x1

    #setter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->isErasing:Z
    invoke-static {v1, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$15(Lcom/zte/retrieve/service/PhoneRetrieveService;Z)V

    .line 655
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->regFormatReceiver()V
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$16(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    .line 656
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->erase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 659
    :pswitch_3
    :try_start_2
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->alarm(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    goto :goto_0

    .line 663
    :pswitch_4
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->alarm(Z)I

    move-result v0

    .line 664
    goto :goto_0

    .line 666
    :pswitch_5
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    const/4 v2, 0x1

    #setter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->isMapping:Z
    invoke-static {v1, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$17(Lcom/zte/retrieve/service/PhoneRetrieveService;Z)V

    .line 667
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->regMapReceiver()V
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$18(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    .line 668
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->map()V

    goto :goto_0

    .line 671
    :pswitch_6
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->setSmsForwarding(Ljava/lang/String;Z)I

    move-result v0

    .line 672
    goto :goto_0

    .line 674
    :pswitch_7
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->setSmsForwarding(Ljava/lang/String;Z)I

    move-result v0

    .line 675
    goto/16 :goto_0

    .line 677
    :pswitch_8
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/controller/Controller;->setCallForwardindgNum(Ljava/lang/String;)Z

    .line 678
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->callForwarding(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 681
    :pswitch_9
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->callForwarding(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getContent(III)Ljava/lang/String;
    .locals 2
    .parameter "resultcode"
    .parameter "success"
    .parameter "failed"

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-virtual {v1, p2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, content:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 713
    .end local v0           #content:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-virtual {v1, p3}, Lcom/zte/retrieve/service/PhoneRetrieveService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #content:Ljava/lang/String;
    goto :goto_0
.end method

.method private getRandomString(I)Ljava/lang/String;
    .locals 6
    .parameter "length"

    .prologue
    .line 586
    const-string v0, "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 587
    .local v0, base:Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 588
    .local v3, random:Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 589
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 593
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 590
    :cond_0
    const-string v5, "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 591
    .local v2, number:I
    const-string v5, "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private instrFilter(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)Z
    .locals 6
    .parameter "context"
    .parameter "instrInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "instrFilter the CMDType :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getInstrType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and the OperType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 534
    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 533
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getInstrType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    move v2, v3

    .line 582
    :goto_0
    return v2

    .line 538
    :pswitch_0
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #setter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->clientFlag:Z
    invoke-static {v4, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$14(Lcom/zte/retrieve/service/PhoneRetrieveService;Z)V

    .line 540
    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v4

    sget-object v5, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->RESET_PASSWORD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    if-ne v4, v5, :cond_1

    .line 541
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/retrieve/controller/Controller;->isSecurityNum(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 544
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->sendErrorMsg(Landroid/content/Context;I)V

    goto :goto_0

    .line 548
    :cond_1
    const/4 v1, 0x0

    .line 550
    .local v1, password:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/retrieve/controller/Controller;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 554
    :goto_1
    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getPwd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 555
    const-string v3, "PhoneRetrieveService_comparedBody: \u5bc6\u7801\u9519\u8bef"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 556
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->sendErrorMsg(Landroid/content/Context;I)V

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 558
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v4

    sget-object v5, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERASE:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    if-ne v4, v5, :cond_0

    .line 559
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/retrieve/controller/Controller;->isSecurityNum(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 560
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->sendErrorMsg(Landroid/content/Context;I)V

    goto :goto_0

    .line 566
    .end local v1           #password:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #setter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->clientFlag:Z
    invoke-static {v4, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$14(Lcom/zte/retrieve/service/PhoneRetrieveService;Z)V

    .line 567
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getIMEI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/zte/retrieve/service/PhoneRetrieveService;->isIMEICorrect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 568
    const-string v3, "PhoneRetrieveService_comparedBody: IMEI error"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_3
    iget-object v4, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/TextHelper;->isPhoneNum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 576
    :pswitch_2
    const-string v3, "PhoneRetrieveService_comparedBody: \u6307\u4ee4\u683c\u5f0f\u9519\u8bef"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, p1, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->sendErrorMsg(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private instrProcessing(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V
    .locals 3
    .parameter "context"
    .parameter "instrInfo"

    .prologue
    .line 477
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->instrFilter(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v1

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERROR:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    if-ne v1, v2, :cond_1

    .line 482
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->sendErrorMsg(Landroid/content/Context;I)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v1

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERASE:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->isErasing:Z
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$12(Lcom/zte/retrieve/service/PhoneRetrieveService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    const-string v1, "Phone is erasing now!Please wait..."

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v1

    sget-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->MAP:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->isMapping:Z
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$13(Lcom/zte/retrieve/service/PhoneRetrieveService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 492
    const-string v1, "Phone is mapping now!Please wait..."

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver$1;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 522
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private declared-synchronized report(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;I)V
    .locals 2
    .parameter "instrInfo"
    .parameter "resultcode"

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    const-string v0, "method start "

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getInstrType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperInstr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->sendSMSReport(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    :cond_0
    monitor-exit p0

    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveInstrStatus(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V
    .locals 2
    .parameter "instrInfo"

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method start,operate type is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->$SWITCH_TABLE$com$zte$retrieve$service$instruct$InstructionPreprocess$OperationType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    .line 641
    :goto_0
    monitor-exit p0

    return-void

    .line 626
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setLock()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 629
    :sswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setUnlock()Z

    goto :goto_0

    .line 632
    :sswitch_2
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setAlarm()Z

    .line 633
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setLock()Z

    goto :goto_0

    .line 636
    :sswitch_3
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setUnalarm()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 624
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method private sendErrorMsg(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "errorMsg"

    .prologue
    const/4 v2, 0x0

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, content:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 619
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v2, v2}, Lcom/zte/retrieve/utils/SMSSender;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 620
    return-void

    .line 600
    :pswitch_1
    const v1, 0x7f06007a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    goto :goto_0

    .line 605
    :pswitch_2
    const v1, 0x7f06007b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    goto :goto_0

    .line 608
    :pswitch_3
    const v1, 0x7f06007c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    goto :goto_0

    .line 611
    :pswitch_4
    const v1, 0x7f06007d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    goto :goto_0

    .line 614
    :pswitch_5
    const v1, 0x7f06008b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendSMSReport(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "inComingNum"
    .parameter "actionType"
    .parameter "resultcode"

    .prologue
    const/4 v3, 0x0

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, content:Ljava/lang/String;
    const-string v1, "sd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    const v1, 0x7f06007f

    const v2, 0x7f06007e

    invoke-direct {p0, p3, v1, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->getContent(III)Ljava/lang/String;

    move-result-object v0

    .line 705
    :goto_0
    invoke-static {p1, v0, v3, v3}, Lcom/zte/retrieve/utils/SMSSender;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 706
    :cond_0
    return-void

    .line 700
    :cond_1
    const-string v1, "xl"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    const v1, 0x7f060083

    const v2, 0x7f060084

    invoke-direct {p0, p3, v1, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->getContent(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 417
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 418
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 419
    .local v5, messages:[Landroid/telephony/SmsMessage;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PhoneRetrieveService_onReceive: have received :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 420
    array-length v8, v5

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_1

    .line 459
    .end local v5           #messages:[Landroid/telephony/SmsMessage;
    :cond_0
    :goto_1
    return-void

    .line 420
    .restart local v5       #messages:[Landroid/telephony/SmsMessage;
    :cond_1
    aget-object v4, v5, v7

    .line 422
    .local v4, message:Landroid/telephony/SmsMessage;
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, body:Ljava/lang/String;
    iget-object v9, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$10(Lcom/zte/retrieve/service/PhoneRetrieveService;Ljava/lang/String;)V

    .line 424
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PhoneRetrieveService_onReceive:sms content="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Incoming number="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 425
    iget-object v10, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 424
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 427
    new-instance v3, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;

    invoke-direct {v3}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;-><init>()V

    .line 428
    .local v3, instrInfo:Lcom/zte/retrieve/service/instruct/InstructionPreprocess;
    invoke-virtual {v3, v0}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->init(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v3}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->isZTEMsg()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 432
    const-string v9, "PhoneRetrieveService_onReceive:is zte_pr message"

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 433
    const-string v9, "abort broadcast and action"

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->abortBroadcast()V

    .line 436
    invoke-direct {p0, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->checkOpenStatus(Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 437
    const-string v9, "the switch is open , action"

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0, p1, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->instrProcessing(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionPreprocess;)V

    .line 420
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 440
    :cond_2
    const-string v9, "the switch is close , do nothing"

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 456
    .end local v0           #body:Ljava/lang/String;
    .end local v3           #instrInfo:Lcom/zte/retrieve/service/instruct/InstructionPreprocess;
    .end local v4           #message:Landroid/telephony/SmsMessage;
    .end local v5           #messages:[Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v2

    .line 457
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 444
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #body:Ljava/lang/String;
    .restart local v3       #instrInfo:Lcom/zte/retrieve/service/instruct/InstructionPreprocess;
    .restart local v4       #message:Landroid/telephony/SmsMessage;
    .restart local v5       #messages:[Landroid/telephony/SmsMessage;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v9}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zte/retrieve/controller/Controller;->isSMSForwardingStatus()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 446
    const-string v9, "the phone has set SMSForwardingStatus, so abort broadcast and forward send sms"

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->abortBroadcast()V

    .line 448
    iget-object v9, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v9}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->getContactNameFromPhoneBook(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v9}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6, v0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->composeContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, content:Ljava/lang/String;
    iget-object v9, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;
    invoke-static {v9}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zte/retrieve/controller/Controller;->getSMSForwardingNum()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v1, v10, v11}, Lcom/zte/retrieve/utils/SMSSender;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 452
    .end local v1           #content:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    const-string v9, "PhoneRetrieveService_onReceive:is not zte_pr message"

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
