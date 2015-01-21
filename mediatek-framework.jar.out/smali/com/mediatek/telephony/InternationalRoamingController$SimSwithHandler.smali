.class Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;
.super Landroid/os/Handler;
.source "InternationalRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/InternationalRoamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimSwithHandler"
.end annotation


# static fields
.field private static final CURRENT_SIM_MODE:Ljava/lang/String; = "ct.internationalcard.sim.mode"

.field private static final EVENT_SWITCH_PHONE_INSTANCE:I = 0x67

.field private static final EVENT_SWITCH_RIL_SOCKET:I = 0x66

.field private static final EVENT_SWITCH_TELEPHONY_MODE:I = 0x65

.field private static final PROPERTY_TELEPHONY_MODE_SLOT1:Ljava/lang/String; = "mtk_telephony_mode_slot1"

.field private static final PROPERTY_TELEPHONY_MODE_SLOT2:Ljava/lang/String; = "mtk_telephony_mode_slot2"

.field private static final SIM_SWITCH_MODE_CDMA:I = 0x0

.field private static final SIM_SWITCH_MODE_GSM:I = 0x1

.field private static final SIM_SWITCH_MODE_WCDMA:I = 0x2


# instance fields
.field private mChangeToGemini:Z

.field final synthetic this$0:Lcom/mediatek/telephony/InternationalRoamingController;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/InternationalRoamingController;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 944
    iput-object p1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    .line 945
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 946
    return-void
.end method

.method private modeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 1082
    packed-switch p1, :pswitch_data_0

    .line 1090
    const-string v0, "<Unknown mode>"

    :goto_0
    return-object v0

    .line 1084
    :pswitch_0
    const-string v0, "CDMA_MODE"

    goto :goto_0

    .line 1086
    :pswitch_1
    const-string v0, "GSM_MODE"

    goto :goto_0

    .line 1088
    :pswitch_2
    const-string v0, "WCDMA_MODE"

    goto :goto_0

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTelephonyMode(IILandroid/os/Message;)V
    .locals 6
    .parameter "slotId"
    .parameter "mode"
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    .line 1067
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SSH] setTelephonyMode: new mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1068
    const-string v2, "mtk_telephony_mode_slot1"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1069
    .local v0, slot1Mode:I
    const-string v2, "mtk_telephony_mode_slot2"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1070
    .local v1, slot2Mode:I
    if-nez p1, :cond_0

    .line 1071
    move v0, p2

    .line 1078
    :goto_0
    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$700(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v1, v5, p3}, Lcom/android/internal/telephony/CommandsInterface;->setTelephonyMode(IIZLandroid/os/Message;)V

    .line 1079
    return-void

    .line 1073
    :cond_0
    move v1, p2

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x65

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 965
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1052
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSH] Should never run into this case: message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 967
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 968
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] CDMA -> GSM, Set CDMA radio off."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 969
    iput-boolean v4, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    .line 970
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v7}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerCardSwitch(ILandroid/os/Message;)V

    goto :goto_0

    .line 973
    :cond_1
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] GSM -> CDMA, EVENT_SWITCH_TELEPHONY_MODE."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 974
    iput-boolean v3, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    .line 975
    invoke-virtual {p0, v7, v5}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 980
    :pswitch_1
    iget-boolean v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    if-eqz v1, :cond_2

    .line 981
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] EVENT_SWITCH_SIM_INTERFACE: CDMA -> GSM."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 982
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$200(Lcom/mediatek/telephony/InternationalRoamingController;)I

    move-result v1

    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v6, v2}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->setTelephonyMode(IILandroid/os/Message;)V

    goto :goto_0

    .line 985
    :cond_2
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] EVENT_SWITCH_SIM_INTERFACE: GSM -> CDMA."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$200(Lcom/mediatek/telephony/InternationalRoamingController;)I

    move-result v1

    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->setTelephonyMode(IILandroid/os/Message;)V

    goto :goto_0

    .line 994
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x67

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 996
    iget-boolean v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    if-eqz v1, :cond_4

    .line 997
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] EVENT_SWITCH_RIL_SOCKET: CDMA -> GSM."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 998
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$300(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 999
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I
    invoke-static {v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$200(Lcom/mediatek/telephony/InternationalRoamingController;)I

    move-result v2

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->switchRilSocket(II)V

    goto/16 :goto_0

    .line 1001
    :cond_3
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I
    invoke-static {v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$200(Lcom/mediatek/telephony/InternationalRoamingController;)I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->switchRilSocket(II)V

    goto/16 :goto_0

    .line 1004
    :cond_4
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] EVENT_SWITCH_RIL_SOCKET: GSM -> CDMA."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1005
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I
    invoke-static {v3}, Lcom/mediatek/telephony/InternationalRoamingController;->access$200(Lcom/mediatek/telephony/InternationalRoamingController;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->switchRilSocket(II)V

    goto/16 :goto_0

    .line 1010
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getSimState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1011
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] Dual phone SIM is not available when handing EVENT_SWITCH_PHONE_INSTANCE."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1015
    :cond_5
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 1016
    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->removeMessages(I)V

    .line 1022
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUnderSimSwitching:Z
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$400(Lcom/mediatek/telephony/InternationalRoamingController;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1023
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] Handle abnormal case, EVENT_SWITCH_PHONE_INSTANCE message sent twice!"

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1029
    :cond_6
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$300(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1032
    iget-boolean v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    if-eqz v1, :cond_7

    const/16 v0, 0x10

    .line 1034
    .local v0, newTech:I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$300(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObjectForSwitchPhone(I)V

    .line 1036
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSH] EVENT_SWITCH_PHONE: newTech = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1040
    const-string v1, "mux.report.case"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->finishToSwitchPhone()V
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$500(Lcom/mediatek/telephony/InternationalRoamingController;)V

    .line 1044
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #setter for: Lcom/mediatek/telephony/InternationalRoamingController;->mRadioOnFromSimSwitch:Z
    invoke-static {v1, v4}, Lcom/mediatek/telephony/InternationalRoamingController;->access$602(Lcom/mediatek/telephony/InternationalRoamingController;Z)Z

    .line 1045
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$700(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    .line 1046
    iget-boolean v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    if-nez v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerCardSwitch(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1032
    .end local v0           #newTech:I
    :cond_7
    const/4 v0, 0x6

    goto :goto_1

    .line 965
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
