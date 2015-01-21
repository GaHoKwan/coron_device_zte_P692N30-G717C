.class public Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$NetworkSignalChangedCallbackGemini;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field static final CHATTY:Z = false

.field static final DEBUG:Z = false

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field static final TAG:Ljava/lang/String; = "NetworkControllerGemini"


# instance fields
.field private mAirplaneMode:Z

.field private mAlwaysShowCdmaRssi:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field private mCarrier1:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

.field private mCarrier2:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

.field private mCarrierDivider:Landroid/view/View;

.field private mCarrierList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;",
            ">;"
        }
    .end annotation
.end field

.field private mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field private mContentDescriptionDataType:[Ljava/lang/String;

.field private mContentDescriptionPhoneSignal:[Ljava/lang/String;

.field private mContentDescriptionWifi:Ljava/lang/String;

.field private mContentDescriptionWimax:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataActive:Z

.field private mDataActivity:[I

.field private mDataAndWifiStacked:Z

.field private mDataConnected:[Z

.field private mDataDirectionIconId:[I

.field private mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDataIconList:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mDataIconListNum:I

.field private mDataNetType:[I

.field private mDataNetType3G:[Lcom/mediatek/systemui/ext/NetworkType;

.field private mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mDataState:[I

.field private mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mGeminiSimNum:I

.field private mHasMobileDataFeature:Z

.field private mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsRoaming:[Z

.field private mIsRoamingId:[I

.field private mIsScreenLarge:Z

.field private mIsWimaxEnabled:Z

.field private mLastAirplaneMode:Z

.field private mLastCombinedLabel:Ljava/lang/String;

.field private mLastCombinedSignalIconId:I

.field private mLastDataDirectionIconId:I

.field private mLastDataDirectionOverlayIconId:I

.field private mLastDataTypeIconId:[I

.field private mLastMobileActivityIconId:[I

.field private mLastPhoneSignalIconId:[[I

.field private mLastWifiIconId:I

.field private mLastWimaxIconId:I

.field private mMobileActivityIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkName:[Ljava/lang/String;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private mNetworkNameSeparator:Ljava/lang/String;

.field private final mPhone:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mPhoneSignalIconIdNum:I

.field private mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mShowAtLeastThreeGees:Z

.field private mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mSimCardReady:Z

.field private mSimIndicatorFlag:[Z

.field private mSimIndicatorResId:[I

.field private mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mWifiActivity:I

.field private mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiConnected:Z

.field private mWifiEnabled:Z

.field private mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiLevel:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRssi:I

.field private mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field private mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 217
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 108
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    .line 109
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    .line 118
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconListNum:I

    .line 119
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdNum:I

    .line 131
    new-instance v11, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 133
    new-instance v11, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 134
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    .line 137
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    .line 138
    const v11, 0x1080591

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTetherIconId:I

    .line 142
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSupported:Z

    .line 143
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    .line 144
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    .line 145
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIdle:Z

    .line 146
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    .line 147
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    .line 148
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxState:I

    .line 149
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxExtraState:I

    .line 152
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnected:Z

    .line 153
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkType:I

    .line 155
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    .line 158
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    .line 159
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastAirplaneMode:Z

    .line 163
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 164
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 165
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 166
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconViews:Ljava/util/ArrayList;

    .line 167
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 168
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 169
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 170
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 171
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 172
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 173
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 174
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalClusters:Ljava/util/ArrayList;

    .line 176
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    .line 177
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    .line 178
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    .line 179
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWimaxIconId:I

    .line 180
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    .line 183
    const-string v11, ""

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedLabel:Ljava/lang/String;

    .line 186
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataAndWifiStacked:Z

    .line 187
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    .line 193
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimCardReady:Z

    .line 2446
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrier1:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

    .line 2447
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrier2:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

    .line 2448
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierDivider:Landroid/view/View;

    .line 2492
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    .line 2493
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    .line 218
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 221
    .local v7, res:Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 223
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    .line 224
    const v11, 0x7f0a0005

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    .line 225
    const-string v11, "NetworkControllerGemini"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkControllerGemini, mShowAtLeastThreeGees="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 230
    .local v10, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v10}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 231
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    const v11, 0x111003a

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWifiIcons()V

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWimaxIcons()V

    .line 247
    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getDefault(Landroid/content/Context;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 248
    sget v11, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    .line 249
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0063

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameSeparator:Ljava/lang/String;

    .line 250
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x10402e6

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    .line 252
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Z

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoaming:[Z

    .line 253
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoamingId:[I

    .line 254
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Landroid/telephony/SignalStrength;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 255
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Landroid/telephony/ServiceState;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:[Landroid/telephony/ServiceState;

    .line 256
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:[I

    .line 257
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataState:[I

    .line 258
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Z

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:[Z

    .line 259
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 260
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:[I

    .line 261
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:[I

    .line 262
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Lcom/mediatek/systemui/ext/NetworkType;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType3G:[Lcom/mediatek/systemui/ext/NetworkType;

    .line 263
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 264
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 265
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:[Ljava/lang/String;

    .line 266
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:[Ljava/lang/String;

    .line 267
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    iget v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdNum:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    const-class v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Lcom/mediatek/systemui/ext/IconIdWrapper;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 268
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 269
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 270
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    iget v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconListNum:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    const-class v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Lcom/mediatek/systemui/ext/IconIdWrapper;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 271
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [[I

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    .line 272
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:[I

    .line 273
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastMobileActivityIconId:[I

    .line 274
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Z

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimIndicatorFlag:[Z

    .line 275
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimIndicatorResId:[I

    .line 276
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    new-array v11, v11, [Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;

    .line 278
    const-string v11, "gsm.siminfo.ready"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimCardReady:Z

    .line 279
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    const/4 v12, 0x0

    sget-object v13, Lcom/mediatek/systemui/ext/DataType;->Type_G:Lcom/mediatek/systemui/ext/DataType;

    invoke-interface {v11, v12, v13}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getDataTypeIconListGemini(ZLcom/mediatek/systemui/ext/DataType;)[I

    move-result-object v5

    .line 282
    .local v5, iconList:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    if-ge v4, v11, :cond_5

    .line 283
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:[I

    const/4 v12, 0x0

    aput v12, v11, v4

    .line 284
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataState:[I

    const/4 v12, 0x0

    aput v12, v11, v4

    .line 285
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v12, v11, v4

    .line 286
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:[I

    const/4 v12, 0x0

    aput v12, v11, v4

    .line 287
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v12, v11, v4

    .line 288
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    aput-object v12, v11, v4

    .line 289
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:[I

    const/4 v12, -0x1

    aput v12, v11, v4

    .line 290
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastMobileActivityIconId:[I

    const/4 v12, -0x1

    aput v12, v11, v4

    .line 291
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;

    new-instance v12, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;)V

    aput-object v12, v11, v4

    .line 292
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v12, v11, v4

    .line 293
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>(I)V

    aput-object v12, v11, v4

    .line 294
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>(I)V

    aput-object v12, v11, v4

    .line 296
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconListNum:I

    if-ge v6, v11, :cond_2

    .line 298
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>(I)V

    aput-object v12, v11, v6

    .line 299
    if-eqz v5, :cond_1

    .line 300
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    aget-object v11, v11, v6

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v12

    invoke-interface {v12}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 301
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    aget-object v11, v11, v6

    aget v12, v5, v6

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 296
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 233
    .end local v4           #i:I
    .end local v5           #iconList:[I
    .end local v6           #j:I
    :cond_0
    const/4 v11, 0x0

    :try_start_1
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, e:Landroid/os/RemoteException;
    const-string v11, "NetworkControllerGemini"

    const-string v12, "Failing checking whether status bar is visible"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v4       #i:I
    .restart local v5       #iconList:[I
    .restart local v6       #j:I
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    aget-object v11, v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 304
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    aget-object v11, v11, v6

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_G:[I

    aget v12, v12, v6

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto :goto_3

    .line 307
    :cond_2
    const/4 v6, 0x0

    :goto_4
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdNum:I

    if-ge v6, v11, :cond_3

    .line 308
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>(I)V

    aput-object v12, v11, v6

    .line 307
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 313
    :cond_3
    const/4 v8, -0x1

    .line 315
    .local v8, resId:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    .line 316
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v12

    invoke-interface {v12}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 317
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11, v8}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 323
    :goto_5
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;

    aget-object v11, v11, v4

    const/16 v12, 0x1e1

    invoke-static {v11, v12, v4}, Lcom/android/systemui/statusbar/util/SIMHelper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 319
    :cond_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 320
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const v12, 0x7f02022b

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto :goto_5

    .line 332
    .end local v6           #j:I
    .end local v8           #resId:I
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->updateSimInsertedStatus()V

    .line 334
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0002

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->isHspaDataDistinguishable()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_6
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHspaDataDistinguishable:Z

    .line 338
    const-string v11, "wifi"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 339
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)V

    .line 340
    .local v3, handler:Landroid/os/Handler;
    new-instance v11, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v11}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 341
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v9

    .line 342
    .local v9, wifiMessenger:Landroid/os/Messenger;
    if-eqz v9, :cond_6

    .line 343
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12, v3, v9}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 347
    :cond_6
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v11, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v11, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v11, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v11, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v11, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v11, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v11, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x111003f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSupported:Z

    .line 360
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSupported:Z

    if-eqz v11, :cond_7

    .line 361
    const-string v11, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v11, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v11, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    :cond_7
    const-string v11, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v11, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v11, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v11, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v11, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateAirplaneMode()V

    .line 376
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 377
    return-void

    .line 334
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #handler:Landroid/os/Handler;
    .end local v9           #wifiMessenger:Landroid/os/Messenger;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 288
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)[Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateListener:[Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$myPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)[Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:[Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)[Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:[Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataState:[I

    return-object v0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .parameter "resId"

    .prologue
    .line 2435
    if-eqz p1, :cond_0

    .line 2436
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2438
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2443
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 2439
    .restart local v1       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2440
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 2443
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private hasService(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 701
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 703
    .local v0, tempServiceState:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 709
    :pswitch_0
    const/4 v1, 0x1

    .line 712
    :cond_0
    :pswitch_1
    return v1

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .parameter "info"

    .prologue
    .line 1498
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1499
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1509
    .end local v3           #ssid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1503
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1504
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1505
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1506
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1509
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v1, p1

    .line 696
    .local v0, tempSignalStrength:Landroid/telephony/SignalStrength;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiOnlyDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2487
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2488
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 717
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    .line 719
    return-void

    :cond_0
    move v0, v1

    .line 717
    goto :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1563
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1565
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1568
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnected:Z

    .line 1569
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnected:Z

    if-eqz v4, :cond_1

    .line 1570
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkType:I

    .line 1571
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1576
    :goto_1
    const-string v4, "inetCondition"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1583
    .local v1, connectionStatus:I
    const/16 v4, 0x32

    if-le v1, v4, :cond_2

    :goto_2
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    .line 1584
    const-string v4, "NetworkControllerGemini"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity, mInetCondition="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 1587
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    .line 1593
    :goto_3
    const-string v4, "simId"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1594
    .local v3, slotId:I
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 1595
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWimaxIcons()V

    .line 1596
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V

    .line 1597
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V

    .line 1598
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWifiIcons()V

    .line 1599
    return-void

    .end local v1           #connectionStatus:I
    .end local v3           #slotId:I
    :cond_0
    move v4, v6

    .line 1568
    goto :goto_0

    .line 1573
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkType:I

    .line 1574
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .restart local v1       #connectionStatus:I
    :cond_2
    move v5, v6

    .line 1583
    goto :goto_2

    .line 1589
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    goto :goto_3
.end method

.method private final updateDataIcon()V
    .locals 2

    .prologue
    .line 1180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 1181
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1183
    :cond_0
    return-void
.end method

.method private final updateDataIcon(I)V
    .locals 19
    .parameter "slotId"

    .prologue
    .line 1186
    const/4 v6, 0x0

    .line 1187
    .local v6, iconId:I
    const/4 v15, 0x1

    .line 1188
    .local v15, visible:Z
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1189
    .local v5, iTelephony:Lcom/android/internal/telephony/ITelephony;
    const/4 v13, 0x0

    .line 1193
    .local v13, tempNetType3G:Lcom/mediatek/systemui/ext/NetworkType;
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v11, v0, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/16 v16, 0x0

    new-instance v17, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct/range {v17 .. v17}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v17, v11, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct/range {v17 .. v17}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v17, v11, v16

    const/16 v16, 0x2

    new-instance v17, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct/range {v17 .. v17}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v17, v11, v16

    const/16 v16, 0x3

    new-instance v17, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct/range {v17 .. v17}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v17, v11, v16

    .line 1196
    .local v11, tempDataIconList:[Lcom/mediatek/systemui/ext/IconIdWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataState:[I

    move-object/from16 v16, v0

    aget v12, v16, p1

    .line 1197
    .local v12, tempDataState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    aget-object v14, v16, p1

    .line 1198
    .local v14, tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:[I

    move-object/from16 v16, v0

    aget v10, v16, p1

    .line 1199
    .local v10, tempDataActivity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType3G:[Lcom/mediatek/systemui/ext/NetworkType;

    move-object/from16 v16, v0

    aget-object v13, v16, p1

    .line 1201
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconListNum:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_0

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    aget-object v16, v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v16

    aput-object v16, v11, v4

    .line 1201
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1205
    :cond_0
    const-string v16, "NetworkControllerGemini"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDataIcon("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), SimState="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", DataState="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", DataActivity="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", tempNetType3G="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v16

    if-nez v16, :cond_7

    .line 1210
    sget-object v16, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_1

    sget-object v16, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_6

    .line 1212
    :cond_1
    const/4 v2, -0x1

    .line 1214
    .local v2, callState:I
    :try_start_0
    move/from16 v0, p1

    invoke-interface {v5, v0}, Lcom/android/internal/telephony/ITelephony;->getCallStateGemini(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1218
    :goto_1
    const-string v16, "NetworkControllerGemini"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDataIcon("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), Dual talk callState is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    sget-object v16, Lcom/mediatek/systemui/ext/NetworkType;->Type_3G:Lcom/mediatek/systemui/ext/NetworkType;

    move-object/from16 v0, v16

    if-eq v13, v0, :cond_4

    .line 1221
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v12, v0, :cond_3

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "airplane_mode_on"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMColorIdBySlot(Landroid/content/Context;I)I

    move-result v9

    .line 1228
    .local v9, simColorId:I
    const-string v16, "NetworkControllerGemini"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDataIcon("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), simColorId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v9, v0, :cond_2

    .line 1230
    aget-object v16, v11, v9

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v6

    .line 1345
    .end local v2           #callState:I
    .end local v9           #simColorId:I
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1347
    .local v7, ident:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkType(I)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v1, v15}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1351
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1354
    :goto_3
    const-string v16, "NetworkControllerGemini"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDataIcon("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), iconId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", visible="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:[Z

    move-object/from16 v16, v0

    aput-boolean v15, v16, p1

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:[I

    move-object/from16 v16, v0

    aput v6, v16, p1

    .line 1365
    return-void

    .line 1215
    .end local v7           #ident:J
    .restart local v2       #callState:I
    :catch_0
    move-exception v3

    .line 1216
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 1233
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    .line 1234
    const/4 v15, 0x0

    goto :goto_2

    .line 1237
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v12, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "airplane_mode_on"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMColorIdBySlot(Landroid/content/Context;I)I

    move-result v9

    .line 1243
    .restart local v9       #simColorId:I
    const-string v16, "NetworkControllerGemini"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDataIcon("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), simColorId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v9, v0, :cond_2

    .line 1245
    aget-object v16, v11, v9

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v6

    goto/16 :goto_2

    .line 1248
    .end local v9           #simColorId:I
    :cond_5
    const/4 v6, 0x0

    .line 1249
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1324
    .end local v2           #callState:I
    :cond_6
    const v6, 0x7f02024e

    .line 1325
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1328
    :cond_7
    const-string v16, "NetworkControllerGemini"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDataIcon("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), at cdma mode"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v12, v0, :cond_8

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMColorIdBySlot(Landroid/content/Context;I)I

    move-result v9

    .line 1333
    .restart local v9       #simColorId:I
    const-string v16, "NetworkControllerGemini"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDataIcon("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), simColorId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v9, v0, :cond_2

    .line 1335
    aget-object v16, v11, v9

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v6

    goto/16 :goto_2

    .line 1339
    .end local v9           #simColorId:I
    :cond_8
    const/4 v6, 0x0

    .line 1340
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1348
    .restart local v7       #ident:J
    :catch_1
    move-exception v3

    .line 1349
    .local v3, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v16, "NetworkControllerGemini"

    const-string v17, "RemoteException"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1351
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v16

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method private final updateDataNetType()V
    .locals 2

    .prologue
    .line 935
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 936
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    :cond_0
    return-void
.end method

.method private final updateDataNetType(I)V
    .locals 14
    .parameter "slotId"

    .prologue
    .line 942
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 943
    .local v6, tempDataNetType3G:Lcom/mediatek/systemui/ext/NetworkType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v11

    if-eqz v11, :cond_0

    if-nez p1, :cond_0

    .line 946
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_1X:Lcom/mediatek/systemui/ext/NetworkType;

    .line 948
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/statusbar/util/SIMHelper;->isInternationalRoamingStatus(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 951
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 953
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:[I

    aget v5, v11, p1

    .line 954
    .local v5, tempDataNetType:I
    const-string v11, "NetworkControllerGemini"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateDataNetType("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "), DataNetType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMColorIdBySlot(Landroid/content/Context;I)I

    move-result v2

    .line 956
    .local v2, simColorId:I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_2

    .line 1161
    :goto_0
    return-void

    .line 959
    :cond_2
    const-string v11, "NetworkControllerGemini"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateDataNetType("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "), simColorId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v9, 0x0

    .line 962
    .local v9, tempIsRoaming:Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v11, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 964
    :cond_4
    const/4 v10, 0x0

    .line 966
    .local v10, tempRoamingId:I
    const/4 v11, -0x1

    if-le v2, v11, :cond_5

    const/4 v11, 0x4

    if-ge v2, v11, :cond_5

    .line 967
    sget-object v11, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->ROAMING:[I

    aget v10, v11, v2

    .line 969
    :cond_5
    const-string v11, "NetworkControllerGemini"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateDataNetType("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")  RoamingresId= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " simColorId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoaming:[Z

    const/4 v12, 0x1

    aput-boolean v12, v11, p1

    .line 971
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoamingId:[I

    aput v10, v11, p1

    .line 972
    const/4 v9, 0x1

    .line 981
    .end local v10           #tempRoamingId:I
    :goto_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    if-eqz v11, :cond_9

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    if-eqz v11, :cond_9

    .line 983
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_4G:Lcom/mediatek/systemui/ext/DataType;

    .line 984
    .local v8, tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1112
    .local v3, tempContentDescriptionDataType:Ljava/lang/String;
    :goto_2
    const/4 v11, 0x4

    new-array v4, v11, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v11, 0x0

    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v12, v4, v11

    const/4 v11, 0x1

    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v12, v4, v11

    const/4 v11, 0x2

    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v12, v4, v11

    const/4 v11, 0x3

    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v12, v4, v11

    .line 1113
    .local v4, tempDataIconList:[Lcom/mediatek/systemui/ext/IconIdWrapper;
    new-instance v7, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    .line 1114
    .local v7, tempDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    invoke-interface {v11, v9, v8}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getDataTypeIconListGemini(ZLcom/mediatek/systemui/ext/DataType;)[I

    move-result-object v0

    .line 1115
    .local v0, iconList:[I
    if-eqz v0, :cond_13

    .line 1116
    const/4 v11, 0x0

    aget-object v11, v4, v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v12

    invoke-interface {v12}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1117
    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x0

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1118
    const/4 v11, 0x1

    aget-object v11, v4, v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v12

    invoke-interface {v12}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1119
    const/4 v11, 0x1

    aget-object v11, v4, v11

    const/4 v12, 0x1

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1120
    const/4 v11, 0x2

    aget-object v11, v4, v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v12

    invoke-interface {v12}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1121
    const/4 v11, 0x2

    aget-object v11, v4, v11

    const/4 v12, 0x2

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1122
    const/4 v11, 0x3

    aget-object v11, v4, v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v12

    invoke-interface {v12}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1123
    const/4 v11, 0x3

    aget-object v11, v4, v11

    const/4 v12, 0x3

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1124
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1125
    aget v11, v0, v2

    invoke-virtual {v7, v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1148
    :goto_3
    if-eqz v5, :cond_6

    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1149
    :cond_6
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    if-nez v11, :cond_7

    .line 1150
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1151
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1155
    :cond_7
    const-string v11, "NetworkControllerGemini"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateDataNetType("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "), DataNetType3G="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " tempDataTypeIconId= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType3G:[Lcom/mediatek/systemui/ext/NetworkType;

    aput-object v6, v11, p1

    .line 1158
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:[Ljava/lang/String;

    aput-object v3, v11, p1

    .line 1159
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v12

    aput-object v12, v11, p1

    .line 1160
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aput-object v4, v11, p1

    goto/16 :goto_0

    .line 974
    .end local v0           #iconList:[I
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v4           #tempDataIconList:[Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v7           #tempDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :cond_8
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoaming:[Z

    const/4 v12, 0x0

    aput-boolean v12, v11, p1

    .line 975
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoamingId:[I

    const/4 v12, 0x0

    aput v12, v11, p1

    goto/16 :goto_1

    .line 987
    :cond_9
    packed-switch v5, :pswitch_data_0

    .line 1097
    :pswitch_0
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    if-nez v11, :cond_12

    .line 1098
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1099
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_G:Lcom/mediatek/systemui/ext/DataType;

    .line 1100
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 989
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :pswitch_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    if-nez v11, :cond_a

    .line 990
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_G:Lcom/mediatek/systemui/ext/DataType;

    .line 991
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 993
    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 998
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :cond_a
    :pswitch_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    if-nez v11, :cond_b

    .line 1000
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1001
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_E:Lcom/mediatek/systemui/ext/DataType;

    .line 1002
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1004
    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1009
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :cond_b
    :pswitch_3
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_3G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1010
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_3G:Lcom/mediatek/systemui/ext/DataType;

    .line 1011
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1013
    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1017
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :pswitch_4
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_3G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1018
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoaming:[Z

    aget-boolean v12, v12, p1

    invoke-interface {v11, v12, v5}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->get3GPlusResources(ZI)Z

    move-result v1

    .line 1019
    .local v1, needShow3gplus:Z
    const/4 v11, 0x1

    if-ne v1, v11, :cond_c

    .line 1021
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_3G_PLUS:Lcom/mediatek/systemui/ext/DataType;

    .line 1022
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1026
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :cond_c
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHspaDataDistinguishable:Z

    if-eqz v11, :cond_d

    .line 1027
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_H:Lcom/mediatek/systemui/ext/DataType;

    .line 1028
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1032
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :cond_d
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_3G:Lcom/mediatek/systemui/ext/DataType;

    .line 1033
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1037
    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1039
    .end local v1           #needShow3gplus:Z
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :pswitch_5
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_3G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1040
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHspaDataDistinguishable:Z

    if-eqz v11, :cond_e

    .line 1041
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_H_PLUS:Lcom/mediatek/systemui/ext/DataType;

    .line 1042
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1045
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :cond_e
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_3G:Lcom/mediatek/systemui/ext/DataType;

    .line 1046
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1049
    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1052
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :pswitch_6
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_1X:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1053
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_1X:Lcom/mediatek/systemui/ext/DataType;

    .line 1054
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/statusbar/util/SIMHelper;->isInternationalRoamingStatus(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1057
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1058
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_G:Lcom/mediatek/systemui/ext/DataType;

    .line 1060
    :cond_f
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1062
    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1064
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :pswitch_7
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_1X:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1065
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_1X:Lcom/mediatek/systemui/ext/DataType;

    .line 1066
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/statusbar/util/SIMHelper;->isInternationalRoamingStatus(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1069
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1070
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_G:Lcom/mediatek/systemui/ext/DataType;

    .line 1072
    :cond_10
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1074
    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1079
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :pswitch_8
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1080
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_3G:Lcom/mediatek/systemui/ext/DataType;

    .line 1081
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/statusbar/util/SIMHelper;->isInternationalRoamingStatus(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1084
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_3G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1086
    :cond_11
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1088
    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1091
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :pswitch_9
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_3G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1092
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_4G:Lcom/mediatek/systemui/ext/DataType;

    .line 1093
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1095
    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1103
    .end local v3           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v8           #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    :cond_12
    sget-object v6, Lcom/mediatek/systemui/ext/NetworkType;->Type_3G:Lcom/mediatek/systemui/ext/NetworkType;

    .line 1104
    sget-object v8, Lcom/mediatek/systemui/ext/DataType;->Type_3G:Lcom/mediatek/systemui/ext/DataType;

    .line 1105
    .restart local v8       #tempDateType:Lcom/mediatek/systemui/ext/DataType;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v12, 0x7f0b009b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 1127
    .restart local v0       #iconList:[I
    .restart local v4       #tempDataIconList:[Lcom/mediatek/systemui/ext/IconIdWrapper;
    .restart local v7       #tempDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    :cond_13
    invoke-static {v9, v8}, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->getDataTypeIconListGemini(ZLcom/mediatek/systemui/ext/DataType;)[I

    move-result-object v0

    .line 1129
    sget-object v11, Lcom/mediatek/systemui/ext/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/ext/NetworkType;

    if-ne v6, v11, :cond_14

    .line 1130
    if-eqz v9, :cond_15

    .line 1131
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->EVDO_DATA_3G_ROAM:[I

    .line 1137
    :cond_14
    :goto_4
    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1138
    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x0

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1139
    const/4 v11, 0x1

    aget-object v11, v4, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1140
    const/4 v11, 0x1

    aget-object v11, v4, v11

    const/4 v12, 0x1

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1141
    const/4 v11, 0x2

    aget-object v11, v4, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1142
    const/4 v11, 0x2

    aget-object v11, v4, v11

    const/4 v12, 0x2

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1143
    const/4 v11, 0x3

    aget-object v11, v4, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1144
    const/4 v11, 0x3

    aget-object v11, v4, v11

    const/4 v12, 0x3

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1145
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1146
    aget v11, v0, v2

    invoke-virtual {v7, v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto/16 :goto_3

    .line 1133
    :cond_15
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->EVDO_DATA_3G:[I

    goto :goto_4

    .line 987
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private final updateSimState(ILandroid/content/Intent;)V
    .locals 4
    .parameter "slotId"
    .parameter "intent"

    .prologue
    .line 668
    const/4 v2, 0x0

    .line 670
    .local v2, tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, stateExtra:Ljava/lang/String;
    const-string v3, "ABSENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 688
    :goto_0
    if-eqz v2, :cond_0

    .line 689
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v3, p1

    .line 691
    :cond_0
    return-void

    .line 673
    :cond_1
    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 674
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 675
    :cond_2
    const-string v3, "LOCKED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 676
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, lockedReason:Ljava/lang/String;
    const-string v3, "PIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 678
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 679
    :cond_3
    const-string v3, "PUK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 680
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 682
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 685
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength()V
    .locals 2

    .prologue
    .line 722
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 723
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_0
    return-void
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 27
    .parameter "slotId"

    .prologue
    .line 728
    const/4 v5, 0x0

    .line 730
    .local v5, handled:Z
    const/16 v19, 0x1

    .line 731
    .local v19, tempSIMCUSignVisible:Z
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-object/from16 v18, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct/range {v24 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v24, v18, v23

    const/16 v23, 0x1

    new-instance v24, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct/range {v24 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v24, v18, v23

    .line 732
    .local v18, tempPhoneSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;
    new-instance v16, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct/range {v16 .. v16}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    .line 733
    .local v16, tempDataSignalIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    const/16 v20, 0x0

    .line 734
    .local v20, tempServiceState:Landroid/telephony/ServiceState;
    const/16 v21, 0x0

    .line 735
    .local v21, tempSignalStrength:Landroid/telephony/SignalStrength;
    const-string v14, ""

    .line 736
    .local v14, tempContentDescriptionPhoneSignal:Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 738
    .local v17, tempLastSignalLevel:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:[Landroid/telephony/SignalStrength;

    move-object/from16 v23, v0

    aget-object v21, v23, p1

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:[Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    aget-object v20, v23, p1

    .line 742
    if-nez v5, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v23

    if-nez v23, :cond_0

    .line 743
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), is null signal."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalStrengthNullIconGemini(I)I

    move-result v11

    .line 745
    .local v11, resId:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_7

    .line 746
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 747
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 748
    const/16 v19, 0x0

    .line 754
    :goto_0
    const/4 v5, 0x1

    .line 755
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), null signal"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v11           #resId:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimCardReady:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 759
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), the SIMs initialization of framework has not been ready."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v5, 0x1

    .line 766
    :cond_1
    if-nez v5, :cond_2

    if-eqz v20, :cond_2

    .line 767
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v10

    .line 768
    .local v10, regState:I
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), regState="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v10, v0, :cond_2

    .line 770
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " searching state hasService= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalStrengthSearchingIconGemini(I)I

    move-result v11

    .line 772
    .restart local v11       #resId:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_8

    .line 773
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 774
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 779
    :goto_1
    const/4 v5, 0x1

    .line 780
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), searching"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v10           #regState:I
    .end local v11           #resId:I
    :cond_2
    if-nez v5, :cond_4

    if-eqz v20, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v23

    if-nez v23, :cond_4

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v23

    if-nez v23, :cond_4

    .line 786
    :cond_3
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") tempServiceState = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 788
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SimIndicatorState = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v23, 0x1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 790
    const/16 v19, 0x1

    .line 791
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 792
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const v24, 0x7f020200

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 793
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 794
    const v23, 0x7f020200

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 795
    const/4 v5, 0x1

    .line 800
    :cond_4
    if-nez v5, :cond_5

    .line 801
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v6

    .line 802
    .local v6, hasService:Z
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), hasService="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-nez v6, :cond_a

    .line 809
    const/4 v11, -0x1

    .line 811
    .restart local v11       #resId:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_9

    .line 812
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 813
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 814
    const/16 v19, 0x0

    .line 923
    .end local v6           #hasService:Z
    .end local v11           #resId:I
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-object/from16 v23, v0

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v24

    aput-object v24, v23, p1

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v14, v23, p1

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-object v25, v18, v25

    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v25

    aput-object v25, v23, v24

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    const/16 v24, 0x1

    const/16 v25, 0x1

    aget-object v25, v18, v25

    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v25

    aput-object v25, v23, v24

    .line 928
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") tempSIMCUSignVisible= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/16 v23, 0x0

    aget-object v23, v18, v23

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 930
    const/16 v19, 0x0

    .line 932
    :cond_6
    :goto_3
    return-void

    .line 750
    .restart local v11       #resId:I
    :cond_7
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 751
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const v24, 0x7f02022b

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto/16 :goto_0

    .line 776
    .restart local v10       #regState:I
    :cond_8
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 777
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const v24, 0x7f02022c

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto/16 :goto_1

    .line 816
    .end local v10           #regState:I
    .restart local v6       #hasService:Z
    :cond_9
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 817
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const v24, 0x7f02022b

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 818
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 819
    const v23, 0x7f020201

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto/16 :goto_2

    .line 822
    .end local v11           #resId:I
    :cond_a
    if-nez v21, :cond_b

    .line 826
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 827
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const v24, 0x7f020201

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 828
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 829
    const v23, 0x7f020201

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/16 v25, 0x0

    aget v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 833
    :cond_b
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v7, v0, [I

    fill-array-data v7, :array_1

    .line 834
    .local v7, iconLevel:[I
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v8, v0, [[I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    aput-object v24, v8, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    aput-object v24, v8, v23

    .line 835
    .local v8, iconList:[[I
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 836
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v25

    aput v25, v7, v24

    aput v25, v17, v23

    .line 837
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mAlwaysShowCdmaRssi="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " set to cdmaLevel="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:[Landroid/telephony/SignalStrength;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " instead of level="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:[Landroid/telephony/SignalStrength;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType3G:[Lcom/mediatek/systemui/ext/NetworkType;

    move-object/from16 v23, v0

    aget-object v15, v23, p1

    .line 845
    .local v15, tempDataNetType:Lcom/mediatek/systemui/ext/NetworkType;
    sget-object v23, Lcom/mediatek/systemui/ext/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/ext/NetworkType;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_c

    .line 846
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v25

    aput v25, v7, v24

    aput v25, v17, v23

    .line 847
    const/16 v23, 0x1

    const/16 v24, 0x1

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v25

    aput v25, v7, v24

    aput v25, v17, v23

    .line 848
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " CT SlotId ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") two signal strength : tempLastSignalLevel[0] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v17, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "  tempLastSignalLevel[1] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, v17, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 859
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v9

    .line 864
    .local v9, isRoaming:Z
    :goto_5
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), isRoaming="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", mInetCondition="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMColorIdBySlot(Landroid/content/Context;I)I

    move-result v13

    .line 867
    .local v13, simColorId:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_f

    .line 868
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), simColorId=-1, return"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 841
    .end local v9           #isRoaming:Z
    .end local v13           #simColorId:I
    .end local v15           #tempDataNetType:Lcom/mediatek/systemui/ext/NetworkType;
    :cond_d
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v25

    aput v25, v7, v24

    aput v25, v17, v23

    goto/16 :goto_4

    .line 862
    .restart local v15       #tempDataNetType:Lcom/mediatek/systemui/ext/NetworkType;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v9

    .restart local v9       #isRoaming:Z
    goto/16 :goto_5

    .line 872
    .restart local v13       #simColorId:I
    :cond_f
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), simColorId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v23

    const/16 v24, 0x0

    aget v24, v7, v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v13, v1, v2}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalStrengthIconGemini(IIZ)I

    move-result v12

    .line 875
    .local v12, signalIcon:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_14

    .line 876
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 878
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 888
    :cond_10
    :goto_6
    sget-object v23, Lcom/mediatek/systemui/ext/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/ext/NetworkType;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_12

    .line 889
    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v7, v24

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v13, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->getSignalStrengthIconGemini(IIIZ)I

    move-result v22

    .line 890
    .local v22, upSignalIcon:I
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 891
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 892
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 894
    :cond_11
    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v7, v24

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v13, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->getSignalStrengthIconGemini(IIIZ)I

    move-result v4

    .line 895
    .local v4, downSignalIcon:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_12

    .line 896
    const/16 v23, 0x1

    aget-object v23, v18, v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 897
    const/16 v23, 0x1

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 902
    .end local v4           #downSignalIcon:I
    .end local v22           #upSignalIcon:I
    :cond_12
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateTelephonySignalStrength("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), tempDataNetType = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " , simColorId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "  tempPhoneSignalIconId[0] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v18, v25

    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "  tempPhoneSignalIconId[1] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v25, v18, v25

    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v23

    const/16 v24, 0x0

    aget v24, v7, v24

    invoke-interface/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalStrengthDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 908
    .local v3, desc:Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 909
    move-object v14, v3

    .line 916
    :cond_13
    :goto_7
    const/16 v23, 0x0

    aget-object v23, v18, v23

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v16

    .line 917
    const-string v23, "NetworkControllerGemini"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[CMCC Performance test][SystemUI][Statusbar] show signal end ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 880
    .end local v3           #desc:Ljava/lang/String;
    :cond_14
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v13, v0}, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->getTelephonySignalStrengthIconList(IZ)[I

    move-result-object v24

    aput-object v24, v8, v23

    .line 881
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 882
    const/16 v23, 0x0

    aget v23, v7, v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    .line 883
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/16 v24, 0x0

    aget-object v24, v8, v24

    const/16 v25, 0x0

    aget v25, v7, v25

    aget v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto/16 :goto_6

    .line 911
    .restart local v3       #desc:Ljava/lang/String;
    :cond_15
    const/16 v23, 0x0

    aget v23, v7, v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/16 v25, 0x0

    aget v25, v7, v25

    aget v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 736
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 833
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private updateWifiIcons()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1474
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v2, :cond_1

    .line 1475
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getWifiSignalStrengthIconList()[I

    move-result-object v0

    .line 1476
    .local v0, wifiIconList:[I
    if-eqz v0, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1478
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1483
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    .line 1495
    .end local v0           #wifiIconList:[I
    :goto_1
    return-void

    .line 1480
    .restart local v0       #wifiIconList:[I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v1, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1481
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto :goto_0

    .line 1486
    .end local v0           #wifiIconList:[I
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataAndWifiStacked:Z

    if-eqz v2, :cond_2

    .line 1487
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v2, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1488
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v2, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1493
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_1

    .line 1490
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v2, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1491
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiEnabled:Z

    if-eqz v3, :cond_3

    const v1, 0x7f020283

    :cond_3
    invoke-virtual {v2, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1421
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1422
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1423
    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiEnabled:Z

    .line 1467
    :cond_0
    :goto_1
    const-string v7, "NetworkControllerGemini"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWifiState: mWifiLevel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mWifiRssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiRssi:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mWifiConnected is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWifiIcons()V

    .line 1471
    return-void

    :cond_1
    move v7, v8

    .line 1423
    goto :goto_0

    .line 1425
    :cond_2
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1426
    const-string v9, "networkInfo"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1428
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    .line 1429
    .local v5, wasConnected:Z
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    .line 1431
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v7, :cond_7

    if-nez v5, :cond_7

    .line 1433
    const-string v7, "wifiInfo"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1434
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 1435
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1437
    :cond_3
    if-eqz v1, :cond_6

    .line 1438
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    .line 1448
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_4
    :goto_3
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v7, :cond_0

    .line 1449
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 1452
    .local v6, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_0

    .line 1453
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    .line 1454
    .local v3, newRssi:I
    sget v7, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v3, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    .line 1456
    .local v4, newSignalLevel:I
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    if-eq v4, v7, :cond_0

    .line 1457
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    goto/16 :goto_1

    .end local v3           #newRssi:I
    .end local v4           #newSignalLevel:I
    .end local v6           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_5
    move v7, v8

    .line 1429
    goto :goto_2

    .line 1440
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    :cond_6
    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 1442
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_7
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-nez v7, :cond_4

    .line 1443
    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 1461
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #wasConnected:Z
    :cond_8
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1462
    const-string v7, "newRssi"

    const/16 v8, -0xc8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiRssi:I

    .line 1463
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiRssi:I

    sget v8, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v7, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    goto/16 :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 1539
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 1540
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 1541
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    .line 1545
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWimax:Ljava/lang/String;

    .line 1554
    :goto_1
    return-void

    .line 1543
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    goto :goto_0

    .line 1548
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    .line 1549
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 1552
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1514
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, action:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    .line 1516
    .local v1, wasConnected:Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1517
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1519
    .local v2, wimaxStatus:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    .line 1533
    .end local v2           #wimaxStatus:I
    :cond_0
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 1534
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWimaxIcons()V

    .line 1535
    return-void

    .restart local v2       #wimaxStatus:I
    :cond_1
    move v3, v4

    .line 1519
    goto :goto_0

    .line 1521
    .end local v2           #wimaxStatus:I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1522
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    goto :goto_1

    .line 1523
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1524
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxState:I

    .line 1526
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxExtraState:I

    .line 1529
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    .line 1531
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 1529
    goto :goto_2

    :cond_5
    move v3, v4

    .line 1531
    goto :goto_3
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public addCombinedSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method public addDataDirectionIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    return-void
.end method

.method public addDataDirectionOverlayIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public addDataTypeIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$NetworkSignalChangedCallbackGemini;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$NetworkSignalChangedCallbackGemini;)V

    .line 438
    return-void
.end method

.method public addPhoneSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;)V

    .line 434
    return-void
.end method

.method public addWifiIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    return-void
.end method

.method public addWimaxIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2313
    const-string v1, "NetworkControllerGemini state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2314
    const-string v2, "  %s network type %d (%s)"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnected:Z

    if-eqz v1, :cond_0

    const-string v1, "CONNECTED"

    :goto_0
    aput-object v1, v3, v4

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
    const-string v1, "------ telephony ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    if-ge v0, v1, :cond_1

    .line 2320
    const-string v1, "====== SlotId: %d ======"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2321
    const-string v1, "  hasService ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2322
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2323
    const-string v1, "  mDataConnected ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2324
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2325
    const-string v1, "  mSimState ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2326
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2327
    const-string v1, "  mDataState ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2328
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataState:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2329
    const-string v1, "  mDataActivity ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2330
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2331
    const-string v1, "  mDataNetType ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2332
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2333
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2334
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2335
    const-string v1, "  mServiceState ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2336
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2337
    const-string v1, "  mSignalStrength ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2338
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2339
    const-string v1, "  mNetworkName ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2340
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2341
    const-string v1, "  mPhoneSignalIconId =0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2342
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2343
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2344
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2345
    const-string v1, "  mDataDirectionIconId ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2346
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2347
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2348
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    const-string v1, "  mDataSignalIconId ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2350
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2351
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2352
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    const-string v1, "  mDataTypeIconId ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2354
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2355
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2356
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    const-string v1, "  mLastPhoneSignalIconId[0]=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2359
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2360
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2361
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    const-string v1, "  mLastPhoneSignalIconId[1]=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2363
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    aget-object v1, v1, v0

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2364
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2365
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    aget-object v1, v1, v0

    aget v1, v1, v5

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    const-string v1, "  mLastDataTypeIconId =0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2369
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2370
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2314
    .end local v0           #i:I
    :cond_0
    const-string v1, "DISCONNECTED"

    goto/16 :goto_0

    .line 2373
    .restart local v0       #i:I
    :cond_1
    const-string v1, "------ wifi ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2374
    const-string v1, "  mWifiEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2375
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2376
    const-string v1, "  mWifiConnected="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2377
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2378
    const-string v1, "  mWifiRssi="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2379
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiRssi:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2380
    const-string v1, "  mWifiLevel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2381
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2382
    const-string v1, "  mWifiSsid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2383
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    const-string v1, "  mWifiIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2386
    const-string v1, "  mWifiActivity="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2389
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSupported:Z

    if-eqz v1, :cond_2

    .line 2390
    const-string v1, "------ wimax ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2391
    const-string v1, "  mIsWimaxEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2392
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2393
    const-string v1, "  mWimaxConnected="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2395
    const-string v1, "  mWimaxIdle="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2396
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIdle:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2397
    const-string v1, "  mWimaxIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    const-string v1, "  mWimaxSignal=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2400
    const-string v1, "  mWimaxState=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2401
    const-string v1, "  mWimaxExtraState=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxExtraState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2404
    :cond_2
    const-string v1, "------ Bluetooth ----"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    const-string v1, "  mBtReverseTethered="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2408
    const-string v1, "------ connectivity ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2409
    const-string v1, "  mInetCondition="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2412
    const-string v1, "------ icons ------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2413
    const-string v1, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2415
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2416
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2417
    const-string v1, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2418
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2419
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2420
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2421
    const-string v1, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2425
    const-string v1, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2426
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2427
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2428
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2429
    const-string v1, "  mLastCombinedLabel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2430
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2431
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2432
    return-void
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hideSimIndicator(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 2588
    const-string v0, "NetworkControllerGemini"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSimIndicator slotId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimIndicatorFlag:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 2590
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V

    .line 2591
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 2592
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V

    .line 2593
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 2594
    return-void
.end method

.method isCdmaEri(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v3, 0x1

    .line 1164
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v4, p1

    .line 1166
    .local v2, tempServiceState:Landroid/telephony/ServiceState;
    if-eqz v2, :cond_1

    .line 1167
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1168
    .local v0, iconIndex:I
    if-eq v0, v3, :cond_1

    .line 1169
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1170
    .local v1, iconMode:I
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    .line 1176
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$NetworkSignalChangedCallbackGemini;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 442
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$NetworkSignalChangedCallbackGemini;->onNetTypeChanged()V

    .line 443
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$NetworkSignalChangedCallbackGemini;->onSimStateChangedForSimSettings()V

    .line 444
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$NetworkSignalChangedCallbackGemini;->onSimStateChangedForNetworkSelection()V

    .line 445
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 494
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, action:Ljava/lang/String;
    const-string v0, "NetworkControllerGemini"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, intent action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWifiState(Landroid/content/Intent;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 501
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    const-string v0, "simId"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 503
    .local v1, slotId:I
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->updateSimInsertedStatus()V

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength()V

    .line 505
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 506
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateSimState(ILandroid/content/Intent;)V

    .line 507
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V

    .line 508
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    goto :goto_0

    .line 509
    .end local v1           #slotId:I
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 510
    const-string v0, "simId"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 511
    .restart local v1       #slotId:I
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v0, "spn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "showPlmn"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V

    .line 516
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    goto :goto_0

    .line 517
    .end local v1           #slotId:I
    :cond_4
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 519
    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 520
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 521
    .local v7, info:Landroid/net/NetworkInfo;
    if-nez v7, :cond_6

    .line 522
    const-string v0, "NetworkControllerGemini"

    const-string v2, "onReceive, ConnectivityManager.CONNECTIVITY_ACTION networkinfo is null."

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 525
    :cond_6
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    .line 526
    .local v10, type:I
    const-string v0, "NetworkControllerGemini"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, ConnectivityManager.CONNECTIVITY_ACTION network type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-eq v10, v5, :cond_7

    if-eqz v10, :cond_7

    const/4 v0, 0x7

    if-eq v10, v0, :cond_7

    if-eq v10, v11, :cond_7

    const/16 v0, 0x9

    if-ne v10, v0, :cond_1

    .line 533
    .end local v7           #info:Landroid/net/NetworkInfo;
    .end local v10           #type:I
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateConnectivity(Landroid/content/Intent;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateOperatorInfo()V

    .line 535
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 536
    :cond_8
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 538
    :cond_9
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 539
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateAirplaneMode()V

    .line 540
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 541
    :cond_b
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 544
    :cond_c
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWimaxState(Landroid/content/Intent;)V

    .line 545
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 546
    :cond_d
    const-string v0, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 547
    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->updateSIMInfos(Landroid/content/Context;)V

    .line 548
    const-string v0, "type"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 549
    .restart local v10       #type:I
    const-string v0, "simid"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 550
    .local v8, simId:J
    if-ne v10, v11, :cond_e

    .line 552
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType()V

    .line 553
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength()V

    .line 554
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateOperatorInfo()V

    .line 556
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 557
    .end local v8           #simId:J
    .end local v10           #type:I
    :cond_f
    const-string v0, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 558
    const-string v0, "slotId"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 559
    .restart local v1       #slotId:I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 560
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V

    .line 561
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateOperatorInfo()V

    .line 562
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 563
    .end local v1           #slotId:I
    :cond_10
    const-string v0, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 564
    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->updateSIMInfos(Landroid/content/Context;)V

    .line 565
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->updateSimInsertedStatus()V

    .line 566
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType()V

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength()V

    .line 568
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateOperatorInfo()V

    .line 569
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 570
    :cond_11
    const-string v0, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 571
    const-string v0, "NetworkControllerGemini"

    const-string v2, "onReceive from TelephonyIntents.ACTION_SIM_INFO_UPDATE"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimCardReady:Z

    .line 573
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->updateSimInsertedStatus()V

    .line 574
    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->updateSIMInfos(Landroid/content/Context;)V

    .line 575
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType()V

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength()V

    .line 577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateOperatorInfo()V

    .line 578
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 579
    :cond_12
    const-string v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    const-string v0, "NetworkControllerGemini"

    const-string v2, "onReceive from android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimCardReady:Z

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;)V
    .locals 11
    .parameter "cluster"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoaming:[Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoamingId:[I

    invoke-interface {p1, v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setRoamingFlagandResource([Z[I)V

    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setWifiIndicators(ZLcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Ljava/lang/String;)V

    .line 454
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 456
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v0, v1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v4, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v5, v0, v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v0, v1

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setMobileDataIndicators(IZ[Lcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setIsAirplaneMode(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    invoke-static {v1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setIsRoamingGGMode(Z)V

    .line 484
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastAirplaneMode:Z

    .line 485
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->apply()V

    .line 486
    return-void

    :cond_3
    move v0, v1

    .line 449
    goto :goto_0

    .line 456
    :cond_4
    const/4 v0, 0x2

    new-array v3, v0, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    new-instance v0, Lcom/mediatek/systemui/ext/IconIdWrapper;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    invoke-direct {v0, v5}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>(I)V

    aput-object v0, v3, v1

    new-instance v0, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v0, v3, v2

    goto :goto_1

    .line 466
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    if-ge v4, v0, :cond_1

    .line 467
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v6, v0, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v0, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v8, v0, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v9, v0, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v10, v0, v4

    move-object v3, p1

    invoke-interface/range {v3 .. v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setMobileDataIndicators(IZ[Lcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v4           #i:I
    :cond_6
    move v2, v1

    .line 481
    goto :goto_2
.end method

.method refreshViews()V
    .locals 2

    .prologue
    .line 1605
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 1606
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 1605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1608
    :cond_0
    return-void
.end method

.method refreshViews(I)V
    .locals 45
    .parameter "slotId"

    .prologue
    .line 1611
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    .line 1613
    .local v15, context:Landroid/content/Context;
    new-instance v14, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    .line 1614
    .local v14, combinedSignalIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    new-instance v12, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    .line 1615
    .local v12, combinedActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    const-string v13, ""

    .line 1616
    .local v13, combinedLabel:Ljava/lang/String;
    const-string v42, ""

    .line 1617
    .local v42, wifiLabel:Ljava/lang/String;
    const-string v24, ""

    .line 1619
    .local v24, mobileLabel:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isEmergencyOnly()Z

    move-result v17

    .line 1626
    .local v17, emergencyOnly:Z
    new-instance v31, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct/range {v31 .. v31}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    .line 1627
    .local v31, tempDataSignalIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    const/4 v3, 0x2

    new-array v5, v3, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v3, 0x0

    new-instance v4, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v4, v5, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    aput-object v4, v5, v3

    .line 1629
    .local v5, tempPhoneSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;
    const-string v8, ""

    .line 1630
    .local v8, tempContentDescriptionPhoneSignal:Ljava/lang/String;
    const-string v9, ""

    .line 1631
    .local v9, tempContentDescriptionDataType:Ljava/lang/String;
    const-string v26, ""

    .line 1633
    .local v26, tempContentDescriptionCombinedSignal:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v38, v3, p1

    .line 1634
    .local v38, tempSignalStrength:Landroid/telephony/SignalStrength;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v37, v3, p1

    .line 1635
    .local v37, tempServiceState:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:[Z

    aget-boolean v28, v3, p1

    .line 1636
    .local v28, tempDataConnected:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:[I

    aget v27, v3, p1

    .line 1637
    .local v27, tempDataActivity:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType3G:[Lcom/mediatek/systemui/ext/NetworkType;

    aget-object v30, v3, p1

    .line 1638
    .local v30, tempDataNetType3G:Lcom/mediatek/systemui/ext/NetworkType;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v31

    .line 1639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v8, v3, p1

    .line 1640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v9, v3, p1

    .line 1641
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v4, v4, p1

    const/16 v43, 0x0

    aget-object v4, v4, v43

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v4

    aput-object v4, v5, v3

    .line 1642
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v4, v4, p1

    const/16 v43, 0x1

    aget-object v4, v4, v43

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v4

    aput-object v4, v5, v3

    .line 1643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:[Ljava/lang/String;

    aget-object v35, v3, p1

    .line 1645
    .local v35, tempNetworkName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    if-nez v3, :cond_8

    .line 1646
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1647
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1648
    const/4 v3, 0x0

    aget-object v3, v5, v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1649
    const/4 v3, 0x0

    aget-object v3, v5, v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1650
    const/4 v3, 0x1

    aget-object v3, v5, v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1651
    const/4 v3, 0x1

    aget-object v3, v5, v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1652
    const-string v24, ""

    .line 1742
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v3, :cond_14

    .line 1743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 1744
    const v3, 0x7f0b00af

    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1780
    :cond_0
    :goto_1
    move-object/from16 v13, v42

    .line 1781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1794
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    if-eqz v3, :cond_1

    .line 1795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1796
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1797
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTetherIconId:I

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1802
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_16

    const/16 v18, 0x1

    .line 1803
    .local v18, ethernetConnected:Z
    :goto_3
    if-eqz v18, :cond_2

    .line 1805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1808
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    if-eqz v3, :cond_19

    if-eqz v37, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1813
    :cond_3
    const-string v3, "NetworkControllerGemini"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "refreshViews("

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, "), AirplaneMode="

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    move/from16 v43, v0

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1815
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    const v4, 0x7f020200

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v31

    .line 1819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const v4, 0x7f020200

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1826
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v3, :cond_17

    .line 1828
    const-string v24, ""

    .line 1911
    :cond_5
    :goto_4
    new-instance v7, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    .line 1912
    .local v7, tempDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    new-instance v6, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v6}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    .line 1913
    .local v6, tempMobileActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:[I

    aget v29, v3, p1

    .line 1914
    .local v29, tempDataDirectionIconId:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v4, v4, p1

    const/16 v43, 0x0

    aget-object v4, v4, v43

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v4

    aput-object v4, v5, v3

    .line 1915
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v4, v4, p1

    const/16 v43, 0x1

    aget-object v4, v4, v43

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v4

    aput-object v4, v5, v3

    .line 1916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v7

    .line 1917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v6

    .line 1947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    aget-object v34, v3, p1

    .line 1948
    .local v34, tempLastPhoneSignalIconId:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:[I

    aget v32, v3, p1

    .line 1949
    .local v32, tempLastDataTypeIconId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastMobileActivityIconId:[I

    aget v33, v3, p1

    .line 1951
    .local v33, tempLastMobileActivityIconId:I
    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    invoke-virtual {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    if-ne v3, v4, :cond_6

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move/from16 v0, v32

    if-ne v0, v3, :cond_6

    invoke-virtual {v6}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move/from16 v0, v33

    if-ne v0, v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    if-eq v3, v4, :cond_25

    .line 1960
    :cond_6
    const-string v3, "NetworkControllerGemini"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "refreshViews("

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, "), set parameters to signal cluster view."

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;

    .line 1963
    .local v2, cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setWifiIndicators(ZLcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Ljava/lang/String;)V

    .line 1969
    const-string v3, "NetworkControllerGemini"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "refreshViews("

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, "), tempPhoneSignalIconId.0 = "

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v43, 0x0

    aget-object v43, v5, v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, "  tempPhoneSignalIconId.1 = "

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v43, 0x1

    aget-object v43, v5, v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, "  tempMobileActivityIconId= "

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, "  tempDataTypeIconId= "

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    move/from16 v3, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setMobileDataIndicators(IZ[Lcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setIsAirplaneMode(Z)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1983
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1984
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v3

    if-nez v3, :cond_24

    const/4 v3, 0x1

    :goto_6
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setIsRoamingGGMode(Z)V

    .line 1987
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastAirplaneMode:Z

    goto/16 :goto_5

    .line 1661
    .end local v2           #cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;
    .end local v6           #tempMobileActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v7           #tempDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v18           #ethernetConnected:Z
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v29           #tempDataDirectionIconId:I
    .end local v32           #tempLastDataTypeIconId:I
    .end local v33           #tempLastMobileActivityIconId:I
    .end local v34           #tempLastPhoneSignalIconId:[I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-nez v3, :cond_e

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_9

    .line 1663
    move-object/from16 v24, v35

    .line 1682
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMColorIdBySlot(Landroid/content/Context;I)I

    move-result v25

    .line 1683
    .local v25, simColorId:I
    const-string v3, "NetworkControllerGemini"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "refreshViews("

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, "), DataConnected="

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, " simColorId = "

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    if-eqz v28, :cond_11

    .line 1686
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v14

    .line 1687
    new-instance v6, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v6}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    .line 1688
    .restart local v6       #tempMobileActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v25

    invoke-interface {v3, v0, v4}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getDataActivityIconList(IZ)[I

    move-result-object v22

    .line 1689
    .local v22, iconList:[I
    if-eqz v22, :cond_10

    .line 1690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1691
    aget v3, v22, v27

    invoke-virtual {v6, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1710
    :goto_8
    move-object/from16 v13, v24

    .line 1711
    invoke-virtual {v6}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v12

    .line 1712
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v14

    .line 1713
    move-object/from16 v26, v9

    .line 1714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v6}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v4

    aput-object v4, v3, p1

    goto/16 :goto_0

    .line 1664
    .end local v6           #tempMobileActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v22           #iconList:[I
    .end local v25           #simColorId:I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnected:Z

    if-nez v3, :cond_a

    if-eqz v17, :cond_d

    .line 1665
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v17, :cond_c

    .line 1666
    :cond_b
    move-object/from16 v24, v35

    goto/16 :goto_7

    .line 1668
    :cond_c
    const-string v24, ""

    goto/16 :goto_7

    .line 1671
    :cond_d
    const v3, 0x7f0b00ae

    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_7

    .line 1675
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1676
    move-object/from16 v24, v35

    goto/16 :goto_7

    .line 1678
    :cond_f
    const-string v24, ""

    goto/16 :goto_7

    .line 1693
    .restart local v6       #tempMobileActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .restart local v22       #iconList:[I
    .restart local v25       #simColorId:I
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1694
    packed-switch v27, :pswitch_data_0

    .line 1705
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto :goto_8

    .line 1696
    :pswitch_0
    const v3, 0x7f020260

    invoke-virtual {v6, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto :goto_8

    .line 1699
    :pswitch_1
    const v3, 0x7f02026b

    invoke-virtual {v6, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto :goto_8

    .line 1702
    :pswitch_2
    const v3, 0x7f020265

    invoke-virtual {v6, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto :goto_8

    .line 1728
    .end local v6           #tempMobileActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v22           #iconList:[I
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1729
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto/16 :goto_0

    .line 1748
    .end local v25           #simColorId:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getWifiInOutIconList()[I

    move-result-object v22

    .line 1753
    .restart local v22       #iconList:[I
    if-eqz v22, :cond_13

    .line 1754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1755
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 1756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    aget v4, v22, v4

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto/16 :goto_1

    .line 1759
    :cond_13
    const/16 v41, 0x0

    .line 1760
    .local v41, wifiActivity:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    packed-switch v3, :pswitch_data_1

    .line 1776
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto/16 :goto_1

    .line 1762
    :pswitch_3
    const v41, 0x7f020277

    .line 1763
    goto :goto_9

    .line 1765
    :pswitch_4
    const v41, 0x7f020279

    .line 1766
    goto :goto_9

    .line 1768
    :pswitch_5
    const v41, 0x7f020278

    .line 1769
    goto :goto_9

    .line 1771
    :pswitch_6
    const/16 v41, 0x0

    .line 1772
    goto :goto_9

    .line 1787
    .end local v22           #iconList:[I
    .end local v41           #wifiActivity:I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_15

    .line 1788
    const-string v42, ""

    goto/16 :goto_2

    .line 1790
    :cond_15
    const v3, 0x7f0b00ae

    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 1802
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1830
    .restart local v18       #ethernetConnected:Z
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_18

    .line 1832
    const-string v42, ""

    .line 1837
    :goto_a
    move-object/from16 v26, v8

    .line 1838
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v14

    goto/16 :goto_4

    .line 1834
    :cond_18
    const v3, 0x7f0b00ae

    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1835
    move-object/from16 v13, v42

    goto :goto_a

    .line 1841
    :cond_19
    if-nez v28, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    if-nez v3, :cond_5

    if-nez v18, :cond_5

    .line 1844
    const v3, 0x7f0b00ae

    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1846
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-nez v3, :cond_1f

    .line 1847
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_1d

    .line 1848
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v14

    .line 1853
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_1e

    move-object/from16 v26, v9

    .line 1878
    :goto_c
    new-instance v11, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    .line 1879
    .local v11, cmccDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v39, v3, p1

    .line 1880
    .local v39, tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v11

    .line 1882
    const/16 v16, 0x0

    .line 1883
    .local v16, dataTypeIconId:I
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Lcom/mediatek/telephony/TelephonyManagerEx;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1885
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMColorIdBySlot(Landroid/content/Context;I)I

    move-result v25

    .line 1886
    .restart local v25       #simColorId:I
    const/16 v36, 0x0

    .line 1888
    .local v36, tempRoamingId:I
    const/4 v3, -0x1

    move/from16 v0, v25

    if-le v0, v3, :cond_1c

    const/4 v3, 0x4

    move/from16 v0, v25

    if-ge v0, v3, :cond_1c

    .line 1889
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->ROAMING:[I

    aget v36, v3, v25

    .line 1891
    :cond_1c
    const-string v3, "NetworkControllerGemini"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "refreshViews("

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, ")  RoamingresId= "

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, " simColorId = "

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoaming:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, p1

    .line 1893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoamingId:[I

    aput v36, v3, p1

    .line 1899
    .end local v25           #simColorId:I
    .end local v36           #tempRoamingId:I
    :goto_d
    const-string v3, "NetworkControllerGemini"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "refreshViews("

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, "), dataTypeIconId="

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v3, v3, p1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataTypeAlwaysDisplayWhileOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1904
    const-string v3, "NetworkControllerGemini"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "refreshViews("

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, "), SimState="

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v43, ", mDataTypeIconId="

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v4

    aput-object v4, v3, p1

    goto/16 :goto_4

    .line 1850
    .end local v11           #cmccDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v16           #dataTypeIconId:I
    .end local v39           #tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1d
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    goto/16 :goto_b

    .line 1853
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v26, v0

    goto/16 :goto_c

    .line 1856
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_20

    .line 1857
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v26, v0

    goto/16 :goto_c

    .line 1861
    :cond_20
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_21

    .line 1862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    .line 1863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v14

    .line 1864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v26, v3, v4

    goto/16 :goto_c

    .line 1865
    :cond_21
    if-nez p1, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_22

    .line 1866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v13, v3, v4

    .line 1867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v14

    .line 1868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    goto/16 :goto_c

    .line 1870
    :cond_22
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 1872
    move-object/from16 v26, v9

    goto/16 :goto_c

    .line 1895
    .restart local v11       #cmccDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .restart local v16       #dataTypeIconId:I
    .restart local v39       #tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoaming:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, p1

    .line 1896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoamingId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 1897
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 1984
    .end local v11           #cmccDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v16           #dataTypeIconId:I
    .end local v39           #tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v2       #cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;
    .restart local v6       #tempMobileActivityIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .restart local v7       #tempDataTypeIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v29       #tempDataDirectionIconId:I
    .restart local v32       #tempLastDataTypeIconId:I
    .restart local v33       #tempLastMobileActivityIconId:I
    .restart local v34       #tempLastPhoneSignalIconId:[I
    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 1990
    .end local v2           #cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;

    .line 1991
    .restart local v2       #cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoaming:[Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsRoamingId:[I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setRoamingFlagandResource([Z[I)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimIndicatorFlag:[Z

    aget-boolean v3, v3, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimIndicatorResId:[I

    aget v4, v4, p1

    move/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setShowSimIndicator(IZI)V

    .line 1993
    move/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->setDataNetType3G(ILcom/mediatek/systemui/ext/NetworkType;)V

    goto :goto_e

    .line 1997
    .end local v2           #cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;

    .line 1998
    .restart local v2       #cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;->apply()V

    goto :goto_f

    .line 2002
    .end local v2           #cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-nez v3, :cond_2c

    .line 2003
    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-ne v3, v4, :cond_28

    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-eq v3, v4, :cond_2f

    .line 2006
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    const/4 v4, 0x0

    const/16 v43, 0x0

    aget-object v43, v5, v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v43

    aput v43, v3, v4

    .line 2007
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    const/4 v4, 0x1

    const/16 v43, 0x1

    aget-object v43, v5, v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v43

    aput v43, v3, v4

    .line 2009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2010
    .local v10, N:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_10
    move/from16 v0, v20

    if-ge v0, v10, :cond_2f

    .line 2011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2012
    .local v40, v:Landroid/widget/ImageView;
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_29

    .line 2013
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2010
    :goto_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_10

    .line 2015
    :cond_29
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2016
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 2017
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2025
    :goto_12
    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 2019
    :cond_2a
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_2b

    .line 2020
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    .line 2022
    :cond_2b
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12

    .line 2030
    .end local v10           #N:I
    .end local v20           #i:I
    .end local v40           #v:Landroid/widget/ImageView;
    :cond_2c
    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-ne v3, v4, :cond_2d

    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-eq v3, v4, :cond_2f

    .line 2034
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    const/4 v4, 0x0

    const/16 v43, 0x0

    aget-object v43, v5, v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v43

    aput v43, v3, v4

    .line 2035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    const/4 v4, 0x1

    const/16 v43, 0x1

    aget-object v43, v5, v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v43

    aput v43, v3, v4

    .line 2036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2038
    .restart local v40       #v:Landroid/widget/ImageView;
    if-eqz v40, :cond_2f

    .line 2039
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-eqz v3, :cond_2e

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_30

    .line 2040
    :cond_2e
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2059
    .end local v40           #v:Landroid/widget/ImageView;
    :cond_2f
    :goto_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    move/from16 v0, v29

    if-eq v3, v0, :cond_35

    .line 2060
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    .line 2061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2062
    .restart local v10       #N:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_14
    move/from16 v0, v20

    if-ge v0, v10, :cond_35

    .line 2063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2064
    .restart local v40       #v:Landroid/widget/ImageView;
    if-nez v29, :cond_34

    .line 2065
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-nez v3, :cond_33

    .line 2066
    const/4 v3, 0x4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2062
    :goto_15
    add-int/lit8 v20, v20, 0x1

    goto :goto_14

    .line 2042
    .end local v10           #N:I
    .end local v20           #i:I
    :cond_30
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2043
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 2044
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2052
    :goto_16
    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 2046
    :cond_31
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_32

    .line 2047
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    .line 2049
    :cond_32
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16

    .line 2068
    .restart local v10       #N:I
    .restart local v20       #i:I
    :cond_33
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15

    .line 2071
    :cond_34
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2072
    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2073
    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 2078
    .end local v10           #N:I
    .end local v20           #i:I
    .end local v40           #v:Landroid/widget/ImageView;
    :cond_35
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-eq v3, v4, :cond_38

    .line 2079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    .line 2080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2081
    .restart local v10       #N:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_17
    move/from16 v0, v20

    if-ge v0, v10, :cond_38

    .line 2082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2083
    .restart local v40       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_36

    .line 2084
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2081
    :goto_18
    add-int/lit8 v20, v20, 0x1

    goto :goto_17

    .line 2086
    :cond_36
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 2088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2092
    :goto_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 2090
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19

    .line 2098
    .end local v10           #N:I
    .end local v20           #i:I
    .end local v40           #v:Landroid/widget/ImageView;
    :cond_38
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    if-eq v3, v4, :cond_3a

    .line 2099
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWimaxIconId:I

    .line 2100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2101
    .restart local v10       #N:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_1a
    move/from16 v0, v20

    if-ge v0, v10, :cond_3a

    .line 2102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2103
    .restart local v40       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    if-nez v3, :cond_39

    .line 2104
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2101
    :goto_1b
    add-int/lit8 v20, v20, 0x1

    goto :goto_1a

    .line 2106
    :cond_39
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2107
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWimax:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 2113
    .end local v10           #N:I
    .end local v20           #i:I
    .end local v40           #v:Landroid/widget/ImageView;
    :cond_3a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-eq v3, v4, :cond_44

    .line 2114
    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    .line 2115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2116
    .restart local v10       #N:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_1c
    move/from16 v0, v20

    if-ge v0, v10, :cond_44

    .line 2117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2118
    .restart local v40       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-nez v3, :cond_3d

    .line 2119
    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 2120
    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2128
    :goto_1d
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2116
    :goto_1e
    add-int/lit8 v20, v20, 0x1

    goto :goto_1c

    .line 2122
    :cond_3b
    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_3c

    .line 2123
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 2125
    :cond_3c
    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 2130
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v3, :cond_43

    .line 2131
    const/16 v19, 0x0

    .line 2132
    .local v19, flag:Z
    const/16 v23, 0x0

    .local v23, j:I
    :goto_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mGeminiSimNum:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_3e

    .line 2133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:[Z

    aget-boolean v3, v3, v23

    if-eqz v3, :cond_40

    .line 2134
    const/16 v19, 0x1

    .line 2138
    :cond_3e
    if-eqz v19, :cond_3f

    .line 2139
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2140
    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 2141
    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2149
    :goto_20
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2151
    :cond_3f
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 2132
    :cond_40
    add-int/lit8 v23, v23, 0x1

    goto :goto_1f

    .line 2143
    :cond_41
    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_42

    .line 2144
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_20

    .line 2146
    :cond_42
    invoke-virtual {v14}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_20

    .line 2153
    .end local v19           #flag:Z
    .end local v23           #j:I
    :cond_43
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 2160
    .end local v10           #N:I
    .end local v20           #i:I
    .end local v40           #v:Landroid/widget/ImageView;
    :cond_44
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-nez v3, :cond_4b

    .line 2161
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move/from16 v0, v32

    if-ne v0, v3, :cond_45

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v3, :cond_4d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-eqz v3, :cond_4d

    .line 2162
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:[I

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    aput v4, v3, p1

    .line 2164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2165
    .restart local v10       #N:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_21
    move/from16 v0, v20

    if-ge v0, v10, :cond_4d

    .line 2166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2167
    .restart local v40       #v:Landroid/widget/ImageView;
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_46

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-eqz v3, :cond_46

    .line 2168
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2165
    :goto_22
    add-int/lit8 v20, v20, 0x1

    goto :goto_21

    .line 2169
    :cond_46
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-eqz v3, :cond_48

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v3, :cond_48

    .line 2170
    :cond_47
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22

    .line 2172
    :cond_48
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2173
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 2174
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2182
    :goto_23
    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 2176
    :cond_49
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_4a

    .line 2177
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    .line 2179
    :cond_4a
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_23

    .line 2188
    .end local v10           #N:I
    .end local v20           #i:I
    .end local v40           #v:Landroid/widget/ImageView;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:[I

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    aput v4, v3, p1

    .line 2189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconViews:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2191
    .restart local v40       #v:Landroid/widget/ImageView;
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move/from16 v0, v32

    if-ne v0, v3, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v3, :cond_4d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-eqz v3, :cond_4d

    .line 2192
    :cond_4c
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-eqz v3, :cond_4f

    .line 2193
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2211
    .end local v40           #v:Landroid/widget/ImageView;
    :cond_4d
    :goto_24
    invoke-virtual {v6}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move/from16 v0, v33

    if-eq v0, v3, :cond_4e

    .line 2212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastMobileActivityIconId:[I

    invoke-virtual {v6}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    aput v4, v3, p1

    .line 2216
    :cond_4e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    invoke-virtual {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v4

    if-eq v3, v4, :cond_58

    .line 2220
    invoke-virtual {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    .line 2221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2222
    .restart local v10       #N:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_25
    move/from16 v0, v20

    if-ge v0, v10, :cond_58

    .line 2223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2224
    .restart local v40       #v:Landroid/widget/ImageView;
    invoke-virtual {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_55

    .line 2225
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-nez v3, :cond_54

    .line 2226
    const/4 v3, 0x4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2222
    :goto_26
    add-int/lit8 v20, v20, 0x1

    goto :goto_25

    .line 2194
    .end local v10           #N:I
    .end local v20           #i:I
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-eqz v3, :cond_51

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-eqz v3, :cond_50

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v3, :cond_51

    .line 2195
    :cond_50
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24

    .line 2197
    :cond_51
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2198
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 2199
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2207
    :goto_27
    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 2201
    :cond_52
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_53

    .line 2202
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    .line 2204
    :cond_53
    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 2228
    .restart local v10       #N:I
    .restart local v20       #i:I
    :cond_54
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26

    .line 2231
    :cond_55
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2232
    invoke-virtual {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 2233
    invoke-virtual {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2241
    :goto_28
    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 2235
    :cond_56
    invoke-virtual {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    if-nez v3, :cond_57

    .line 2236
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_28

    .line 2238
    :cond_57
    invoke-virtual {v12}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_28

    .line 2247
    .end local v10           #N:I
    .end local v20           #i:I
    .end local v40           #v:Landroid/widget/ImageView;
    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 2248
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedLabel:Ljava/lang/String;

    .line 2249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2250
    .restart local v10       #N:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_29
    move/from16 v0, v20

    if-ge v0, v10, :cond_59

    .line 2251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 2252
    .local v40, v:Landroid/widget/TextView;
    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2250
    add-int/lit8 v20, v20, 0x1

    goto :goto_29

    .line 2257
    .end local v10           #N:I
    .end local v20           #i:I
    .end local v40           #v:Landroid/widget/TextView;
    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2258
    .restart local v10       #N:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_2a
    move/from16 v0, v20

    if-ge v0, v10, :cond_5b

    .line 2259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 2260
    .restart local v40       #v:Landroid/widget/TextView;
    const-string v3, ""

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2261
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2258
    :goto_2b
    add-int/lit8 v20, v20, 0x1

    goto :goto_2a

    .line 2263
    :cond_5a
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2264
    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 2269
    .end local v40           #v:Landroid/widget/TextView;
    :cond_5b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsScreenLarge:Z

    if-nez v3, :cond_5d

    .line 2270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2271
    const/16 v20, 0x0

    :goto_2c
    move/from16 v0, v20

    if-ge v0, v10, :cond_5e

    .line 2272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 2273
    .restart local v40       #v:Landroid/widget/TextView;
    const-string v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 2274
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2271
    :goto_2d
    add-int/lit8 v20, v20, 0x1

    goto :goto_2c

    .line 2276
    :cond_5c
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2277
    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 2282
    .end local v40           #v:Landroid/widget/TextView;
    :cond_5d
    if-nez p1, :cond_5f

    .line 2283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 2288
    .restart local v40       #v:Landroid/widget/TextView;
    :goto_2e
    if-eqz v40, :cond_5e

    .line 2289
    const-string v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 2290
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2299
    .end local v40           #v:Landroid/widget/TextView;
    :cond_5e
    :goto_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2300
    const/16 v20, 0x0

    :goto_30
    move/from16 v0, v20

    if-ge v0, v10, :cond_62

    .line 2301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mEmergencyLabelViews:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 2302
    .restart local v40       #v:Landroid/widget/TextView;
    if-nez v17, :cond_61

    .line 2303
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    :goto_31
    add-int/lit8 v20, v20, 0x1

    goto :goto_30

    .line 2285
    .end local v40           #v:Landroid/widget/TextView;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .restart local v40       #v:Landroid/widget/TextView;
    goto :goto_2e

    .line 2292
    :cond_60
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .line 2305
    :cond_61
    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2306
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 2310
    .end local v40           #v:Landroid/widget/TextView;
    :cond_62
    return-void

    .line 1694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1760
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCarrierGemini(Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;Landroid/view/View;)V
    .locals 1
    .parameter "carrier1"
    .parameter "carrier2"
    .parameter "carrierDivider"

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2452
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2453
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2456
    return-void
.end method

.method public setCarrierGemini(Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "carrier1"
    .parameter "carrier2"
    .parameter "carrier3"
    .parameter "carrierDivider1"
    .parameter "carrierDivider2"

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2461
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2462
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2463
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2464
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2465
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2466
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2467
    return-void
.end method

.method public setCarrierGemini(Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "carrier1"
    .parameter "carrier2"
    .parameter "carrier3"
    .parameter "carrier4"
    .parameter "carrierDivider1"
    .parameter "carrierDivider2"
    .parameter "carrierDivider3"

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2473
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2474
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2477
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2478
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2479
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2480
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2481
    return-void
.end method

.method public setStackedMode(Z)V
    .locals 1
    .parameter "stacked"

    .prologue
    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataAndWifiStacked:Z

    .line 490
    return-void
.end method

.method public showSimIndicator(I)V
    .locals 4
    .parameter "slotId"

    .prologue
    .line 2574
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMColorIdBySlot(Landroid/content/Context;I)I

    move-result v0

    .line 2575
    .local v0, simColor:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2576
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimIndicatorResId:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->SIM_INDICATOR_BACKGROUND:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 2578
    :cond_0
    const-string v1, "NetworkControllerGemini"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSimIndicator slotId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimIndicatorFlag:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 2580
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V

    .line 2581
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 2582
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V

    .line 2583
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 2584
    return-void
.end method

.method updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .parameter "slotId"
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 1368
    const-string v2, "NetworkControllerGemini"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1372
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1373
    .local v0, something:Z
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 1374
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    const/4 v0, 0x1

    .line 1377
    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1378
    if-eqz v0, :cond_1

    .line 1379
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    const/4 v0, 0x1

    .line 1385
    :cond_2
    if-eqz v0, :cond_3

    .line 1386
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1390
    :goto_0
    const-string v2, "NetworkControllerGemini"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mNetworkName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    return-void

    .line 1388
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, p1

    goto :goto_0
.end method

.method public updateOperatorInfo()V
    .locals 13

    .prologue
    .line 2496
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2500
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

    .line 2501
    .local v4, mCarrierMember:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    if-nez v4, :cond_2

    goto :goto_0

    .line 2506
    .end local v4           #mCarrierMember:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2507
    .local v6, mDividerMemeber:Landroid/view/View;
    if-eqz v6, :cond_4

    .line 2508
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2512
    .end local v6           #mDividerMemeber:Landroid/view/View;
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isWifiOnlyDevice()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2514
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

    .line 2515
    .restart local v4       #mCarrierMember:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    if-eqz v4, :cond_6

    .line 2516
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2523
    .end local v4           #mCarrierMember:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    const/4 v0, 0x1

    .line 2529
    .local v0, airplane:Z
    :goto_3
    const/4 v7, 0x0

    .line 2530
    .local v7, mNumOfSIM:I
    const/4 v3, 0x0

    .line 2531
    .local v3, mCarrierLeft:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    const/4 v5, 0x0

    .line 2532
    .local v5, mCarrierRight:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_f

    .line 2533
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

    .line 2534
    .restart local v4       #mCarrierMember:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    if-eqz v4, :cond_b

    .line 2535
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->getSlotId()I

    move-result v10

    invoke-static {v10}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v8

    .line 2537
    .local v8, simInserted:Z
    const-string v10, "NetworkControllerGemini"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateOperatorInfo, simInserted is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", SIM slod id is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->getSlotId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    if-nez v8, :cond_8

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v10

    invoke-interface {v10}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_8
    if-nez v0, :cond_e

    .line 2541
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2542
    add-int/lit8 v7, v7, 0x1

    .line 2543
    const/4 v10, 0x1

    if-ne v7, v10, :cond_d

    .line 2544
    move-object v3, v4

    .line 2548
    :cond_9
    :goto_5
    const/4 v10, 0x2

    if-lt v7, v10, :cond_a

    add-int/lit8 v10, v1, -0x1

    if-ltz v10, :cond_a

    .line 2549
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDividerList:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2554
    :cond_a
    :goto_6
    const/16 v10, 0x11

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 2532
    .end local v8           #simInserted:Z
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2523
    .end local v0           #airplane:Z
    .end local v1           #i:I
    .end local v3           #mCarrierLeft:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    .end local v4           #mCarrierMember:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    .end local v5           #mCarrierRight:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    .end local v7           #mNumOfSIM:I
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2545
    .restart local v0       #airplane:Z
    .restart local v1       #i:I
    .restart local v3       #mCarrierLeft:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    .restart local v4       #mCarrierMember:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    .restart local v5       #mCarrierRight:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    .restart local v7       #mNumOfSIM:I
    .restart local v8       #simInserted:Z
    :cond_d
    const/4 v10, 0x2

    if-ne v7, v10, :cond_9

    .line 2546
    move-object v5, v4

    goto :goto_5

    .line 2552
    :cond_e
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 2558
    .end local v4           #mCarrierMember:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    .end local v8           #simInserted:Z
    :cond_f
    const/4 v10, 0x2

    if-ne v7, v10, :cond_10

    .line 2559
    const/4 v10, 0x5

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 2560
    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    .line 2561
    :cond_10
    if-nez v7, :cond_0

    .line 2562
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCarrierList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

    .line 2563
    .local v9, v:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    if-eqz v9, :cond_11

    .line 2564
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2566
    :cond_11
    const-string v10, "NetworkControllerGemini"

    const-string v11, "updateOperatorInfo, force the slotId 0 to visible."

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
