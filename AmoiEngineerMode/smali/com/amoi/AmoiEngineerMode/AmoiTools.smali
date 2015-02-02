.class public Lcom/amoi/AmoiEngineerMode/AmoiTools;
.super Landroid/app/Activity;
.source "AmoiTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EVENT_GET_IMEI1_DONE:I = 0x1

.field private static final EVENT_GET_IMEI2_DONE:I = 0x3

.field private static final EVENT_SET_IMEI1_DONE:I = 0x0

.field private static final EVENT_SET_IMEI2_DONE:I = 0x2

.field protected static final GEMINI_SIM_1:I = 0x0

.field protected static final GEMINI_SIM_2:I = 0x1


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field protected ar:Landroid/os/AsyncResult;

.field private imei1_info:Landroid/widget/TextView;

.field private imei1_input:Landroid/widget/EditText;

.field private imei2_info:Landroid/widget/TextView;

.field private imei2_input:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-string v0, "AmoiTools"

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->LOG_TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;-><init>(Lcom/amoi/AmoiEngineerMode/AmoiTools;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/AmoiTools;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei1_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/AmoiTools;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei1_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/AmoiTools;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amoi/AmoiEngineerMode/AmoiTools;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei2_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amoi/AmoiEngineerMode/AmoiTools;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei2_input:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkIMEInumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "imei"

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readIMEI(I)V
    .locals 7
    .parameter "sim"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 110
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 111
    .local v2, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, imei:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    .line 113
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei1_info:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v3, :cond_2

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 119
    :cond_2
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 120
    .local v0, ImeiString:[Ljava/lang/String;
    if-nez p1, :cond_3

    .line 121
    const-string v3, "AT+EGMR=0,7"

    aput-object v3, v0, v6

    .line 122
    const-string v3, "+EGMR"

    aput-object v3, v0, v5

    .line 123
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 126
    :cond_3
    if-ne v5, p1, :cond_0

    .line 127
    const-string v3, "AT+EGMR=0,10"

    aput-object v3, v0, v6

    .line 128
    const-string v3, "+EGMR"

    aput-object v3, v0, v5

    .line 129
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    return-void
.end method


# virtual methods
.method protected foramtNumber(Landroid/os/AsyncResult;)Ljava/lang/String;
    .locals 6
    .parameter "ar2"

    .prologue
    .line 201
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v2, v5

    check-cast v2, [Ljava/lang/String;

    .line 202
    .local v2, newIMEI:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 204
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 205
    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 208
    .local v4, text:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 209
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 210
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_1

    const/16 v5, 0x39

    if-le v0, v5, :cond_2

    .line 211
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 212
    add-int/lit8 v1, v1, -0x1

    .line 208
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    .end local v0           #c:C
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const v4, 0x7f0600f4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 144
    .local v1, id:I
    new-array v0, v7, [Ljava/lang/String;

    .line 145
    .local v0, ImeiString:[Ljava/lang/String;
    const-string v2, ""

    .line 146
    .local v2, imei:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 148
    :sswitch_0
    invoke-direct {p0, v5}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->readIMEI(I)V

    goto :goto_0

    .line 151
    :sswitch_1
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei1_input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-direct {p0, v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->checkIMEInumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v3, :cond_1

    .line 157
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 159
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT+EGMR=1,7,\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 160
    const-string v3, "+EGMR"

    aput-object v3, v0, v6

    .line 161
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 165
    :sswitch_2
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei2_input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-direct {p0, v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->checkIMEInumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v3, :cond_3

    .line 171
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 173
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT+EGMR=1,10,\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 174
    const-string v3, "+EGMR"

    aput-object v3, v0, v6

    .line 175
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070004 -> :sswitch_0
        0x7f07000a -> :sswitch_1
        0x7f07000e -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->setContentView(I)V

    .line 91
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei1_info:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei2_info:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 94
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 96
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 98
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei1_input:Landroid/widget/EditText;

    .line 100
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei2_input:Landroid/widget/EditText;

    .line 101
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 102
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->readIMEI(I)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method
