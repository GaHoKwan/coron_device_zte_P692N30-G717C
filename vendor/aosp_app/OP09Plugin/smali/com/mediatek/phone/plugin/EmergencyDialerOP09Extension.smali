.class public Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;
.super Lcom/mediatek/phone/ext/EmergencyDialerExtension;
.source "EmergencyDialerOP09Extension.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$1;,
        Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$EmergencyDialerBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BAD_EMERGENCY_NUMBER_DIALOG:I = 0x0

.field private static final BOOLEAN:Ljava/lang/String; = "bool"

.field private static final BOOLEAN_NAME_CONFIG_ENABLE_DIALER_KEY_VIBRATION:Ljava/lang/String; = "config_enable_dialer_key_vibration"

.field private static final DBG:Z = true

.field private static final ID:Ljava/lang/String; = "id"

.field private static final ID_NAME_DIAL_BUTTON_CONTAINER:Ljava/lang/String; = "dialButtonContainer"

.field private static final ID_NAME_TOP:Ljava/lang/String; = "top"

.field private static final LOG_TAG:Ljava/lang/String; = "EmergencyDialerOP09Extension"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialButtonLeft:Landroid/widget/ImageButton;

.field private mDialButtonRight:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mEmergencyDialer:Lcom/mediatek/phone/ext/IEmergencyDialer;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mIsShowDialButton:Z

.field private mLastClickedDialButtonId:I

.field private mNewDialButtonContainer:Landroid/widget/LinearLayout;

.field private mPluginContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "pluginContext"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/ext/EmergencyDialerExtension;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mPluginContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 105
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->updateCallButtons()V

    return-void
.end method

