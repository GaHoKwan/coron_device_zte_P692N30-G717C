.class Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;
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
    name = "GCNoSimRule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/EmergencyRuleHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)I
    .locals 2
    .parameter "number"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v0, v0, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v0, v0, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const-string v1, "GCNoSimRule: there are/is sim insert."

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 98
    const/4 v0, -0x1

    .line 107
    :goto_0
    return v0

    .line 102
    :cond_1
    const-string v0, "120"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "110"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "119"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const-string v1, "met \'120/110/119\' when no sim, so dial from cdma."

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v0

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const-string v1, "met numbers not in \'120/110/119\' when no sim, so dial from gsm."

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v0

    goto :goto_0
.end method
