.class Lcom/mediatek/phone/EmergencyRuleHandler$DefaultHandler;
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
    name = "DefaultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/EmergencyRuleHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/mediatek/phone/EmergencyRuleHandler$DefaultHandler;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)I
    .locals 2
    .parameter "number"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler$DefaultHandler;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const-string v1, "Can\'t got here! something is wrong!"

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler$DefaultHandler;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v0

    return v0
.end method
