.class public Lcom/mediatek/engineermode/cfu/CfuActivity;
.super Landroid/app/Activity;
.source "CfuActivity.java"


# static fields
.field private static final CHECK_BTN_ERROR:I = 0xa

.field private static final FORE_CMD:Ljava/lang/String; = "+ESSP:"

.field private static final QUERY:I = 0x1

.field private static final SET_DEFAULT:I = 0x2

.field private static final SET_OFF:I = 0x4

.field private static final SET_ON:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CFU"


# instance fields
.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRadioBtnDe:Landroid/widget/RadioButton;

.field private mRadioBtnOff:Landroid/widget/RadioButton;

.field private mRadioBtnOn:Landroid/widget/RadioButton;

.field private final mResponseHander:Landroid/os/Handler;

.field private mSlot:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mSlot:I

    .line 88
    new-instance v0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cfu/CfuActivity$1;-><init>(Lcom/mediatek/engineermode/cfu/CfuActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mResponseHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnDe:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOff:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->createDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->sendAtCommand(I)V

    return-void
.end method

.method private createCmd(I)[Ljava/lang/String;
    .locals 5
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 219
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 220
    .local v0, cmd:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 238
    const-string v1, "AT+ESSP?"

    aput-object v1, v0, v4

    .line 239
    const-string v1, "+ESSP"

    aput-object v1, v0, v2

    .line 242
    :goto_0
    const-string v1, "CFU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-object v0

    .line 222
    :pswitch_0
    const-string v1, "AT+ESSP?"

    aput-object v1, v0, v4

    .line 223
    const-string v1, "+ESSP"

    aput-object v1, v0, v2

    goto :goto_0

    .line 226
    :pswitch_1
    const-string v1, "AT+ESSP=0"

    aput-object v1, v0, v4

    .line 227
    const-string v1, ""

    aput-object v1, v0, v2

    goto :goto_0

    .line 230
    :pswitch_2
    const-string v1, "AT+ESSP=2"

    aput-object v1, v0, v4

    .line 231
    const-string v1, ""

    aput-object v1, v0, v2

    goto :goto_0

    .line 234
    :pswitch_3
    const-string v1, "AT+ESSP=1"

    aput-object v1, v0, v4

    .line 235
    const-string v1, ""

    aput-object v1, v0, v2

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    :pswitch_0
    return-void

    .line 252
    :pswitch_1
    const-string v1, "Set Failed!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Set Default Status Failed!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 256
    :pswitch_2
    const-string v1, "Set Failed!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Open Query Status Failed!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 260
    :pswitch_3
    const-string v1, "Set Failed!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Close Query Status Failed!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 264
    :pswitch_4
    const-string v1, "Warning!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please chose a item!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private sendAtCommand(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->createCmd(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mResponseHander:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mSlot:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    .line 210
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 157
    const v2, 0x7f0b00cd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnDe:Landroid/widget/RadioButton;

    .line 158
    const v2, 0x7f0b00ce

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOn:Landroid/widget/RadioButton;

    .line 159
    const v2, 0x7f0b00cf

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOff:Landroid/widget/RadioButton;

    .line 160
    const v2, 0x7f0b00d0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 163
    .local v0, buttonOk:Landroid/widget/Button;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 164
    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v3, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mSlot:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 165
    iput v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mSlot:I

    .line 171
    :cond_0
    const-string v2, "persist.ril.cfu.querytype"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, cfuSetting:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnDe:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 183
    :goto_0
    new-instance v2, Lcom/mediatek/engineermode/cfu/CfuActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/cfu/CfuActivity$2;-><init>(Lcom/mediatek/engineermode/cfu/CfuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void

    .line 174
    :cond_1
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOff:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 176
    :cond_2
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 179
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
