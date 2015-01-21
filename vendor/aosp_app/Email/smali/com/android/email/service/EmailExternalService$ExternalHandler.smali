.class final Lcom/android/email/service/EmailExternalService$ExternalHandler;
.super Landroid/os/Handler;
.source "EmailExternalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EmailExternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExternalHandler"
.end annotation


# static fields
.field private static final MSG_SEND_CALLBACK:I = 0x11

.field private static final MSG_UPDATE_CALLBACK:I = 0x10


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailExternalService;


# direct methods
.method private constructor <init>(Lcom/android/email/service/EmailExternalService;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/email/service/EmailExternalService$ExternalHandler;->this$0:Lcom/android/email/service/EmailExternalService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/service/EmailExternalService;Lcom/android/email/service/EmailExternalService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/android/email/service/EmailExternalService$ExternalHandler;-><init>(Lcom/android/email/service/EmailExternalService;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/service/EmailExternalService$ExternalHandler;IJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 438
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/EmailExternalService$ExternalHandler;->postSendCallbackMessage(IJI)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/service/EmailExternalService$ExternalHandler;IJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 438
    invoke-direct/range {p0 .. p5}, Lcom/android/email/service/EmailExternalService$ExternalHandler;->postUpdateCallbackMessage(IJJ)V

    return-void
.end method

.method private postSendCallbackMessage(IJI)V
    .locals 2
    .parameter "result"
    .parameter "accountId"
    .parameter "resultType"

    .prologue
    .line 458
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 459
    .local v0, msg:Landroid/os/Message;
    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 460
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 461
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 463
    return-void
.end method

.method private postUpdateCallbackMessage(IJJ)V
    .locals 2
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 466
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 467
    .local v0, msg:Landroid/os/Message;
    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 468
    long-to-int v1, p4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 470
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 471
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 444
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 445
    .local v1, result:I
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 447
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/service/EmailExternalService$ExternalHandler;->this$0:Lcom/android/email/service/EmailExternalService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    iget v4, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/email/service/EmailExternalService;->handleSendCallback(IJI)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/service/EmailExternalService;->access$200(Lcom/android/email/service/EmailExternalService;IJI)V

    goto :goto_0

    .line 450
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/service/EmailExternalService$ExternalHandler;->this$0:Lcom/android/email/service/EmailExternalService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-long v4, v4

    #calls: Lcom/android/email/service/EmailExternalService;->handleUpdateCallback(IJJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/email/service/EmailExternalService;->access$300(Lcom/android/email/service/EmailExternalService;IJJ)V

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
