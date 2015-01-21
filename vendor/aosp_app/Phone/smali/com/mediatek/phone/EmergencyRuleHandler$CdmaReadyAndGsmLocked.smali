.class Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;
.super Ljava/lang/Object;
.source "EmergencyRuleHandler.java"

# interfaces
.implements Lcom/mediatek/phone/EmergencyRuleHandler$RuleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/EmergencyRuleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CdmaReadyAndGsmLocked"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/EmergencyRuleHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)I
    .locals 8
    .parameter "number"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v2, -0x1

    .line 231
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const-string v4, "CdmaReadyAndGsmLocked: handleRequest..."

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v3, v3, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v3, v3, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v3, v3, Lcom/mediatek/phone/EmergencyRuleHandler;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v1

    .line 238
    .local v1, gsmState:I
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v3, v3, Lcom/mediatek/phone/EmergencyRuleHandler;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v4, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v0

    .line 239
    .local v0, cdmaState:I
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaReadyAndGsmLocked: gsmState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v5, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaReadyAndGsmLocked: cdmaState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v5, v0}, Lcom/mediatek/phone/EmergencyRuleHandler;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 242
    if-ne v0, v7, :cond_0

    if-eq v1, v7, :cond_0

    .line 246
    if-ne v0, v7, :cond_0

    .line 247
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto :goto_0
.end method
