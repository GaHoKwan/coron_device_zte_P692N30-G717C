.class public Lcom/mediatek/settings/CallBarringChangePassword;
.super Lcom/android/phone/EditPinPreference;
.source "CallBarringChangePassword.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CallBarringChangePassword$1;,
        Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_SIM:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallChangePassword"

.field private static final PASSWORD_CHANGE_NEW:I = 0x1

.field private static final PASSWORD_CHANGE_OLD:I = 0x0

.field private static final PASSWORD_CHANGE_REENTER:I = 0x2

.field private static final PASSWORD_LENGTH:I = 0x4


# instance fields
.field private mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mPasswordChangeState:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mTcpListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPinPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;-><init>(Lcom/mediatek/settings/CallBarringChangePassword;Lcom/mediatek/settings/CallBarringChangePassword$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mHandler:Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;

    .line 75
    iput-object v1, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    .line 79
    iput-object v1, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mContext:Landroid/content/Context;

    .line 81
    iput-object v1, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mSimId:I

    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringChangePassword;->init(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/mediatek/phone/TimeConsumingPreferenceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/mediatek/settings/CallBarringInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CallBarringChangePassword;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringChangePassword;->displayMessage(I)V

    return-void
.end method

.method private displayMessage(I)V
    .locals 3
    .parameter "strId"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    return-void
.end method

.method private displayPasswordChangeDialog(IZ)V
    .locals 3
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, msgId:I
    iget v1, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mPasswordChangeState:I

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    if-eqz p1, :cond_1

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 115
    :goto_1
    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 118
    :cond_0
    return-void

    .line 97
    :pswitch_0
    const v0, 0x7f0800b2

    .line 98
    goto :goto_0

    .line 100
    :pswitch_1
    const v0, 0x7f0800b3

    .line 101
    goto :goto_0

    .line 103
    :pswitch_2
    const v0, 0x7f0800b5

    .line 104
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doChangePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    const/4 v3, 0x0

    .line 176
    const-string v0, "Settings/CallChangePassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doChangePassword() is called with oldPassword is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newPassword is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mHandler:Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 182
    .local v4, m:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "AB"

    iget v5, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mSimId:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->changeBarringPasswordGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AB"

    invoke-interface {v0, v1, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mContext:Landroid/content/Context;

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 198
    invoke-virtual {p0, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 199
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarringChangePassword;->resetPasswordChangeState()V

    .line 200
    return-void
.end method

.method private resetPasswordChangeState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mPasswordChangeState:I

    .line 122
    invoke-direct {p0, v0, v0}, Lcom/mediatek/settings/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mOldPassword:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 2
    .parameter "password"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v1, 0x7f0800b4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 129
    if-nez p2, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarringChangePassword;->resetPasswordChangeState()V

    .line 171
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mPasswordChangeState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mOldPassword:Ljava/lang/String;

    .line 136
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mOldPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallBarringChangePassword;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iput v2, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mPasswordChangeState:I

    .line 139
    invoke-direct {p0, v3, v2}, Lcom/mediatek/settings/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    .line 146
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallBarringChangePassword;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mPasswordChangeState:I

    .line 149
    invoke-direct {p0, v3, v2}, Lcom/mediatek/settings/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    iput v2, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mPasswordChangeState:I

    .line 157
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 158
    const v0, 0x7f0800b6

    invoke-direct {p0, v0, v2}, Lcom/mediatek/settings/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v3}, Lcom/mediatek/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mOldPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/CallBarringChangePassword;->doChangePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarringChangePassword;->resetPasswordChangeState()V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTimeConsumingListener(Lcom/mediatek/phone/TimeConsumingPreferenceListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "simId"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    .line 205
    check-cast p1, Lcom/mediatek/settings/CallBarringInterface;

    .end local p1
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

    .line 206
    iput p2, p0, Lcom/mediatek/settings/CallBarringChangePassword;->mSimId:I

    .line 207
    return-void
.end method
