.class public Lcom/mediatek/phone/plugin/DataConnectionExt;
.super Lcom/mediatek/phone/ext/DefaultDataConnection;
.source "DataConnectionExt.java"


# static fields
.field private static final DOUBLE_SIM_CARD:I = 0x2

.field private static final NATIVE_MCC_SIM1:Ljava/lang/String; = "460"

.field private static final NATIVE_MCC_SIM2:Ljava/lang/String; = "455"

.field private static final SINGLE_SIM_CARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DataConnectionExt"


# instance fields
.field private mIsSlot1Insert:Z

.field private mIsSlot2Insert:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lcom/mediatek/phone/ext/DefaultDataConnection;-><init>()V

    .line 121
    iput-boolean v0, p0, Lcom/mediatek/phone/plugin/DataConnectionExt;->mIsSlot1Insert:Z

    .line 122
    iput-boolean v0, p0, Lcom/mediatek/phone/plugin/DataConnectionExt;->mIsSlot2Insert:Z

    return-void
.end method

.method private isCdmaRoaming()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 224
    const/4 v2, 0x0

    .line 226
    .local v2, res:Z
    const-string v3, "DataConnectionExt"

    const-string v4, "in isCdmaRoaming"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, numeric:Ljava/lang/String;
    const-string v3, "DataConnectionExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCdmaRoaming numeric :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v1, :cond_1

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 230
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, mcc:Ljava/lang/String;
    const-string v3, "DataConnectionExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v3, "460"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "455"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    :cond_0
    const/4 v2, 0x0

    .line 238
    .end local v0           #mcc:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 235
    .restart local v0       #mcc:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isInternationalRoamingStatus(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 168
    const-string v3, "DataConnectionExt"

    const-string v4, "in isInternationalRoamingStatus"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, isRoaming:Z
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/plugin/DataConnectionExt;->getSimInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 171
    .local v2, simInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 172
    const-string v3, "DataConnectionExt"

    const-string v4, "Two sims"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/DataConnectionExt;->isCdmaRoaming()Z

    move-result v0

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 175
    const-string v3, "DataConnectionExt"

    const-string v4, "One sim"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 177
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v3, :cond_2

    .line 178
    const-string v3, "DataConnectionExt"

    const-string v4, "One sim1"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/DataConnectionExt;->isCdmaRoaming()Z

    move-result v0

    goto :goto_0

    .line 181
    :cond_2
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v3, v5, :cond_0

    .line 182
    const-string v3, "DataConnectionExt"

    const-string v4, "One sim2"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/mediatek/phone/plugin/DataConnectionExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    goto :goto_0

    .line 186
    .end local v1           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    const-string v3, "DataConnectionExt"

    const-string v4, "Error: no SIM inserted"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bShowDataConn(Landroid/content/Context;ZI)Z
    .locals 7
    .parameter "context"
    .parameter "bRoaming"
    .parameter "simSlot"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 129
    const-string v2, "DataConnectionExt"

    const-string v5, "in bShowDataConn"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mediatek/phone/plugin/DataConnectionExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/phone/plugin/DataConnectionExt;->isInternationalRoamingStatus(Landroid/content/Context;)Z

    move-result v0

    .line 133
    .local v0, isRoaming:Z
    const-string v2, "DataConnectionExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoaming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "ct_main_sim_selection"

    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, selectedMainSimSlot:I
    if-ne p3, v1, :cond_0

    .line 137
    const-string v2, "DataConnectionExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bShowDataConn Roaming true: bRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | selectedMainSimSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 149
    .end local v1           #selectedMainSimSlot:I
    :goto_0
    return v2

    .line 140
    .restart local v1       #selectedMainSimSlot:I
    :cond_0
    const-string v2, "DataConnectionExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bShowDataConn Roaming false: bRoaming="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " | selectedMainSimSlot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " simSlot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 141
    goto :goto_0

    .line 144
    .end local v1           #selectedMainSimSlot:I
    :cond_1
    if-nez p3, :cond_2

    .line 145
    const-string v2, "DataConnectionExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bShowDataConn Native true: bRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | simSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    const-string v2, "DataConnectionExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bShowDataConn Native false: bRoaming="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " | simSlot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 149
    goto :goto_0
.end method

.method public getGprsRadioInPreferenceProperty(II)I
    .locals 3
    .parameter "commonPosition"
    .parameter "simSlot"

    .prologue
    const/4 v0, 0x1

    .line 156
    if-eqz p2, :cond_0

    if-ne p2, v0, :cond_1

    .line 157
    :cond_0
    const-string v0, "DataConnectionExt"

    const-string v1, "TEST:mGprsSimSetting.setInitValue(0)"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 161
    :cond_1
    const-string v1, "DataConnectionExt"

    const-string v2, "TEST:mGprsSimSetting.setInitValue(1)"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSimInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 194
    const-string v5, "DataConnectionExt"

    const-string v6, "getSimInfo()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v3, siminfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 197
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v2, 0x0

    .line 199
    .local v2, simSlot:I
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 200
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 201
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v6, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v6, v5, :cond_0

    .line 202
    invoke-static {v1, v8, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 204
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iput-boolean v7, p0, Lcom/mediatek/phone/plugin/DataConnectionExt;->mIsSlot1Insert:Z

    .line 208
    iput-boolean v7, p0, Lcom/mediatek/phone/plugin/DataConnectionExt;->mIsSlot2Insert:Z

    .line 218
    .end local v0           #i:I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 219
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    .line 218
    .local v4, tempSiminfo:Landroid/provider/Telephony$SIMInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 209
    .end local v0           #i:I
    .end local v4           #tempSiminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 210
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v5, :cond_4

    .line 212
    iput-boolean v7, p0, Lcom/mediatek/phone/plugin/DataConnectionExt;->mIsSlot1Insert:Z

    goto :goto_1

    .line 214
    :cond_4
    iput-boolean v7, p0, Lcom/mediatek/phone/plugin/DataConnectionExt;->mIsSlot2Insert:Z

    goto :goto_1

    .line 221
    .restart local v0       #i:I
    :cond_5
    return-object v3
.end method
