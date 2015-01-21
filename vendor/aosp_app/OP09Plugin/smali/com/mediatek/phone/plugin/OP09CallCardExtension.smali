.class public Lcom/mediatek/phone/plugin/OP09CallCardExtension;
.super Lcom/mediatek/phone/ext/CallCardExtension;
.source "OP09CallCardExtension.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "OP09CallCardExtension"


# instance fields
.field private mCallAndSimIndicator:Landroid/widget/RelativeLayout;

.field private mHostSimIndicatorParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPluginCallAndSimIndicator:Landroid/widget/RelativeLayout;

.field private mPluginContext:Landroid/content/Context;

.field private mPluginSimIndicator:Landroid/widget/TextView;

.field private mSimIndicator:Landroid/widget/TextView;

.field private mSimIndicatorMarginRight:I

.field private mSimIndicatorMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "pluginContext"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mediatek/phone/ext/CallCardExtension;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 77
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 196
    const-string v0, "OP09CallCardExtension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method


# virtual methods
.method public displayMainCallStatus(Lcom/android/internal/telephony/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 11
    .parameter "call"
    .parameter "simInfo"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayMainCallStatus(), call = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->log(Ljava/lang/String;)V

    .line 114
    if-nez p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 119
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 130
    :goto_1
    if-nez v0, :cond_4

    .line 132
    const-string v5, "displayMainCallStatus(), connection is null, just return"

    invoke-static {v5}, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    if-eq v3, v7, :cond_2

    if-ne v3, v9, :cond_3

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_3
    const-string v5, "displayMainCallStatus(), Not GSM and CDMA, just return"

    invoke-static {v5}, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 138
    const-string v5, "displayMainCallStatus(), set sim indicator"

    invoke-static {v5}, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->log(Ljava/lang/String;)V

    .line 140
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-ne v10, v5, :cond_9

    .line 142
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v5

    if-nez v5, :cond_7

    .line 143
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :goto_2
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_f

    .line 168
    if-eqz p2, :cond_c

    .line 169
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginSimIndicator:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_4
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_d

    .line 174
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mHostSimIndicatorParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 185
    :goto_5
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginCallAndSimIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mHostSimIndicatorParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :goto_6
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 145
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v5

    if-ne v7, v5, :cond_8

    .line 146
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200be

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 150
    :cond_8
    const-string v5, "displayMainCallStatus(), slot id is not GEMINI_SIM_1 or GEMINI_SIM_2, just return"

    invoke-static {v5}, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_9
    if-eqz p2, :cond_6

    .line 156
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    sget-object v6, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightSmallRes:[I

    iget v7, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 158
    :cond_a
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    .line 159
    if-ne v3, v9, :cond_b

    .line 160
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 162
    :cond_b
    if-eqz p2, :cond_6

    .line 163
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    sget-object v6, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightSmallRes:[I

    iget v7, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 171
    :cond_c
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginSimIndicator:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 176
    :cond_d
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 177
    .local v2, paint:Landroid/graphics/Paint;
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 178
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v1, v5

    .line 179
    .local v1, inputWidth:I
    iget v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicatorMaxWidth:I

    if-le v1, v5, :cond_e

    .line 180
    iget v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicatorMaxWidth:I

    .line 182
    :cond_e
    iget v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicatorMarginRight:I

    add-int v4, v1, v5

    .line 183
    .local v4, rightPending:I
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mHostSimIndicatorParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8, v8, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_5

    .line 190
    .end local v1           #inputWidth:I
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v4           #rightPending:I
    :cond_f
    iget-object v5, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginCallAndSimIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public onFinishInflate(Landroid/view/View;)V
    .locals 6
    .parameter "callCard"

    .prologue
    const/4 v5, 0x0

    .line 81
    const-string v1, "onFinishInflate()"

    invoke-static {v1}, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->log(Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "simIndicator"

    const-string v3, "id"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "callStateAndSimIndicate"

    const-string v3, "id"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mCallAndSimIndicator:Landroid/widget/RelativeLayout;

    .line 93
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicatorMaxWidth:I

    .line 96
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicatorMarginRight:I

    .line 97
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginCallAndSimIndicator:Landroid/widget/RelativeLayout;

    .line 98
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginCallAndSimIndicator:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginSimIndicator:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mCallAndSimIndicator:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mPluginCallAndSimIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 101
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mHostSimIndicatorParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mHostSimIndicatorParams:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicatorMarginRight:I

    add-int v0, v1, v2

    .line 104
    .local v0, rightPending:I
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mHostSimIndicatorParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 105
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mSimIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/phone/plugin/OP09CallCardExtension;->mHostSimIndicatorParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .end local v0           #rightPending:I
    :cond_0
    return-void
.end method
