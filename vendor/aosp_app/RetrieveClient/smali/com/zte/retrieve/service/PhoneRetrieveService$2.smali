.class Lcom/zte/retrieve/service/PhoneRetrieveService$2;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneRetrieveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/PhoneRetrieveService;->onCreate()V
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
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$2;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    .line 98
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service state changed!serviceState.getState() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 104
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "the phone is registered with an operator either in home network or in roaming."

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$2;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelephoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$22(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/utils/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/PhoneInfo;->isCNNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "start send sms notification"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$2;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$2;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v1, v1, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoOneSaved:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$2;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    iget-object v2, v2, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoTwoSaved:Ljava/lang/String;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->isSimCardChanged(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$5(Lcom/zte/retrieve/service/PhoneRetrieveService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$2;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->sendSmsInformSecurityNum()V
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$9(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    .line 111
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$2;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->cancelSimcardListen()V
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$23(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    .line 112
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$2;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->updateSimcardInfo()V
    invoke-static {v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$24(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    .line 116
    :cond_0
    return-void
.end method
