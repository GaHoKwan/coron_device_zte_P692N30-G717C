.class Lcom/android/email/service/EmailExternalService$ControllerCallbacks;
.super Lcom/android/emailcommon/service/EmailExternalCalls$Stub;
.source "EmailExternalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EmailExternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailExternalService;


# direct methods
.method private constructor <init>(Lcom/android/email/service/EmailExternalService;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/email/service/EmailExternalService$ControllerCallbacks;->this$0:Lcom/android/email/service/EmailExternalService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/EmailExternalCalls$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/service/EmailExternalService;Lcom/android/email/service/EmailExternalService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/android/email/service/EmailExternalService$ControllerCallbacks;-><init>(Lcom/android/email/service/EmailExternalService;)V

    return-void
.end method


# virtual methods
.method public sendCallback(IJI)V
    .locals 1
    .parameter "result"
    .parameter "accountId"
    .parameter "resultType"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/email/service/EmailExternalService$ControllerCallbacks;->this$0:Lcom/android/email/service/EmailExternalService;

    #getter for: Lcom/android/email/service/EmailExternalService;->mExternalHandler:Lcom/android/email/service/EmailExternalService$ExternalHandler;
    invoke-static {v0}, Lcom/android/email/service/EmailExternalService;->access$400(Lcom/android/email/service/EmailExternalService;)Lcom/android/email/service/EmailExternalService$ExternalHandler;

    move-result-object v0

    #calls: Lcom/android/email/service/EmailExternalService$ExternalHandler;->postSendCallbackMessage(IJI)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/email/service/EmailExternalService$ExternalHandler;->access$500(Lcom/android/email/service/EmailExternalService$ExternalHandler;IJI)V

    .line 478
    return-void
.end method

.method public updateCallback(IJJ)V
    .locals 6
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/email/service/EmailExternalService$ControllerCallbacks;->this$0:Lcom/android/email/service/EmailExternalService;

    #getter for: Lcom/android/email/service/EmailExternalService;->mExternalHandler:Lcom/android/email/service/EmailExternalService$ExternalHandler;
    invoke-static {v0}, Lcom/android/email/service/EmailExternalService;->access$400(Lcom/android/email/service/EmailExternalService;)Lcom/android/email/service/EmailExternalService$ExternalHandler;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    #calls: Lcom/android/email/service/EmailExternalService$ExternalHandler;->postUpdateCallbackMessage(IJJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/email/service/EmailExternalService$ExternalHandler;->access$600(Lcom/android/email/service/EmailExternalService$ExternalHandler;IJJ)V

    .line 482
    return-void
.end method
