.class public Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
.super Landroid/widget/TextView;
.source "CarrierLabelGemini.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarrierLabelGemini"


# instance fields
.field private mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

.field private mNetworkNameSeparator:Ljava/lang/String;

.field private mSlotId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mSlotId:I

    .line 43
    const-class v0, Lcom/mediatek/common/policy/IOperatorSIMString;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/policy/IOperatorSIMString;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    .line 56
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 60
    :cond_0
    invoke-virtual {p0, v2, v3, v2, v3}, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mNetworkNameSeparator:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getSlotId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mSlotId:I

    return v0
.end method

.method public setSlotId(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mSlotId:I

    .line 66
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 78
    const v3, 0x10400ed

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :goto_0
    return-void

    .line 80
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mSlotId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mSlotId:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10402f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, carrierText:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mSlotId:I

    sget-object v6, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->SIMTOUIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    .end local v0           #carrierText:Ljava/lang/CharSequence;
    :cond_1
    const-string v3, "CarrierLabelGemini"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNetworkName, showSpn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showPlmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " plmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v2, str:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 91
    .local v1, something:Z
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 92
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const/4 v1, 0x1

    .line 95
    :cond_2
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 96
    if-eqz v1, :cond_3

    .line 97
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/4 v1, 0x1

    .line 102
    :cond_4
    if-eqz v1, :cond_5

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 105
    :cond_5
    const v3, 0x10402e6

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
