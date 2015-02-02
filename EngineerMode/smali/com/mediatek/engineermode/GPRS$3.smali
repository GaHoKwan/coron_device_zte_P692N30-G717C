.class Lcom/mediatek/engineermode/GPRS$3;
.super Ljava/lang/Object;
.source "GPRS.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/GPRS;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/GPRS;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/GPRS;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mediatek/engineermode/GPRS$3;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b019d

    if-ne v1, v2, :cond_0

    .line 312
    const-string v1, "persist.radio.gprs.attach.type"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "AT+EGTYPE=1"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    .line 315
    .local v0, cmdStr:[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$3;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$200(Lcom/mediatek/engineermode/GPRS;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS$3;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/GPRS;->access$100(Lcom/mediatek/engineermode/GPRS;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 321
    .end local v0           #cmdStr:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b019e

    if-ne v1, v2, :cond_1

    .line 322
    const-string v1, "persist.radio.gprs.attach.type"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "AT+EGTYPE=0"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    .line 325
    .restart local v0       #cmdStr:[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$3;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$200(Lcom/mediatek/engineermode/GPRS;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS$3;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/GPRS;->access$100(Lcom/mediatek/engineermode/GPRS;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 331
    .end local v0           #cmdStr:[Ljava/lang/String;
    :cond_1
    return-void
.end method
