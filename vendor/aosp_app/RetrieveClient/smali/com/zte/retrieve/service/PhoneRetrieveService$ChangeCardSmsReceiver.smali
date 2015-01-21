.class Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRetrieveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/PhoneRetrieveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeCardSmsReceiver"
.end annotation


# instance fields
.field private final MAX_RETRY_NUM:I

.field private final RETRY_TIMESPAN:I

.field private final SEND_SMS_SUCCESS:I

.field private retrySendCount:I

.field final synthetic this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 1
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->SEND_SMS_SUCCESS:I

    .line 380
    const/16 v0, 0xa

    iput v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->MAX_RETRY_NUM:I

    .line 381
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->RETRY_TIMESPAN:I

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->retrySendCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    return-void
.end method

.method static synthetic access$1(Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;)Lcom/zte/retrieve/service/PhoneRetrieveService;
    .locals 1
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHANGE_CARD_SMS_INFORM_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHANGE_CARD_SMS_INFORM_ACTION result code is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->retrySendCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retry send sms for change sim card!retrySendCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->retrySendCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver$1;

    invoke-direct {v1, p0}, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver$1;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 402
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 403
    iget v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->retrySendCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->retrySendCount:I

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->retrySendCount:I

    .line 406
    const-string v0, "sent sms inform to security number over!"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
