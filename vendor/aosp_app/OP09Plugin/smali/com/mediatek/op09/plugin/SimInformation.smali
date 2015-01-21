.class public Lcom/mediatek/op09/plugin/SimInformation;
.super Ljava/lang/Object;
.source "SimInformation.java"


# static fields
.field private static final COLORNUM:I = 0x7

.field private static final DOUBLE_SIM_CARD:I = 0x2

.field private static final INTERNET_CALL_COLOR:I = 0x8

.field private static final NATIVE_MCC_SIM1:Ljava/lang/String; = "460"

.field private static final NATIVE_MCC_SIM2:Ljava/lang/String; = "455"

.field private static final NETWORK_MODE_CHANGE_BROADCAST:Ljava/lang/String; = "com.android.phone.NETWORK_MODE_CHANGE"

.field private static final NETWORK_MODE_CHANGE_RESPONSE:Ljava/lang/String; = "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

.field private static final NEW_NETWORK_MODE:Ljava/lang/String; = "NEW_NETWORK_MODE"

.field private static final NO_COLOR:I = -0x1

.field public static final NO_SIM_INSERTED:I = 0x1

.field private static final OLD_NETWORK_MODE:Ljava/lang/String; = "com.android.phone.OLD_NETWORK_MODE"

.field public static final ONLY_SLOT1_INSERTED:I = 0x2

.field public static final ONLY_SLOT2_INSERTED:I = 0x3

.field public static final SIM_INSERTED_BASE:I = 0x0

.field private static final SINGLE_SIM_CARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OP09/SimInformation"

.field public static final TWO_SIM_INSERTED:I = 0x4

.field private static final TYPE_GPRS:I = 0x4

.field private static final TYPE_SMS:I = 0x3

.field private static final TYPE_VIDEOCALL:I = 0x2

.field private static final TYPE_VOICECALL:I = 0x1

.field private static sG3SlotID:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSlot1Insert:Z

.field private mIsSlot2Insert:Z

