.class Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;
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
    name = "CDMAOnlyRule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/EmergencyRuleHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)I
    .locals 8
    .parameter "number"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v3, -0x1

    .line 145
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const-string v4, "CDMAOnlyRule: handleRequest..."

    invoke-virtual {v2, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v2, v2, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v2, v2, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v7, :cond_1

    :cond_0
    move v2, v3

    .line 172
    :goto_0
    return v2

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v2, v2, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 151
    .local v0, slot:I
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    if-eq v0, v2, :cond_2

    move v2, v3

    .line 152
    goto :goto_0

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v2, v2, Lcom/mediatek/phone/EmergencyRuleHandler;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v1

    .line 157
    .local v1, state:I
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMAOnlyRule: simState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v5, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto :goto_0

    .line 162
    :cond_3
    const-string v2, "120"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "110"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "119"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "122"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    :cond_4
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto :goto_0

    .line 166
    :cond_5
    const-string v2, "112"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "911"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "999"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 169
    :cond_6
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v7}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 172
    goto/16 :goto_0
.end method
