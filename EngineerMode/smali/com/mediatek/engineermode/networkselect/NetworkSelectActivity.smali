.class public Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;
.super Landroid/app/Activity;
.source "NetworkSelectActivity.java"


# static fields
.field private static final EVENT_QUERY_NETWORKMODE_DONE:I = 0x65

.field private static final EVENT_SET_NETWORKMODE_DONE:I = 0x66

.field private static final GSM_ONLY:I = 0x1

.field private static final GSM_ONLY_INDEX:I = 0x1

.field private static final GSM_ONLY_INDEX_TD:I = 0x0

.field private static final GSM_WCDMA_AUTO:I = 0x3

.field private static final GSM_WCDMA_AUTO_INDEX:I = 0x3

.field private static final GSM_WCDMA_AUTO_INDEX_TD:I = 0x2

.field public static final MODEM_FDD:I = 0x1

.field public static final MODEM_MASK_TDSCDMA:I = 0x8

.field public static final MODEM_MASK_WCDMA:I = 0x4

.field public static final MODEM_NO3G:I = 0x3

.field public static final MODEM_TD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EM/NetworkMode"

.field private static final WCDMA_ONLY:I = 0x2

.field private static final WCDMA_ONLY_INDEX:I = 0x2

.field private static final WCDMA_ONLY_INDEX_TD:I = 0x1

.field private static final WCDMA_PREFERRED:I

.field private static final WCDMA_PREFERRED_INDEX:I


# instance fields
.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mModemType:I

.field private mNetworkTypeValues:[I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkSpinner:Landroid/widget/Spinner;

.field private mSimType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 58
    iput-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mSimType:I

    .line 64
    iput-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;

    .line 116
    new-instance v0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;-><init>(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 145
    new-instance v0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;-><init>(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mSimType:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mNetworkTypeValues:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mModemType:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private getModemType()I
    .locals 7

    .prologue
    .line 213
    iget v4, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mSimType:I

    if-nez v4, :cond_0

    .line 214
    const-string v4, "gsm.baseband.capability"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, mt:Ljava/lang/String;
    const-string v4, "EM/NetworkMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.baseband.capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    const/4 v2, 0x3

    .line 222
    .local v2, mode:I
    if-nez v3, :cond_1

    .line 223
    const/4 v2, 0x3

    .line 238
    :goto_1
    return v2

    .line 217
    .end local v2           #mode:I
    .end local v3           #mt:Ljava/lang/String;
    :cond_0
    const-string v4, "gsm.baseband.capability2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .restart local v3       #mt:Ljava/lang/String;
    const-string v4, "EM/NetworkMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.baseband.capability2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    .restart local v2       #mode:I
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    .local v1, mask:I
    and-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 228
    const/4 v2, 0x2

    goto :goto_1

    .line 229
    :cond_2
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 230
    const/4 v2, 0x1

    goto :goto_1

    .line 232
    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    .line 234
    .end local v1           #mask:I
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x3

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x1090009

    const v4, 0x1090008

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f030066

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mSimType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mSimType:I

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 77
    const v1, 0x7f0b0361

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->getModemType()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mModemType:I

    .line 79
    iget v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mModemType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 81
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mNetworkTypeValues:[I

    .line 82
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 84
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 85
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 97
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 98
    return-void

    .line 86
    :cond_0
    iget v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mModemType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 87
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mNetworkTypeValues:[I

    .line 88
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 90
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 91
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 94
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    const-string v1, "EM/NetworkMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Isn\'t TD/WCDMA modem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mModemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 87
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mSimType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    return-void
.end method
