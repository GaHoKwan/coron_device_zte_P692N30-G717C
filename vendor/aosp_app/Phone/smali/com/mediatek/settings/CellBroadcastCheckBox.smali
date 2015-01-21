.class public Lcom/mediatek/settings/CellBroadcastCheckBox;
.super Landroid/preference/CheckBoxPreference;
.source "CellBroadcastCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CellBroadcastCheckBox$1;,
        Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;
    }
.end annotation


# static fields
.field private static final CB_SLOT1_TO_SIMID:Ljava/lang/String; = "cellbroadcast_slot1_map_soltid"

.field private static final CB_SLOT2_TO_SIMID:Ljava/lang/String; = "cellbroadcast_slot2_map_soltid"

.field private static final CB_SLOT3_TO_SIMID:Ljava/lang/String; = "cellbroadcast_slot3_map_soltid"

.field private static final CB_SLOT4_TO_SIMID:Ljava/lang/String; = "cellbroadcast_slot4_map_soltid"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CellBroadcastCheckBox"

.field private static final MESSAGE_GET_STATE:I = 0x64

.field private static final MESSAGE_SET_STATE:I = 0x65

.field private static final mSidIds:[Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

.field private mLastCheckStatus:Z

.field private mListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cellbroadcast_slot1_map_soltid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cellbroadcast_slot2_map_soltid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cellbroadcast_slot3_map_soltid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cellbroadcast_slot4_map_soltid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSidIds:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;-><init>(Lcom/mediatek/settings/CellBroadcastCheckBox;Lcom/mediatek/settings/CellBroadcastCheckBox$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    .line 95
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CellBroadcastCheckBox;)Lcom/mediatek/phone/TimeConsumingPreferenceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CellBroadcastCheckBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mLastCheckStatus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CellBroadcastCheckBox;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getCBState(Z)V

    return-void
.end method

.method private getCBState(Z)V
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x65

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 144
    if-eqz p1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    invoke-virtual {v1, v2, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->queryCellBroadcastSmsActivationGemini(Landroid/os/Message;I)V

    .line 155
    :goto_1
    if-eqz p1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_0

    .line 157
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, p1}, Lcom/mediatek/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 160
    :cond_0
    return-void

    .line 147
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private isSimIdChanged(I)Z
    .locals 8
    .parameter "slotId"

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/mediatek/telephony/SimInfoManager;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v2

    .line 192
    .local v2, currentSimId:J
    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    sget-object v5, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSidIds:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 193
    .local v0, beforeSimdId:J
    const-string v4, "Settings/CellBroadcastCheckBox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentSimId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " beforeSimdId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 195
    const/4 v4, 0x1

    .line 197
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private saveSimId(I)V
    .locals 4
    .parameter "slotId"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/mediatek/telephony/SimInfoManager;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v1

    .line 178
    .local v1, simId:J
    invoke-virtual {p0}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 180
    sget-object v3, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSidIds:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    :cond_0
    return-void
.end method

.method private setCBState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 164
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSlotId:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->activateCellBroadcastSmsGemini(ILandroid/os/Message;I)V

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/mediatek/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 174
    :cond_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method init(Lcom/mediatek/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 6
    .parameter "listener"
    .parameter "skipReading"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x0

    .line 108
    const-string v2, "Settings/CellBroadcastCheckBox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/mediatek/phone/TimeConsumingPreferenceListener;

    .line 110
    iput p3, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSlotId:I

    .line 112
    if-nez p2, :cond_0

    .line 113
    check-cast p1, Lcom/mediatek/settings/CellBroadcastActivity;

    .end local p1
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 117
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget v2, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSlotId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .line 122
    .local v0, hasIccCard:Z
    :goto_0
    const-string v2, "Settings/CellBroadcastCheckBox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasIccCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v0, :cond_3

    .line 127
    invoke-direct {p0, p3}, Lcom/mediatek/settings/CellBroadcastCheckBox;->isSimIdChanged(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-virtual {p0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 129
    invoke-direct {p0, p3}, Lcom/mediatek/settings/CellBroadcastCheckBox;->saveSimId(I)V

    .line 140
    .end local v0           #hasIccCard:Z
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return-void

    .line 120
    .restart local v1       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .restart local v0       #hasIccCard:Z
    goto :goto_0

    .line 132
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getCBState(Z)V

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 137
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    .line 101
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 102
    .local v0, state:Z
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mLastCheckStatus:Z

    .line 103
    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setCBState(I)V

    .line 104
    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 105
    return-void

    :cond_0
    move v1, v3

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1

    :cond_2
    move v2, v3

    .line 104
    goto :goto_2
.end method
