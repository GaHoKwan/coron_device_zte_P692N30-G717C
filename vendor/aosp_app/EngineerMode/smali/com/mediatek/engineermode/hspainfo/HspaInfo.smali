.class public Lcom/mediatek/engineermode/hspainfo/HspaInfo;
.super Landroid/app/Activity;
.source "HspaInfo.java"


# static fields
.field private static final EVENT_HSPA_INFO:I = 0x1

.field private static final QUERY_CMD:Ljava/lang/String; = "AT+EHSM?"

.field private static final RESPONSE_CMD:Ljava/lang/String; = "+EHSM: "

.field private static final TAG:Ljava/lang/String; = "HspaInfo"


# instance fields
.field private mATCmdHander:Landroid/os/Handler;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 67
    iput-object v0, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 71
    new-instance v0, Lcom/mediatek/engineermode/hspainfo/HspaInfo$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hspainfo/HspaInfo$1;-><init>(Lcom/mediatek/engineermode/hspainfo/HspaInfo;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mATCmdHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hspainfo/HspaInfo;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->handleQuery([Ljava/lang/String;)V

    return-void
.end method

.method private handleQuery([Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 107
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 108
    const-string v2, "HspaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modem return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    aget-object v2, p1, v5

    const-string v3, "+EHSM: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    aget-object v4, p1, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, mode:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 112
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->updateUI(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1           #mode:[Ljava/lang/String;
    :goto_0
    return-void

    .line 114
    .restart local v1       #mode:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "HspaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modem return invalid mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: invalid mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #mode:[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mTextView:Landroid/widget/TextView;

    const-string v3, "Error: invalid mode."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUI(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 125
    invoke-static {}, Lcom/mediatek/engineermode/ModemCategory;->getModemType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, modeArray:[Ljava/lang/String;
    :goto_0
    if-ltz p1, :cond_0

    array-length v1, v0

    if-lt p1, v1, :cond_2

    .line 132
    :cond_0
    const-string v1, "HspaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modem return invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_1
    return-void

    .line 128
    .end local v0           #modeArray:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #modeArray:[Ljava/lang/String;
    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mTextView:Landroid/widget/TextView;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 88
    const v0, 0x7f0b02cc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mTextView:Landroid/widget/TextView;

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 95
    .local v0, cmd:[Ljava/lang/String;
    const-string v1, "AT+EHSM?"

    aput-object v1, v0, v3

    .line 96
    const-string v1, "+EHSM: "

    aput-object v1, v0, v4

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 99
    iget-object v1, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/mediatek/engineermode/hspainfo/HspaInfo;->mATCmdHander:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    .line 104
    return-void
.end method
