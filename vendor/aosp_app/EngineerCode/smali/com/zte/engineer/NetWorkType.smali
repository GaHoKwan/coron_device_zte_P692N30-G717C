.class public Lcom/zte/engineer/NetWorkType;
.super Lcom/zte/engineer/EmActivity;
.source "NetWorkType.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_PHONE_STATE_CHANGED:I = 0x64

.field private static final EVENT_QUERY_PREFERRED_TYPE_DONE:I = 0x3e8

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SET_PREFERRED_TYPE_DONE:I = 0x3e9

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "NetWorkType"


# instance fields
.field private final WC:I

.field private button1:Landroid/widget/RadioButton;

.field private button2:Landroid/widget/RadioButton;

.field private button3:Landroid/widget/RadioButton;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkRadioGroup:Landroid/widget/RadioGroup;

.field private mOkBtn:Landroid/widget/Button;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTitleTextView:Landroid/widget/TextView;

.field params:Landroid/widget/RadioGroup$LayoutParams;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 30
    const/4 v0, -0x2

    iput v0, p0, Lcom/zte/engineer/NetWorkType;->WC:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->phone:Lcom/android/internal/telephony/Phone;

    .line 61
    new-instance v0, Lcom/zte/engineer/NetWorkType$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/NetWorkType$1;-><init>(Lcom/zte/engineer/NetWorkType;)V

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 144
    new-instance v0, Lcom/zte/engineer/NetWorkType$3;

    invoke-direct {v0, p0}, Lcom/zte/engineer/NetWorkType$3;-><init>(Lcom/zte/engineer/NetWorkType;)V

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/NetWorkType;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->button1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/engineer/NetWorkType;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->button2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/engineer/NetWorkType;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->button3:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/engineer/NetWorkType;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 44
    const-string v0, "NetWorkType"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    add-int/lit16 v0, v2, -0x7d0

    .line 139
    .local v0, index:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zte/engineer/NetWorkType;->log(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/zte/engineer/NetWorkType;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 141
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/zte/engineer/NetWorkType;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, -0x2

    .line 71
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "onCreate"

    invoke-virtual {p0, v0}, Lcom/zte/engineer/NetWorkType;->log(Ljava/lang/String;)V

    .line 74
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->mTitleTextView:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f06009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->mNetworkRadioGroup:Landroid/widget/RadioGroup;

    .line 81
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->button1:Landroid/widget/RadioButton;

    .line 82
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->button1:Landroid/widget/RadioButton;

    const v1, 0x7f06009b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->button1:Landroid/widget/RadioButton;

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 84
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->params:Landroid/widget/RadioGroup$LayoutParams;

    .line 85
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mNetworkRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/zte/engineer/NetWorkType;->button1:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/engineer/NetWorkType;->params:Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->button2:Landroid/widget/RadioButton;

    .line 89
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->button2:Landroid/widget/RadioButton;

    const v1, 0x7f06009c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->button2:Landroid/widget/RadioButton;

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 91
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->params:Landroid/widget/RadioGroup$LayoutParams;

    .line 92
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mNetworkRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/zte/engineer/NetWorkType;->button2:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/engineer/NetWorkType;->params:Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->button3:Landroid/widget/RadioButton;

    .line 96
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->button3:Landroid/widget/RadioButton;

    const v1, 0x7f06009d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->button3:Landroid/widget/RadioButton;

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 98
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->params:Landroid/widget/RadioGroup$LayoutParams;

    .line 99
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mNetworkRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/zte/engineer/NetWorkType;->button3:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/engineer/NetWorkType;->params:Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mNetworkRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 102
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 105
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->phone:Lcom/android/internal/telephony/Phone;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/zte/engineer/NetWorkType;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 108
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 109
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 110
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 112
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/zte/engineer/NetWorkType;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 115
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/engineer/NetWorkType;->mOkBtn:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mOkBtn:Landroid/widget/Button;

    new-instance v1, Lcom/zte/engineer/NetWorkType$2;

    invoke-direct {v1, p0}, Lcom/zte/engineer/NetWorkType$2;-><init>(Lcom/zte/engineer/NetWorkType;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 127
    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/zte/engineer/NetWorkType;->log(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 129
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/zte/engineer/NetWorkType;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 135
    return-void
.end method