.method private isDigitEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 277
    iget-object v1, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDigits:Landroid/widget/EditText;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 301
    const-string v0, "EmergencyDialerOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method private updateCallButtons()V
    .locals 10

    .prologue
    const v9, 0x7f0200b8

    const v8, 0x7f0200b6

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 160
    iget-boolean v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mIsShowDialButton:Z

    if-nez v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mNewDialButtonContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :cond_0
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.phone.extra.slot"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, slot:I
    if-eq v7, v3, :cond_6

    .line 167
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 168
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v2, :cond_1

    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v4, :cond_1

    .line 169
    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    .line 170
    .local v1, dialButtonShow:Landroid/widget/ImageButton;
    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    .line 171
    .local v0, dialButtonHide:Landroid/widget/ImageButton;
    :goto_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 172
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 173
    if-nez v3, :cond_4

    .line 174
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    .end local v0           #dialButtonHide:Landroid/widget/ImageButton;
    .end local v1           #dialButtonShow:Landroid/widget/ImageButton;
    .end local v2           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    :goto_2
    return-void

    .line 169
    .restart local v2       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    goto :goto_0

    .line 170
    .restart local v1       #dialButtonShow:Landroid/widget/ImageButton;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    goto :goto_1

    .line 176
    .restart local v0       #dialButtonHide:Landroid/widget/ImageButton;
    :cond_4
    const/4 v4, 0x1

    if-ne v4, v3, :cond_5

    .line 177
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 180
    :cond_5
    const-string v4, "slot is larger than 0 or 1"

    invoke-static {v4}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 185
    .end local v0           #dialButtonHide:Landroid/widget/ImageButton;
    .end local v1           #dialButtonShow:Landroid/widget/ImageButton;
    .end local v2           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_6
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 190
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 210
    const-string v0, "click dialButtonLeft button"

    invoke-static {v0}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->log(Ljava/lang/String;)V

    .line 211
    const v0, 0x7f0b000d

    iput v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mLastClickedDialButtonId:I

    .line 212
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mEmergencyDialer:Lcom/mediatek/phone/ext/IEmergencyDialer;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mEmergencyDialer:Lcom/mediatek/phone/ext/IEmergencyDialer;

    invoke-interface {v0}, Lcom/mediatek/phone/ext/IEmergencyDialer;->placeCall()V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 219
    const-string v0, "click dialButtonRight button"

    invoke-static {v0}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->log(Ljava/lang/String;)V

    .line 220
    const v0, 0x7f0b000e

    iput v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mLastClickedDialButtonId:I

    .line 221
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mEmergencyDialer:Lcom/mediatek/phone/ext/IEmergencyDialer;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mEmergencyDialer:Lcom/mediatek/phone/ext/IEmergencyDialer;

    invoke-interface {v0}, Lcom/mediatek/phone/ext/IEmergencyDialer;->placeCall()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x7f0b000d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/app/Activity;Lcom/mediatek/phone/ext/IEmergencyDialer;)V
    .locals 10
    .parameter "activity"
    .parameter "emergencyDialer"

    .prologue
    const/4 v9, 0x0

    .line 108
    iput-object p1, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    .line 109
    iput-object p2, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mEmergencyDialer:Lcom/mediatek/phone/ext/IEmergencyDialer;

    .line 111
    new-instance v6, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$EmergencyDialerBroadcastReceiver;

    invoke-direct {v6, p0, v9}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$EmergencyDialerBroadcastReceiver;-><init>(Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$1;)V

    iput-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 117
    .local v5, resource:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, packageName:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    const-string v7, "top"

    const-string v8, "id"

    invoke-virtual {v5, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 121
    .local v1, emergencyDialerLayout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 122
    const-string v6, "dialButtonContainer"

    const-string v7, "id"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, dialButtonContainer:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 127
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 128
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030012

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mNewDialButtonContainer:Landroid/widget/LinearLayout;

    .line 129
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mNewDialButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 130
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mNewDialButtonContainer:Landroid/widget/LinearLayout;

    const-string v7, "dialButtonContainer"

    const-string v8, "id"

    invoke-virtual {v5, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 132
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mNewDialButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mNewDialButtonContainer:Landroid/widget/LinearLayout;

    const v7, 0x7f0b000d

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    .line 134
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 135
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_0
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mNewDialButtonContainer:Landroid/widget/LinearLayout;

    const v7, 0x7f0b000e

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    .line 138
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    if-eqz v6, :cond_1

    .line 139
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .end local v0           #dialButtonContainer:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const-string v6, "config_show_onscreen_dial_button"

    const-string v7, "bool"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mIsShowDialButton:Z

    .line 147
    iget-boolean v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mIsShowDialButton:Z

    if-nez v6, :cond_2

    .line 148
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mNewDialButtonContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    :cond_2
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    const-string v7, "digits"

    const-string v8, "id"

    invoke-virtual {v5, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDigits:Landroid/widget/EditText;

    .line 153
    iget-object v6, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mHaptic:Lcom/android/phone/HapticFeedback;

    iget-object v7, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    const-string v8, "config_enable_dialer_key_vibration"

    const-string v9, "bool"

    invoke-virtual {v5, v8, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V

    .line 156
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->updateCallButtons()V

    .line 157
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    :cond_0
    iput-object v2, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    .line 285
    iput-object v2, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mEmergencyDialer:Lcom/mediatek/phone/ext/IEmergencyDialer;

    .line 286
    return-void
.end method

.method public placeCall(Ljava/lang/String;)Z
    .locals 8
    .parameter "lastNumber"

    .prologue
    const v7, 0x7f0b000e

    const v6, 0x7f0b000d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, isECCNumber:Z
    iget v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mLastClickedDialButtonId:I

    if-ne v6, v4, :cond_1

    .line 234
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v1

    .line 243
    :goto_0
    if-eqz v1, :cond_6

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "placing call to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->log(Ljava/lang/String;)V

    .line 247
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mEmergencyDialer:Lcom/mediatek/phone/ext/IEmergencyDialer;

    const/16 v4, 0x1a

    invoke-interface {v2, v4}, Lcom/mediatek/phone/ext/IEmergencyDialer;->playTone(I)V

    move v2, v3

    .line 273
    :goto_1
    return v2

    .line 236
    :cond_1
    iget v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mLastClickedDialButtonId:I

    if-ne v7, v4, :cond_2

    .line 237
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 240
    :cond_2
    const-string v3, "This extension do not click any dial button, but it\'s placeCall() is called, it\'s strange"

    invoke-static {v3}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    iget v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mLastClickedDialButtonId:I

    if-ne v6, v4, :cond_4

    .line 255
    const-string v4, "com.android.phone.extra.slot"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    :goto_2
    iget-object v2, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 263
    iget-object v2, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .end local v0           #intent:Landroid/content/Intent;
    :goto_3
    move v2, v3

    .line 273
    goto :goto_1

    .line 256
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_4
    iget v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mLastClickedDialButtonId:I

    if-ne v7, v4, :cond_5

    .line 257
    const-string v2, "com.android.phone.extra.slot"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 259
    :cond_5
    const-string v3, "This extension do not click any dial button, but it\'s placeCall() is called, it\'s strange"

    invoke-static {v3}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rejecting bad requested number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->log(Ljava/lang/String;)V

    .line 268
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDigits:Landroid/widget/EditText;

    if-eqz v4, :cond_7

    .line 269
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v4, v2, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 271
    :cond_7
    iget-object v4, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_3
.end method

.method public updateDialAndDeleteButtonStateEnabledAttr()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 196
    iget-object v3, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->isDigitEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->isDigitEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 201
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 196
    goto :goto_0

    :cond_3
    move v1, v2

    .line 199
    goto :goto_1
.end method
