.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RoamDataStatusChangeObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamDataStatusChangeObserver"
.end annotation


# instance fields
.field private final SIM_INFO_URI:Landroid/net/Uri;

.field private mSimId:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RoamDataStatusChangeObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 170
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 166
    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RoamDataStatusChangeObserver;->SIM_INFO_URI:Landroid/net/Uri;

    .line 167
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RoamDataStatusChangeObserver;->mSimId:J

    .line 171
    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 172
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 173
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RoamDataStatusChangeObserver;->mSimId:J

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 178
    const-string v0, "QuickSettingsModel"

    const-string v1, "RoamDataStatusChangeObserver onChange called."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RoamDataStatusChangeObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRoamDataStatusChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 180
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RoamDataStatusChangeObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RoamDataStatusChangeObserver;->SIM_INFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    return-void
.end method
