.class Lcom/mediatek/smsreg/SmsRegService$1;
.super Landroid/telephony/PhoneStateListener;
.source "SmsRegService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/smsreg/SmsRegService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/smsreg/SmsRegService;


# direct methods
.method constructor <init>(Lcom/mediatek/smsreg/SmsRegService;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/mediatek/smsreg/SmsRegService$1;->this$0:Lcom/mediatek/smsreg/SmsRegService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x0

    .line 358
    const-string v0, "SmsReg/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service state change sim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService$1;->this$0:Lcom/mediatek/smsreg/SmsRegService;

    #calls: Lcom/mediatek/smsreg/SmsRegService;->getSimCardMatchCustomizedGemini()V
    invoke-static {v0}, Lcom/mediatek/smsreg/SmsRegService;->access$000(Lcom/mediatek/smsreg/SmsRegService;)V

    .line 362
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService$1;->this$0:Lcom/mediatek/smsreg/SmsRegService;

    #getter for: Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/smsreg/SmsRegService;->access$100(Lcom/mediatek/smsreg/SmsRegService;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService$1;->this$0:Lcom/mediatek/smsreg/SmsRegService;

    #calls: Lcom/mediatek/smsreg/SmsRegService;->isNeedRegisterGemini()Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/mediatek/smsreg/SmsRegService;->access$200(Lcom/mediatek/smsreg/SmsRegService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService$1;->this$0:Lcom/mediatek/smsreg/SmsRegService;

    #calls: Lcom/mediatek/smsreg/SmsRegService;->sendRegisterMessageGemini(I)V
    invoke-static {v0, v3}, Lcom/mediatek/smsreg/SmsRegService;->access$300(Lcom/mediatek/smsreg/SmsRegService;I)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const-string v0, "SmsReg/Service"

    const-string v1, "Sim card 1 is not the right operator"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