.field private mSimInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/op09/plugin/SimInformation;->sG3SlotID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/mediatek/op09/plugin/SimInformation;->mIsSlot1Insert:Z

    .line 98
    iput-boolean v1, p0, Lcom/mediatek/op09/plugin/SimInformation;->mIsSlot2Insert:Z

    .line 102
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/op09/plugin/SimInformation;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 105
    iput-object p1, p0, Lcom/mediatek/op09/plugin/SimInformation;->mContext:Landroid/content/Context;

    .line 106
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/op09/plugin/SimInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/op09/plugin/SimInformation;->getSimInfo()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/op09/plugin/SimInformation;->insertedSimSlot()I

    move-result v0

    .line 109
    .local v0, res:I
    const-string v1, "OP09/SimInformation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertedSimSlot(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method static getSimColorResource(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 157
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    .line 158
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    aget v0, v0, p0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getStatusResource(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 117
    packed-switch p0, :pswitch_data_0

    .line 133
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 119
    :pswitch_1
    const v0, 0x202011d

    goto :goto_0

    .line 121
    :pswitch_2
    const v0, 0x202010a

    goto :goto_0

    .line 123
    :pswitch_3
    const v0, 0x2020103

    goto :goto_0

    .line 125
    :pswitch_4
    const v0, 0x2020124

    goto :goto_0

    .line 127
    :pswitch_5
    const v0, 0x2020122

    goto :goto_0

    .line 129
    :pswitch_6
    const v0, 0x20200fa

    goto :goto_0

    .line 131
    :pswitch_7
    const v0, 0x2020123

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private isCdmaRoaming()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, res:Z
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, numeric:Ljava/lang/String;
    const-string v3, "OP09/SimInformation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz v1, :cond_1

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 275
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, mcc:Ljava/lang/String;
    const-string v3, "460"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "455"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    :cond_0
    const/4 v2, 0x0

    .line 282
    .end local v0           #mcc:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 279
    .restart local v0       #mcc:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getSimInfo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 229
    const-string v5, "OP09/SimInformation"

    const-string v6, "getSimInfo()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, siminfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    iget-object v5, p0, Lcom/mediatek/op09/plugin/SimInformation;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v2, 0x0

    .line 234
    .local v2, simSlot:I
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 235
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 236
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v6, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v6, v5, :cond_0

    .line 237
    invoke-static {v1, v8, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 239
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 240
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    iput-boolean v7, p0, Lcom/mediatek/op09/plugin/SimInformation;->mIsSlot1Insert:Z

    .line 243
    iput-boolean v7, p0, Lcom/mediatek/op09/plugin/SimInformation;->mIsSlot2Insert:Z

    .line 253
    .end local v0           #i:I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 254
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    .line 255
    .local v4, tempSiminfo:Landroid/provider/Telephony$SIMInfo;
    const-string v5, "OP09/SimInformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "siminfo.mDisplayName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v5, "OP09/SimInformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "siminfo.mSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v5, "OP09/SimInformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "siminfo.mColor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v5, "OP09/SimInformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "siminfo.mSimId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    .end local v0           #i:I
    .end local v4           #tempSiminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 245
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v5, :cond_4

    .line 247
    iput-boolean v7, p0, Lcom/mediatek/op09/plugin/SimInformation;->mIsSlot1Insert:Z

    goto/16 :goto_1

    .line 249
    :cond_4
    iput-boolean v7, p0, Lcom/mediatek/op09/plugin/SimInformation;->mIsSlot2Insert:Z

    goto/16 :goto_1

    .line 260
    .restart local v0       #i:I
    :cond_5
    return-object v3
.end method

.method public getSlot1PhoneTypeGemini()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/mediatek/op09/plugin/SimInformation;->insertedSimSlot()I

    move-result v1

    .line 204
    .local v1, insertedSim:I
    const/4 v2, 0x0

    .line 205
    .local v2, result:I
    const/4 v0, 0x0

    .line 206
    .local v0, hasCdmaSim:Z
    iget-object v4, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 208
    const/4 v0, 0x1

    .line 222
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 223
    iget-object v4, p0, Lcom/mediatek/op09/plugin/SimInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v2

    .line 225
    :cond_1
    return v2

    .line 209
    :cond_2
    iget-object v4, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 211
    iget-object v4, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 212
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v4, :cond_3

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :cond_3
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v4, v7, :cond_0

    .line 217
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    .end local v3           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlotRomaingStatus(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 165
    const/4 v0, 0x1

    .line 166
    .local v0, bSlotRoaming:Z
    iget-object v1, p0, Lcom/mediatek/op09/plugin/SimInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/mediatek/op09/plugin/SimInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 171
    :goto_0
    const-string v1, "OP09/SimInformation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bSlotRoaming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v0

    .line 169
    :cond_0
    const-string v1, "OP09/SimInformation"

    const-string v2, "mTelephonyManager == null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertedSimSlot()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, result:I
    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 140
    :cond_0
    const/4 v0, 0x1

    .line 153
    :cond_1
    :goto_0
    return v0

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 142
    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 143
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v2, :cond_3

    .line 145
    const/4 v0, 0x2

    goto :goto_0

    .line 146
    :cond_3
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v2, v4, :cond_1

    .line 148
    const/4 v0, 0x3

    goto :goto_0

    .line 150
    .end local v1           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 151
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public isInternationalRoamingStatus()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, isRoaming:Z
    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 179
    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 180
    const-string v2, "OP09/SimInformation"

    const-string v3, "isInternationalRoamingStatus() statement1"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return v0

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 183
    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 184
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget-object v2, p0, Lcom/mediatek/op09/plugin/SimInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 185
    const-string v2, "OP09/SimInformation"

    const-string v3, "isInternationalRoamingStatus() statement2"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v1           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    const-string v2, "OP09/SimInformation"

    const-string v3, "isInternationalRoamingStatus() statement3"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSlot1Inserted()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/mediatek/op09/plugin/SimInformation;->mIsSlot1Insert:Z

    return v0
.end method

.method public isSlot2Inserted()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/mediatek/op09/plugin/SimInformation;->mIsSlot2Insert:Z

    return v0
.end method

.method public isSupportNitz()Z
    .locals 4

    .prologue
    .line 286
    const/4 v0, 0x1

    .line 287
    .local v0, bSupportNitz:Z
    const-string v2, "gsm.nitz.time"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, nitzStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    const/4 v0, 0x0

    .line 292
    :cond_1
    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/mediatek/op09/plugin/SimInformation;->getSimInfo()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mediatek/op09/plugin/SimInformation;->mSimInfoList:Ljava/util/ArrayList;

    .line 114
    return-void
.end method
