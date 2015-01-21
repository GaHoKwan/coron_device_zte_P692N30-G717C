.class public Lcom/mediatek/settings/plugin/AudioProfileExt;
.super Landroid/content/ContextWrapper;
.source "AudioProfileExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IAudioProfileExt;


# static fields
.field private static final ACTION_SENDTO_DELIVERED:Ljava/lang/String; = "com.mediatek.ct.csm.action.ACTION_DELIVERED"

.field private static final ACTION_SENDTO_SEND:Ljava/lang/String; = "com.mediatek.ct.csm.action.ACTION_SEND"

.field private static final CRBT_SETTINGS_KEY:Ljava/lang/String; = "crtb_settings_key"

.field private static final CT_COLOR_RING_BACK_TONE_ADDRESS:Ljava/lang/String; = "118100"

.field private static final CT_COLOR_RING_BACK_TONE_CONTENT:Ljava/lang/String; = "sla"

.field private static final TAG:Ljava/lang/String; = "AudioProfileExt09"


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mCrbtPreferernce:Landroid/preference/Preference;

.field private mFragment:Landroid/app/Fragment;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mImageView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mTextView:Landroid/widget/TextView;

    .line 93
    iput-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 94
    iput-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mImageView:Landroid/widget/ImageView;

    .line 100
    new-instance v0, Lcom/mediatek/settings/plugin/AudioProfileExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/AudioProfileExt$1;-><init>(Lcom/mediatek/settings/plugin/AudioProfileExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/plugin/AudioProfileExt;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->hideProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/AudioProfileExt;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/AudioProfileExt;->showInfoAsToast(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/plugin/AudioProfileExt;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->updateCrbtPreference()V

    return-void
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "AudioProfileExt09"

    const-string v1, "hideProgress: dismiss progress dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 284
    :cond_0
    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mIntentFilter:Landroid/content/IntentFilter;

    .line 230
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.ct.csm.action.ACTION_SEND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private isCdmaSimEnabled()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 293
    iget-object v7, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v7, :cond_0

    .line 294
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 296
    :cond_0
    const/4 v1, 0x0

    .line 297
    .local v1, cmdaSlot:I
    const/4 v0, 0x0

    .line 299
    .local v0, cdmaSimInserted:Z
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v7, v1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 303
    :goto_0
    const/4 v3, 0x0

    .line 305
    .local v3, radioOn:Z
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v7, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 309
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    move v4, v5

    .line 311
    .local v4, simStateReady:Z
    :goto_2
    const-string v7, "AudioProfileExt09"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCdmaSimEnabled cdmaSimInserted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", radioOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simStateReady="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    :goto_3
    return v5

    .line 300
    .end local v3           #radioOn:Z
    .end local v4           #simStateReady:Z
    :catch_0
    move-exception v2

    .line 301
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "AudioProfileExt09"

    const-string v8, "isCdmaSimEnabled query simInsert error"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #radioOn:Z
    :catch_1
    move-exception v2

    .line 307
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v7, "AudioProfileExt09"

    const-string v8, "isCdmaSimEnabled query radioon error"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Landroid/os/RemoteException;
    :cond_1
    move v4, v6

    .line 309
    goto :goto_2

    .restart local v4       #simStateReady:Z
    :cond_2
    move v5, v6

    .line 313
    goto :goto_3
.end method

.method private makeSmsDialogTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "address"
    .parameter "message"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, sending:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, to:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private sendSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "simId"
    .parameter "address"
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 236
    iget-object v3, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 237
    const-string v3, "AudioProfileExt09"

    const-string v4, "sendSms: No context!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v3, "AudioProfileExt09"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSms by sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.ct.csm.action.ACTION_SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 244
    .local v2, sentIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.ct.csm.action.ACTION_DELIVERED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 247
    .local v0, deliveryIntent:Landroid/app/PendingIntent;
    invoke-static {p3, p4, p2, v2, v0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 250
    iget-object v3, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, dialogMessage:Ljava/lang/String;
    invoke-direct {p0, p3, p4}, Lcom/mediatek/settings/plugin/AudioProfileExt;->makeSmsDialogTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lcom/mediatek/settings/plugin/AudioProfileExt;->showProgress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendTextMessage(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "addr"
    .parameter "msg"
    .parameter "simId"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 319
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 324
    return-void
.end method

.method private showInfoAsToast(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    :cond_0
    return-void
.end method

.method private showProgress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->hideProgress()V

    .line 267
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    .line 270
    :cond_0
    const-string v0, "AudioProfileExt09"

    const-string v1, "showProgress: create progress dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 275
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 276
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 277
    return-void
.end method

.method private updateCrbtPreference()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mCrbtPreferernce:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mCrbtPreferernce:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->isCdmaSimEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomizedPreference(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter "preferenceScreen"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f090069

    .line 186
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    .local v1, crbtSettingsCateGory:Landroid/preference/PreferenceCategory;
    iget-object v2, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    .line 189
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    .local v0, crbtSettings:Landroid/preference/Preference;
    const-string v2, "crtb_settings_key"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 4
    .parameter "defaultLayoutId"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 140
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mTextView:Landroid/widget/TextView;

    .line 141
    return-object v0
.end method

.method public getPrefImageView(I)Landroid/view/View;
    .locals 1
    .parameter "defaultImageViewId"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrefRadioButton(I)Landroid/view/View;
    .locals 1
    .parameter "defaultRBId"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getPreferenceSummary(I)Landroid/view/View;
    .locals 1
    .parameter "defaultSummaryId"

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceTitle(I)Landroid/view/View;
    .locals 1
    .parameter "defaultTitleId"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isPrefEditable()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onAudioProfileSettingPaused(Landroid/preference/PreferenceFragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    return-void
.end method

.method public onAudioProfileSettingResumed(Landroid/preference/PreferenceFragment;)V
    .locals 4
    .parameter "fragment"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt;->initIntentFilter()V

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "crtb_settings_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 212
    .local v0, crbtSettings:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mCrbtPreferernce:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mCrbtPreferernce:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    :cond_1
    iput-object v0, p0, Lcom/mediatek/settings/plugin/AudioProfileExt;->mCrbtPreferernce:Landroid/preference/Preference;

    .line 215
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtb_settings_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "118100"

    const-string v2, "sla"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/mediatek/settings/plugin/AudioProfileExt;->sendSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    return v3
.end method

.method public setRingerVolume(Landroid/media/AudioManager;I)V
    .locals 2
    .parameter "audiomanager"
    .parameter "volume"

    .prologue
    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 174
    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 176
    return-void
.end method

.method public setRingtonePickerParams(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 166
    const-string v0, "android.intent.extra.ringtone.SHOW_MORE_RINGTONES"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    return-void
.end method

.method public setVolume(Landroid/media/AudioManager;II)V
    .locals 1
    .parameter "audiomanager"
    .parameter "streamType"
    .parameter "volume"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 181
    return-void
.end method
